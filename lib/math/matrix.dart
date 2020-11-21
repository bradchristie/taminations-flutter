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

/*
Table for matrix fields iOS and Java
iOS                         Java                                     Win Matrix3x2
a   c   tx        MSCALE_X(0)    MSKEW_X(1)    MTRANS_X(2)       M11    M21   M31
b   d   ty        MSKEW_Y(3)     MSCALE_Y(4)   MTRANS_Y(5)       M12    M22   M32
0   0   1         MPERSP_0(6)    MPERSP_1(7)   MPERSP_2(8)       0      0     1

Dart
 0   3   6
 1   4   7
 2   5   8

*/

import 'dart:math';
import 'package:taminations/math/triple.dart';
import 'package:vector_math/vector_math.dart' hide Vector;
import 'vector.dart';
import '../extensions.dart';

class Matrix extends Matrix3 {

  double get m11 => this[0];
  double get m12 => this[1];
  double get m21 => this[3];
  double get m22 => this[4];
  double get m31 => this[6];
  double get m32 => this[7];

  Matrix(double m11, double m21, double m31,
      double m12, double m22, double m32) : super.zero() {
    setValues(m11,m12,0.0,m21,m22,0.0,m31,m32,1.0);
  }

  factory Matrix.fromMatrix3(Matrix3 m) =>
      Matrix(m[0],m[3],m[6],m[1],m[4],m[7]);

  factory Matrix.getIdentity() => Matrix(1,0,0,0,1,0);

  factory Matrix.getRotation(double angle) =>
      Matrix(cos(angle),-sin(angle),0.0,sin(angle),cos(angle),0.0);

  factory Matrix.getTranslation(dynamic x, [double y]) {
    if (x is double && y is double)
      return Matrix(1, 0, x, 0, 1, y);
    else if (x is Vector)
      return Matrix(1, 0, x.x, 0, 1, x.y);
    throw ArgumentError(x);
  }

  Vector get location => Vector(m31,m32);
  Vector get direction => Vector(m11,m21);
  double get angle => atan2(m12,m22);
  Matrix copy() => Matrix(m11,m21,m31,m12,m22,m32);

  @override
  dynamic operator *(dynamic arg) {
    if (arg is Matrix3)
      return super.multiplied(arg).m;
    else if (arg is Vector) {
      return Vector(m11 * arg.x + m21 * arg.y + m31,
          m12 * arg.x + m22 * arg.y + m32);
    }
    else
      throw ArgumentError(arg);
  }

    @override
  String toString() => "[${m11.s}, ${m12.s}, ${m21.s}, ${m22.s}, ${m31.s}, ${m32.s}]";

  //  This is for rotation transforms only,
  //  or when using as a 2x2 matrix (as in SVD)
  Matrix transpose() => Matrix(m11,m12,0,m21,m22,0);

  Matrix inverse() {
    var m = Matrix.getIdentity();
    m.copyInverse(this);
    return m;
  }

  //  If a rotation matrix is close to a 90 degree angle,snap to it
  double _snapDouble(double d, double delta) {
    if (d.isAbout(0,delta:delta)) return 0;
    if (d.isAbout(1,delta:delta)) return 1;
    if (d.isAbout(-1,delta:delta)) return -1;
    return d;
  }
  Matrix snapTo90({double delta=0.1}) =>
      Matrix(_snapDouble(m11, delta),_snapDouble(m21, delta),m31,
             _snapDouble(m12, delta),_snapDouble(m22, delta),m32);

  //  SVD simple and fast for 2x2 arrays
  //  for matching 2d formations
  Triple<Matrix,List<double>,Matrix> svd22() {
    var a = m11;
    var b = m12;
    var c = m21;
    var d = m22;
    //  Check for trivial case
    var epsilon = 0.0001;
    if (b.abs() < epsilon && c.abs() < epsilon) {
      var v = Matrix(a < 0 ? -1 : 1, 0,0,0, d < 0 ? -1 : 1, 0);
      var sigma = [ a.abs(), d.abs() ];
      var u = Matrix.getIdentity();
      return Triple(u,sigma,v);
    } else {   //  Otherwise, solve quadratic for eigenvalues
      var atanarg1 = 2 * a * c + 2 * b * d;
      var atanarg2 = a * a + b * b - c * c - d * d;
      var theta = 0.5 * atan2(atanarg1, atanarg2);
      var u = Matrix(
          cos(theta), -sin(theta), 0.0,
          sin(theta), cos(theta), 0.0
      );

      var phi = 0.5 * atan2(2 * a * b + 2 * c * d, a.sq - b.sq + c.sq - d.sq);
      var s11 = (a * cos(theta) + c * sin(theta)) * cos(phi) +
          (b * cos(theta) + d * sin(theta)) * sin(phi);
      var s22 = (a * sin(theta) - c * cos(theta)) * sin(phi) +
          (-b * sin(theta) + d * cos(theta)) * cos(phi);

      var s1 = a.sq + b.sq + c.sq + d.sq;
      var s2 = sqrt((a.sq + b.sq - c.sq - d.sq).sq + 4 * (a * c + b * d).sq);
      var sigma = [ sqrt(s1 + s2) / 2, sqrt(s1 - s2) / 2 ];

      var v = Matrix(
          s11.sign * cos(phi), -s22.sign * sin(phi), 0.0,
          s11.sign * sin(phi), s22.sign * cos(phi), 0.0
      );
      return Triple(u, sigma, v);
    }

  }

}

extension MatrixExtension on Matrix3 {

  Matrix get m => Matrix.fromMatrix3(this);

}