/*

  Taminations Square Dance Animations
  Copyright (C) 2021 Brad Christie

  This program is free software: you can redistribute it and/or modify
  it under the terms of the GNU General Public License as published by
  the Free Software Foundation, either version 3 of the License, or
  (at your option) any later version.

  This program is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  GNU General Public License for more details.

  You should have received a copy of the GNU General Public License
  along with this program.  If not, see <http://www.gnu.org/licenses/>.

*/
import 'dart:math';

import 'package:xml/xml.dart';

import '../cloneable.dart';
import '../extensions.dart';
import '../math/vector.dart';
import 'bezier.dart';
import 'matrix.dart';

class Hands {
  static const int NOHANDS = 0;
  static const int NONE = 0;
  static const int LEFTHAND = 1;
  static const int LEFT = 1;
  static const int RIGHTHAND = 2;
  static const int RIGHT = 2;
  static const int BOTHHANDS = 3;
  static const int BOTH = 3;
  static const int ANYGRIP = 4;
  static const int GRIPLEFT = 5;
  static const int GRIPRIGHT = 6;
  static const int GRIPBOTH = 7;

  static int getHands(String h) {
    switch (h) {
      case 'none' : return NOHANDS;
      case 'nohands' : return NOHANDS;
      case 'left' : return LEFTHAND;
      case 'right' : return RIGHTHAND;
      case 'both' : return BOTHHANDS;
      case 'anygrip' : return ANYGRIP;
      case 'gripleft' : return GRIPLEFT;
      case 'gripright' : return GRIPRIGHT;
      case 'gripboth' : return 7;
      default : return 0;
    }
  }

  static String getName(int i) {
    switch (i) {
      case NOHANDS : return 'none';
      case LEFTHAND : return 'left';
      case RIGHTHAND : return 'right';
      case BOTHHANDS : return 'both';
      case ANYGRIP : return 'anygrip';  // not used I think
      case GRIPLEFT : return 'gripleft';
      case GRIPRIGHT : return 'gripright';
      case GRIPBOTH : return 'gripboth';
      default: return 'none';
    }
  }

}

class Movement extends Cloneable<Movement> {

  double beats;
  int hands;
  Bezier btranslate;
  Bezier brotate;
  bool fromCall;  // for sequencer

  /// Constructor for a movement where the dancer does not face the direction
  ///   of travel.  Two Bezier curves are used, one for travel and one for
  ///   facing direction.
  ///
  /// @param beats  Timing
  /// @param hands  One of the const ints above
  /// @param btranslate  Bezier curve for movement
  /// @param brotate  Bezier curve for facing direction, can be same as btranslate
  Movement(this.beats, this.hands,
      this.btranslate, this.brotate, {this.fromCall=true});

  /// Construct a Movement from the attributes of an XML movement
  /// @param elem from xml
  factory Movement.fromElement(XmlElement elem) {
    var beats = elem('beats').d;
    var hands = Hands.getHands(elem('hands'));
    var bt = Bezier([
      Vector(0,0),
      Vector(elem('cx1').d,elem('cy1').d),
      Vector(elem('cx2').d,elem('cy2').d),
      Vector(elem('x2').d,elem('y2').d)
    ]);
    var br = bt;
    if (elem.getAttribute('cx3') != null) {
      br = Bezier([
        Vector(0,0),
        Vector(elem('cx3').d,0.0),
        Vector(elem('cx4').d,elem('cy4').d),
        Vector(elem('x4').d,elem('y4').d)
      ]);
    }
    return Movement(beats,hands,bt,br);
  }

  factory Movement.fromData({
    required double beats,
    int hands = Hands.NOHANDS,
    required double cx1,
    required double cy1,
    required double cx2,
    required double cy2,
    required double x2,
    required double y2,
    double cx3 = -1.0,  //  need default < 0 because 0 can be a real value
    double cx4 = 0.0,
    double cy4 = 0.0,
    double x4 = 0.0,
    double y4 = 0.0
  }) {
    final bt = Bezier([[0.0,0.0].v,[cx1,cy1].v,[cx2,cy2].v,[x2,y2].v]);
    final br = cx3 < 0.0 ? bt :
        Bezier([[0.0,0.0].v,[cx3,0.0].v,[cx4,cy4].v,[x4,y4].v]);
    return Movement(beats,hands,bt,br);
  }

  //  Construct a Movement that can move from one point to another
  //  point along a straight line, and can turn a specific angle,
  //  as given by a transform
  factory Movement.fromTransform(Matrix t,
      {double beats=2.0, int hands=Hands.NOHANDS}) {
    //  Construct the translation bezier
    final dist = t.location;
    final bt = Bezier.fromPoints(Vector(0,0),dist/3.0,dist*2.0/3.0,dist);
    //  Construct the rotation bezier
    final angle = t.angle;
    final dx = angle.abs() / 3.0;
    final br = Bezier([Vector(0,0),Vector(dx,0),
        Vector(sin(angle)-dx*cos(angle),1-(cos(angle)+dx*sin(angle))),
        Vector(sin(angle),1-cos(angle))]);
    return Movement(beats,hands,bt,br);
  }

  @override
  Movement clone() =>
      Movement(beats,hands,btranslate.clone(),brotate.clone(),fromCall:fromCall);

  /// Return a matrix for the translation part of this movement at time t
  /// @param t  Time in beats
  /// @return   Matrix for using with canvas
  Matrix translate([double t = double.maxFinite]) {
    var tt = min(max(0,t),beats);
    return btranslate.translate(tt/beats);
  }

  /// Return a matrix for the rotation part of this movement at time t
  /// @param t  Time in beats
  /// @return   Matrix for using with canvas
  Matrix rotate([double t = double.maxFinite]) {
    var tt = min(max(0.0,t),beats);
    return brotate.rotate(tt / beats);
  }

  //  Return a new movement by changing the beats
  Movement time(double b) => Movement(b,hands,btranslate,brotate,fromCall:fromCall);

  //  Return a new movement by changing the hands
  Movement useHands(int h) => Movement(beats,h,btranslate,brotate,fromCall: fromCall);

  Movement notFromCall() => Movement(beats,hands,btranslate,brotate,fromCall: false);

  /// Return a new Movement scaled by x and y factors.
  /// If y is negative hands are also switched.
  Movement scale(double x, double y) {
    var h = hands;
    if (y < 0) {
      if (hands == Hands.RIGHTHAND) h = Hands.LEFTHAND;
      if (hands == Hands.LEFTHAND) h = Hands.RIGHTHAND;
      if (hands == Hands.GRIPRIGHT) h = Hands.GRIPLEFT;
      if (hands == Hands.GRIPLEFT) h = Hands.GRIPRIGHT;
    }
    return Movement(beats,h,btranslate.scale(x,y),brotate.scale(x,y));
  }

  /// Return a new Movement with the end point shifted by x and y
  /// Coords are dancer space at dancer's start position
  Movement skew(double x, double y) =>
      Movement(beats,hands,btranslate.skew(x, y), brotate); //, fromCall: fromCall);

  /// Return a new Movement with the final facing position turned
  /// by a specific radians
  Movement twist(double a) {
    late Bezier brot;
    if (a.abs() < 0.01)
      return clone();
    if (brotate.x2.abs() < 0.1 && brotate.y2.abs() < 0.1) {
      //  No rotate bezier (e.g. Stand movement)
      //  Make a rotation bezier of the requested amount
      var y2 = a > 0 ? 2.0 : -2.0;
      //  This is a rotation of 180 degrees
      var bez = Bezier([[0.0,0.0].v,[4.0/3.0,0.0].v,[4.0/3.0,y2].v,[0.0,y2].v]);
      brot = bez.clip(a.abs()/pi);
    } else {
      //  Spin the 2nd control point around the end point
      //  by the requested angle
      var d = (brotate.points[3] - brotate.points[2]).length;
      var a1 = (brotate.points[3] - (brotate.points[2])).v.angle;
      var a2 = a1 + a;
      var p2 = brotate.points[3].v - Vector(d*cos(a2),d*sin(a2));
      brot = Bezier([brotate.points[0].v,brotate.points[1].v,p2,brotate.points[3].v]);
    }
    return Movement(beats,hands,btranslate,brot,fromCall:fromCall);
  }

  Movement skewFromEnd(double x, double y) {
    var a = rotate().angle;
    var v = Vector(x,y).rotate(a);
    return skew(v.x,v.y);
  }

  Movement reflect() => scale(1.0,-1.0);

  Movement clip(double b) {
    if (b <= 0.0 || b > beats)
      throw ArgumentError('Invalid clip beats');
    var fraction = b / beats;
    return Movement(b,hands,
        btranslate.clip(fraction),brotate.clip(fraction),
        fromCall: fromCall);
  }

  bool isStand() => btranslate.isIdentity() && brotate.isIdentity();

  XmlElement toXML()  => XmlElement('movement'.xml,<XmlAttribute>[
    XmlAttribute('hands'.xml, Hands.getName(hands)),
    XmlAttribute('beats'.xml, beats.s),
    XmlAttribute('cx1'.xml, btranslate.cx1.s),
    XmlAttribute('cy1'.xml, btranslate.cy1.s),
    XmlAttribute('cx2'.xml, btranslate.cx2.s),
    XmlAttribute('cy2'.xml, btranslate.cy2.s),
    XmlAttribute('x2'.xml, btranslate.x2.s),
    XmlAttribute('y2'.xml, btranslate.y2.s),
    XmlAttribute('cx3'.xml, brotate.cx1.s),
    XmlAttribute('cx4'.xml, brotate.cx2.s),
    XmlAttribute('cy4'.xml, brotate.cy2.s),
    XmlAttribute('x4'.xml, brotate.x2.s),
    XmlAttribute('y4'.xml, brotate.y2.s)
  ]);

}