/*

  Taminations Square Dance Animations
  Copyright (C) 2026 Brad Christie

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

import 'math/matrix.dart';

abstract class Geometry {

  static const int BIGON = 1;
  static const int SQUARE = 2;
  static const int HEXAGON = 3;
  static const int HASHTAG = 4;
  static const int ASYMMETRIC = 5;

  var geometry = 0;
  var prevangle = 0.0;  // used for computing dancer path

  Geometry.create();

  factory Geometry(int g) {
    if (g == BIGON) return BigonGeometry();
    else if (g == SQUARE || g == ASYMMETRIC) return SquareGeometry();
    else if (g == HEXAGON) return HexagonGeometry();
    else if (g == HASHTAG) return HashtagGeometry();
    else throw ArgumentError();
  }

  factory Geometry.fromString(String gstr) {
    if (gstr.toLowerCase() == 'bi-gon')
      return BigonGeometry();
    else if (gstr.toLowerCase() == 'hexagon')
      return HexagonGeometry();
    else if (gstr.toLowerCase() == 'hashtag')
      return HashtagGeometry();
    else
      return SquareGeometry();
  }

  /// Generate a transform to apply to a dancer's start position
  Matrix startMatrix(Matrix mat, int rotnum);

  Geometry clone();
}

///////////////////////////////////////////////////////////////////////////
/////  Specific Geometry classes  //////
class BigonGeometry extends Geometry {

  BigonGeometry() : super.create();

  @override
  var geometry = Geometry.BIGON;

  @override
  Geometry clone() => BigonGeometry();

  @override
  Matrix startMatrix(Matrix mat, int rotnum) {
    var x = mat.m31;
    var y = mat.m32;
    var r = sqrt(x * x + y * y);
    var startangle = atan2(mat.m12, mat.m22);
    var angle = atan2(y, x) + pi;
    var bigangle = angle * 2 - pi;
    var x2 = r * cos(bigangle);
    var y2 = r * sin(bigangle);
    return Matrix.getTranslation(x2,y2) * Matrix.getRotation(startangle + angle);
  }

}

///////////////////////////////////////////////////////////////////////////
class SquareGeometry extends Geometry {

  SquareGeometry() : super.create();

  @override
  var geometry = Geometry.SQUARE;

  @override
  Geometry clone() => SquareGeometry();

  @override
  Matrix startMatrix(Matrix mat, int rotnum) =>
      Matrix.getRotation(pi * rotnum) * mat;

}

///////////////////////////////////////////////////////////////////////////
class HexagonGeometry extends Geometry {

  HexagonGeometry() : super.create();

  @override
  var geometry = Geometry.HEXAGON;

  @override
  Geometry clone() => HexagonGeometry();

  /// Generate a transform to apply to a dancer's start position
  @override
  Matrix startMatrix(Matrix mat, int rotnum) {
    var a = (pi * 2 / 3) * rotnum;
    var x = mat.m31;
    var y = mat.m32;
    var r = sqrt(x*x + y*y);
    var startangle = atan2(mat.m12,mat.m22);
    var angle = atan2(y,x);
    var dangle = (angle < 0.0) ? -(pi+angle)/3 : (pi-angle)/3;
    var x2 = r * cos(angle+dangle+a);
    var y2 = r * sin(angle+dangle+a);
    var startangle2 = startangle + a + dangle;
    return Matrix.getTranslation(x2,y2) *
        Matrix.getRotation(startangle2);
  }

}

///////////////////////////////////////////////////////////////////////////
class HashtagGeometry extends Geometry {

  HashtagGeometry() : super.create();

  @override
  var geometry = Geometry.HASHTAG;

  @override
  Geometry clone() => HashtagGeometry();

  @override
  Matrix startMatrix(Matrix mat, int rotnum) =>
      Matrix.getRotation(pi * rotnum / 2.0) * mat;

}