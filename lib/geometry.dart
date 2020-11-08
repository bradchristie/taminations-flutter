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

import 'package:flutter/material.dart';
import 'package:taminations/color.dart';
import 'dart:math';
import 'math/matrix.dart';

abstract class Geometry {

  static const int BIGON = 1;
  static const int SQUARE = 2;
  static const int HEXAGON = 3;

  var rotnum = 0;
  var geometry = 0;
  var prevangle = 0.0;  // used for computing dancer path

  Geometry.create(this.rotnum);

  Paint gridPaint() => Paint()
      ..color = Color.LIGHTGREY
      ..style = PaintingStyle.stroke
      ..strokeWidth = 0.0;  // 1 pixel

  factory Geometry(int g, [int r = 0]) {
    if (g == BIGON) return BigonGeometry(r);
    else if (g == SQUARE) return SquareGeometry(r);
    else if (g == HEXAGON) return HexagonGeometry(r);
    else throw ArgumentError();
  }

  factory Geometry.fromString(String gstr) {
    if (gstr == "bi-gon") return BigonGeometry(0);
    else if (gstr == "hexagon") return HexagonGeometry(0);
    else return SquareGeometry(0);
  }

  static List<Geometry> getGeometry(int sym) {
    if (sym == BIGON) return [BigonGeometry(0)];
    else if (sym == HEXAGON)
      return [HexagonGeometry(0),HexagonGeometry(1),HexagonGeometry(2)];
    else return [SquareGeometry(0),SquareGeometry(1)];
  }

  /// Generate a transform to apply to a dancer's start position
  Matrix startMatrix(Matrix mat);

  /// Convert transform for a dancer's current position
  Matrix pathMatrix(Matrix starttx, Matrix tx, double beat);

  /// Draw a dancer-sized grid of the specific geometry
  /// @param ctx  Canvas to draw grid on
  void drawGrid(Canvas ctx);

  Geometry clone();
}

///////////////////////////////////////////////////////////////////////////
/////  Specific Geometry classes  //////
class BigonGeometry extends Geometry {

  BigonGeometry(int rotnum) : super.create(rotnum);

  @override
  Geometry clone() {
    // TODO: implement clone
    throw UnimplementedError();
  }

  @override
  void drawGrid(Canvas ctx) {
    // TODO: implement drawGrid
  }

  @override
  Matrix pathMatrix(Matrix starttx, Matrix tx, double beat) {
    // TODO: implement pathMatrix
    throw UnimplementedError();
  }

  @override
  Matrix startMatrix(Matrix mat) {
    // TODO: implement startMatrix
    throw UnimplementedError();
  }

}

///////////////////////////////////////////////////////////////////////////
class SquareGeometry extends Geometry {

  SquareGeometry(int rotnum) : super.create(rotnum);

  @override
  Geometry clone() => SquareGeometry(rotnum);

  @override
  void drawGrid(Canvas ctx) {
    var p = gridPaint();
    for (var x = -75; x <= 75; x += 10) {
      var path = Path();
      path.moveTo(x/10.0, -7.5);
      path.lineTo(x/10.0, 7.5);
      ctx.drawPath(path,p);
    }
    for (var y = -75; y <= 75; y += 10) {
      var path = Path();
      path.moveTo(-7.5, y/10.0);
      path.lineTo(7.5, y/10.0);
      ctx.drawPath(path,p);
    }
  }

  @override
  Matrix pathMatrix(Matrix starttx, Matrix tx, double beat) =>
      Matrix.getIdentity();

  @override
  Matrix startMatrix(Matrix mat) =>
      Matrix.getRotation(pi * rotnum) * mat;

}

///////////////////////////////////////////////////////////////////////////
class HexagonGeometry extends Geometry {

  HexagonGeometry(int rotnum) : super.create(rotnum);

  @override
  Geometry clone() {
    // TODO: implement clone
    throw UnimplementedError();
  }

  @override
  void drawGrid(Canvas ctx) {
    // TODO: implement drawGrid
  }

  @override
  Matrix pathMatrix(Matrix starttx, Matrix tx, double beat) {
    // TODO: implement pathMatrix
    throw UnimplementedError();
  }

  @override
  Matrix startMatrix(Matrix mat) {
    // TODO: implement startMatrix
    throw UnimplementedError();
  }

}