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

import 'package:flutter/material.dart' as fm;
import 'package:flutter/painting.dart';

import 'common.dart';

class Gender {
  static const BOY = 1;
  static const GIRL = 2;
  static const PHANTOM = 3;
  static const NONE = 4;    // for concepts with abstract dancers
}

//  Additional data for each dancer for use by sequencer
class DancerData {
  var active = true;
  var beau = false;
  var belle = false;
  var leader = false;
  var trailer = false;
  var center = false;
  var verycenter = false;
  var end = false;
  Dancer partner;
}

//  Dancer Space is a coordinate system where the dancer
//  is at (0,0) and looking down the X axis.
//  Convert a point from world space to dancer space
//  based on the dancer's current location.
extension DancerVector on Vector {
  Vector ds(Dancer d) => d.tx.inverse() * this;
}

extension DancerList on List<Dancer> {

  //  Check to see if dancers are in diagonal-opposite order
  //  That is, dancer 1 is the diagonal opposite of dancer 0, etc.
  bool areDancersOrdered() =>
      length % 2 == 0 &&
  indices.where((it) => it % 2 == 0).every(
          (it) => this[it].location.isAbout(-this[it+1].location));

  //  Center a list of dancers
  //  Assumes dancers are distributed evenly around a central point
  List<Dancer> center() {
    if (length > 0) {
      var vs = fold(Vector(0.0,0.0), (v, d) => v + d.location);
      var va = vs / length.d;
      forEach((d) {
        d.setStartPosition(d.location - va);
      });
    }
    return this;
  }

  //  Take a list of dancers in any order and re-order
  //  in pairs of diagonal opposites
  //  If it fails, just return original list
  //  rather than null or crashing
  List<Dancer> inOrder() {
    try {
      return where((it) =>
      it.location.x.isGreaterThan(0) ||
          it.location.x.isAbout(0) && it.location.y.isGreaterThan(0))
          .expand((d) =>
      [
        d,
        firstWhere((it) => it.location.isAbout(-d.location))
      ]).toList();
    } catch (_) {
      return this;
    }
  }

  String show() {
    var outstr = '';
    for (var iy=50; iy>=(-50); iy -= 5) {
      for (var ix=(-100); ix<=100; ix += 5) {
        var char = (ix==0 && iy==0) ? '+'
            : (ix==0) ? '|'
            : (iy==0) ? '-'
            : ' ';
        for (final d in this) {
          if (d.location.isAbout(Vector(ix/20.0,iy/10.0)))
            char = d.number;
        }
        outstr += char;
      }
      outstr += '\n';
    }
    return outstr;
  }

}

class Dancer implements Comparable<Dancer> {

  static const NUMBERS_OFF = 0;
  static const NUMBERS_DANCERS = 1;
  static const NUMBERS_COUPLES = 2;
  static const NUMBERS_NAMES = 3;   //  sequencer only

  static const rect = fm.Rect.fromLTWH(-0.5, -0.5, 1.0, 1.0);
  static var rrect = fm.RRect.fromRectAndRadius(rect,
      fm.Radius.circular(0.3));

  //  Passed into default constructor
  String number;
  String numberCouple;
  int gender;
  Color fillColor;
  Geometry _geom;
  List<Movement> moves;
  Dancer clonedFrom;

  //  Computed
  Color get drawColor => fillColor.darker();
  int showNumber = NUMBERS_DANCERS;
  bool showColor = true;
  bool showShape = true;
  bool hidden = false;
  Matrix starttx;
  Path path;
  bool showPath = false;
  int hands = Hands.NOHANDS;
  Matrix tx = Matrix.getIdentity();
  fm.Path _pathPath;
  double get beats => path.beats;
  //  Other vars for computing handholds
  Dancer leftDancer;
  Dancer rightDancer;
  Dancer rightGrip;
  Dancer leftGrip;
  bool rightHandVisibility = false;
  bool leftHandVisibility = false;
  bool rightHandNewVisibility = false;
  bool leftHandNewVisibility = false;
  var data = DancerData();
  var name = '';  // for sequencer

  Dancer(this.number,this.numberCouple, this.gender,
      this.fillColor, Matrix mat, this._geom, this.moves, [this.clonedFrom]) {
    starttx = _geom.startMatrix(mat);
    path = Path(moves);
    if (clonedFrom != null) data.active = clonedFrom.data.active;
    // Compute points of path for drawing path
    computePath();
    //  Restore dancer to start position
    _animateComputed(-2.0);
  }

  Dancer.clone(Dancer from,{String number, String numberCouple, int gender}) :
      this(
          number ?? from.number,
          numberCouple ?? from.numberCouple,
          gender ?? from.gender,
          from.fillColor,from.tx,
          //  Already geometrically rotated so don't do it again
          Geometry(from._geom.geometry,0),[],from);

  @override
  int get hashCode => number.hashCode;

  bool get isActive => data.active;
  bool get isNotActive => !data.active;

  @override
  bool operator ==(Object other) {
    if (other is Dancer) {
      return number == other.number;
    }
    return false;
  }

  @override
  int compareTo(Dancer other) => number.compareTo(other.number);
  bool operator <(Object other) {
    if (other is Dancer)
      return number.compareTo(other.number) < 0;
    return false;
  }

  @override
  String toString() => number;

  bool get isPhantom => gender == Gender.PHANTOM;

  Vector get location => tx.location;

  //  Distance to another dancer
  double distanceTo(Dancer d2) => (location - d2.location).length;

  //  Angle the dancer is facing relative to the positive x-axis
  double get angleFacing => tx.angle;

  //  Angle of the dancer's position relative to the positive x-axis
  double get anglePosition => tx.location.angle;

  //  Angle the dancer turns to look at the origin
  double get angleToOrigin => (tx.inverse()*Vector()).angle;

  Vector vectorToDancer(Dancer d2) =>
      tx.inverse() * d2.location;

  //  Angle of d2 as viewed from this dancer
  //  If angle is 0 then d2 is in front
  //  Angle returned is in the range -pi to pi
  double angleToDancer(Dancer d2) => vectorToDancer(d2).angle;

  //  Other geometric interrogatives
  bool get isFacingIn {
    var a = angleToOrigin.abs();
    return !a.isAbout(pi/2) && a < pi/2;
  }

  bool get isFacingOut {
    var a = angleToOrigin.abs();
    return !a.isAbout(pi/2) && a > pi/2;
  }

  //  Dancer turns to the left to look at center of the square
  bool get isCenterLeft => angleToOrigin > 0;
  bool get isCenterRight => angleToOrigin < 0;
  bool get isOnXAxis => location.y.isAbout(0);
  bool get isOnYAxis => location.x.isAbout(0);
  bool get isOnAxis => isOnXAxis || isOnYAxis;
  bool get isTidal =>
      (isOnXAxis || isOnYAxis) && (isCenterLeft || isCenterRight);

  bool isInFrontOf(Dancer d2) =>
      this != d2 && d2.angleToDancer(this).isAround(0);
  bool isInBackOf(Dancer d2) =>
      this != d2 && d2.angleToDancer(this).isAround(pi);
  bool isRightOf(Dancer d2) =>
      this != d2 && d2.angleToDancer(this).isAround(pi*3/2);
  bool isLeftOf(Dancer d2) =>
      this != d2 && d2.angleToDancer(this).isAround(pi/2);
  bool isOpposite(Dancer d2) =>
      this != d2 && (location + d2.location).length.isAbout(0);

  ///   Used for hexagon handholds
  /// @return  True if dancer is close enough to center to make a center star
  bool get inCenter => location.length < 1.1;


  void _animateComputed(double beat) {
    hands = path.hands(beat);
    tx = starttx * path.animate(beat);
    tx = _geom.pathMatrix(starttx, tx, beat) * tx;
  }
  void animate(double beat) => _animateComputed(beat);
  void animateToEnd() => animate(beats);


  Dancer setStartPosition(Vector pos) {
    var a = angleFacing;
    starttx = Matrix.getTranslation(pos.x,pos.y) * Matrix.getRotation(a);
    tx = starttx.copy();
    return this;
  }

  Dancer setStartAngle(double a) {
    starttx = Matrix.getTranslation(starttx.location) * Matrix.getRotation(a);
    return this;
  }

  //  Note that this takes an angle in degrees
  Dancer rotateStartAngle(double angle) {
    starttx = starttx * Matrix.getRotation(angle.toRadians);
    tx = starttx.copy();
    return this;
  }

  // Compute points of path for drawing path
  void computePath() {
    _animateComputed(0);
    var loc = location;
    _pathPath = fm.Path();
    _pathPath.moveTo(loc.x, loc.y);
    for (var beat = 0.1; beat <= beats; beat += 0.1) {
      _animateComputed(beat);
      loc = location;
      _pathPath.lineTo(loc.x, loc.y);
    }
  }

  ///   Draw the entire dancer's path as a translucent colored line
  /// @param c  Canvas to draw to
  void drawPath(fm.Canvas c) {
    //  The path color is a partly transparent version of the draw color
    var p = fm.Paint()
      ..color = drawColor.withAlpha(128)
      ..style = fm.PaintingStyle.stroke
      ..strokeWidth = 0.1;
    c.drawPath(_pathPath, p);
  }

  //  Draw the dancer at its current position
  //  The Canvas is already transformed to the dancer's position and orientation
  //  and scaled to the dancer's size
  void draw(fm.Canvas c) {
    var dc = showColor ? drawColor : Color.GRAY;
    var fc = showColor ? fillColor : Color.LIGHTGREY;
    //  Draw the head
    var p = fm.Paint()..color = dc;
    c.drawCircle(fm.Offset(0.5,0.0), 0.33, p);
    //  Draw the body
    p.color = (showNumber == NUMBERS_OFF || gender == Gender.PHANTOM)
          ? fc : fc.veryBright();
    var g = showShape ? gender : Gender.PHANTOM;
    if (g == Gender.BOY)
      c.drawRect(rect, p);
    else if (g == Gender.GIRL)
      c.drawCircle(fm.Offset(0,0), 0.5, p);
    else
      c.drawRRect(rrect, p);
    //  Draw the body outline
    p.strokeWidth = 0.1;
    p.color = dc;
    p.style = fm.PaintingStyle.stroke;
    if (g == Gender.BOY)
      c.drawRect(rect, p);
    else if (g == Gender.GIRL)
      c.drawCircle(fm.Offset(0,0), 0.5, p);
    else
      c.drawRRect(rrect, p);
    //  Draw number if on
    if (showNumber != Dancer.NUMBERS_OFF) {
      //  The dancer is rotated relative to the display, but of course
      //  the dancer number should not be rotated.
      //  So the number needs to be transformed back
      var angle = atan2(tx.m12,tx.m22);
      var txtext = Matrix.getRotation(-angle + pi/2);
      c.translate(txtext.location.x,txtext.location.y);
      c.rotate(txtext.angle);
      c.scale(-0.1,0.1);
      var t = '';
      var textSize = 7.0;
      if (showNumber == NUMBERS_DANCERS) t = number;
      if (showNumber == NUMBERS_COUPLES) t = numberCouple;
      if (showNumber == NUMBERS_NAMES) t = name;
      var span = TextSpan(text: t,
          style:TextStyle(fontSize: 8, color:fm.Colors.black));
      var tp = TextPainter(text: span,
          textAlign: TextAlign.center,
          textDirection: fm.TextDirection.ltr)..layout();
      tp.paint(c, Offset(-textSize*0.35,-textSize*0.55));
    }
  }

}