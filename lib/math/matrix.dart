/*

  Taminations Square Dance Animations
  Copyright (C) 2024 Brad Christie

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

import 'package:scidart/numdart.dart';
import 'package:tuple/tuple.dart';
import 'package:vector_math/vector_math.dart' hide Vector;

import '../cloneable.dart';
import '../extensions.dart';
import 'vector.dart';

class Matrix extends Matrix3 implements Cloneable<Matrix> {

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

  factory Matrix.fromArray2d(Array2d a) =>
      Matrix(a[0][0],a[0][1],0,a[1][0],a[1][1],0);

  factory Matrix.getIdentity() => Matrix(1,0,0,0,1,0);

  factory Matrix.getRotation(double angle) =>
      Matrix(cos(angle),-sin(angle),0.0,sin(angle),cos(angle),0.0);

  factory Matrix.getTranslation(dynamic x, [double? y]) {
    if (x is double && y is double)
      return Matrix(1, 0, x, 0, 1, y);
    else if (x is Vector)
      return Matrix(1, 0, x.x, 0, 1, x.y);
    throw ArgumentError(x);
  }

  Vector get location => Vector(m31,m32);
  Vector get direction => Vector(m11,m21);
  double get angle => atan2(m12,m22);
  @override
  Matrix clone() => Matrix(m11,m21,m31,m12,m22,m32);

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
  String toString() => '[${m11.s}, ${m21.s}, ${m31.s}, ${m12.s}, ${m22.s}, ${m32.s}]';

  //  This is for rotation transforms only,
  //  or when using as a 2x2 matrix (as in SVD)
  @override
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

  //  Compute SVD, used for finding best match of two formations
  //  See numdart/SVD in the pub SciDart package
  Tuple3<Matrix,List<double>,Matrix> svd22() {
    var svd = SVD(Array2d([
      Array([m11, m12]),
      Array([m21, m22])
    ]));
    var u = svd.U();
    var v = svd.V();
    var s = svd.singularValues();
    return Tuple3(Matrix.fromArray2d(u), s.toList(), Matrix.fromArray2d(v));
  }

}

extension MatrixExtension on Matrix3 {

  Matrix get m => Matrix.fromMatrix3(this);

}