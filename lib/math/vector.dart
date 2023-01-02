/*

  Taminations Square Dance Animations
  Copyright (C) 2023 Brad Christie

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

import 'package:vector_math/vector_math.dart';

import '../cloneable.dart';
import '../extensions.dart';

class Vector implements Cloneable {

  final double x;
  final double y;

  const Vector([this.x=0.0,this.y=0.0]);

  @override
  String toString() => '(${x.s} ${y.s})';

  //  Since Vector is read-only no need to make a copy
  @override
  Vector clone() => this;

  bool isAbout(Vector v2) => x.isAbout(v2.x) && y.isAbout(v2.y);
  double get angle => atan2(y,x);
  double get length => sqrt(x*x+y*y);
  Vector rotate(double angle2) {
    var d = length;
    var a = angle + angle2;
    return Vector(d * cos(a), d * sin(a));
  }
  Vector scale(double sx,double sy) => Vector(x*sx,y*sy);
  //  Return difference angle between two vectors
  //  in the range of -pi to pi
  double angleDiff(Vector v) {
    var a1 = v.angle;
    var a2 = angle;
    return ((a1-a2 + pi*3) % (pi*2)) - pi;
  }
  Vector vectorTo(Vector v) => v - this;
  //  Return Z-coordinate of the cross product between two vectors
  double crossZ(Vector v) => x * v.y - y * v.x;
  String get str => '(${x.s},${y.s})';

  //  Operators
  Vector operator +(Vector v2) => Vector(x+v2.x,y+v2.y);
  Vector operator -(Vector v2) => Vector(x-v2.x,y-v2.y);
  Vector operator *(double s) => scale(s,s);
  Vector operator -() => Vector(-x,-y);
  Vector operator /(double s) => scale(1/s,1/s);
  @override
  bool operator ==(Object v2) => v2 is Vector &&
      (v2.x.isAbout(x) && v2.y.isAbout(y));

  @override
  int get hashCode => x.round().hashCode ^ y.round().hashCode;

}

extension VectorFromList on List<double> {
  Vector get v => Vector(this[0],this[1]);
}

extension Vector2Extension on Vector2 {
  Vector get v => Vector(x,y);
}

extension Vector2ListExtension on List<Vector2> {
  List<Vector> get v => map((e) => e.v).toList();
}

extension VectorListExtension on List<Vector> {
  List<Vector2> get v2 => map((e) => Vector2(e.x,e.y)).toList();
}


