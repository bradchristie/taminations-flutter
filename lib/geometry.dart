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
import 'extensions.dart';

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
    if (gstr.toLowerCase() == "bi-gon") return BigonGeometry(0);
    else if (gstr.toLowerCase() == "hexagon") return HexagonGeometry(0);
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
  var geometry = Geometry.BIGON;

  @override
  Geometry clone() => BigonGeometry(rotnum);

  @override
  void drawGrid(Canvas ctx) {
    var p = gridPaint();
    for (var xs = -1; xs <= 1; xs += 2) {
      ctx.save();
      ctx.scale(xs.d,1.0);
      for (var xi = -75; xi <= 75; xi += 10) {
        var x1 = xi / 10.0;
        var path = Path();
        path.moveTo(x1.abs(), 0.0);
        for (var yi = 2; yi <= 75; yi += 2) {
          var y1 = yi / 10.0;
          var a = 2.0 * atan2(y1,x1);
          var r = sqrt(x1*x1 + y1*y1);
          var x = r * cos(a);
          var y = r * sin(a);
          path.lineTo(x, y);
        }
        ctx.drawPath(path, p);
      }
      ctx.restore();
    }
  }

  @override
  Matrix pathMatrix(Matrix starttx, Matrix tx, double beat) {
    //  Get dancer's start angle and current angle
    var x = starttx.m31;
    var y = starttx.m32;
    var a0 = atan2(y, x);
    var x2 = tx.m31;
    var y2 = tx.m32;
    var a1 = atan2(y2, x2);
    if (beat <= 0.0)
      prevangle = a1;
    var wrap = ((a1 - prevangle) / (pi * 2)).round();
    var a2 = a1 - wrap * pi * 2;
    var a3 = a2 - a0;
    prevangle = a2;
    return Matrix.getRotation(a3);
  }

  @override
  Matrix startMatrix(Matrix mat) {
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

  SquareGeometry(int rotnum) : super.create(rotnum);

  @override
  var geometry = Geometry.SQUARE;

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
  var geometry = Geometry.HEXAGON;

  @override
  Geometry clone() => HexagonGeometry(rotnum);

  @override
  void drawGrid(Canvas ctx) {
    var p = gridPaint();
    for (var yscale = -1; yscale <= 1; yscale += 2) {
      for (var a=0; a<=6; a++) {
        ctx.save();
        ctx.rotate(pi/6 + a*pi/3);
        ctx.scale(1.0, yscale.d);
        for (var xi=5; xi<=85; xi+=10) {
          var x0 = xi / 10.0;
          var path = Path();
          path.moveTo(0.0, x0);
          for (var yi=5; yi<=85; yi++) {
            var y0 = yi / 10.0;
            var aa = atan2(y0,x0) * 2 / 3;
            var r = sqrt(x0*x0 + y0*y0);
            var x = r * sin(aa);
            var y = r * cos(aa);
            path.lineTo(x, y);
          }
          ctx.drawPath(path, p);
        }
        ctx.restore();
      }
    }
  }

  /// Convert transform for a dancer's current position
  @override
  Matrix pathMatrix(Matrix starttx, Matrix tx, double beat) {
    //  Get dancer's start angle and current angle
    var x = starttx.m31;
    var y = starttx.m32;
    var a0 = atan2(y,x);
    var x2 = tx.m31;
    var y2 = tx.m32;
    var a1 = atan2(y2,x2);
    //  Correct for wrapping around +/- pi
    if (beat <= 0)
      prevangle = a1;
    var wrap = ((a1-prevangle)/(pi*2)).round();
    var a2 = a1 - wrap * pi * 2;
    var a3 = -(a2-a0)/3;
    prevangle = a2;
    return Matrix.getRotation(a3);
  }

  /// Generate a transform to apply to a dancer's start position
  @override
  Matrix startMatrix(Matrix mat) {
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