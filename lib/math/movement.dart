/*

  Taminations Square Dance Animations
  Copyright (C) 2020 Brad Christie

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
import 'bezier.dart';
import '../extensions.dart';
import 'vector.dart';
import 'matrix.dart';

class Hands {
  static const int NOHANDS = 0;
  static const int LEFTHAND = 1;
  static const int RIGHTHAND = 2;
  static const int BOTHHANDS = 3;
  static const int GRIPLEFT = 5;
  static const int GRIPRIGHT = 6;

  static int getHands(String h) {
    switch (h) {
      case 'none' : return NOHANDS;
      case 'nohands' : return NOHANDS;
      case 'left' : return LEFTHAND;
      case 'right' : return RIGHTHAND;
      case 'both' : return BOTHHANDS;
      case 'anygrip' : return 4;
      case 'gripleft' : return GRIPLEFT;
      case 'gripright' : return GRIPRIGHT;
      case 'gripboth' : return 7;
      default : return 0;
    }
  }
}

class Movement {

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
    var beats = elem.getAttribute('beats').d;
    var hands = Hands.getHands(elem.getAttribute('hands') ?? '');
    var bt = Bezier([
      Vector(0,0),
      Vector(elem.getAttribute('cx1').d,elem.getAttribute('cy1').d),
      Vector(elem.getAttribute('cx2').d,elem.getAttribute('cy2').d),
      Vector(elem.getAttribute('x2').d,elem.getAttribute('y2').d)
    ]);
    var br = bt;
    if (elem.getAttribute('cx3') != null) {
      br = Bezier([
        Vector(0,0),
        Vector(elem.getAttribute('cx3').d,0.0),
        Vector(elem.getAttribute('cx4').d,elem.getAttribute('cy4').d),
        Vector(elem.getAttribute('x4').d,elem.getAttribute('y4').d)
      ]);
    }
    return Movement(beats,hands,bt,br);
  }

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
      Movement(beats,hands,btranslate.skew(x, y), brotate);

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
    return Movement(b,hands,btranslate.clip(fraction),brotate.clip(fraction));
  }

  bool isStand() => btranslate.isIdentity() && brotate.isIdentity();

}