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

import 'dart:math';

import 'package:flutter/material.dart' as fm;

import 'color.dart';
import 'extensions.dart';
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

  fm.Paint gridPaint() => fm.Paint()
      ..color = Color.LIGHTGREY
      ..style = fm.PaintingStyle.stroke
      ..strokeWidth = 0;

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

  /// Draw a dancer-sized grid of the specific geometry
  /// @param ctx  Canvas to draw grid on
  void drawGrid(fm.Canvas ctx);
  void drawAxes(fm.Canvas ctx, {bool short=false});


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
  void drawGrid(fm.Canvas ctx) {
    var p = gridPaint();
    for (var xs = -1; xs <= 1; xs += 2) {
      ctx.save();
      ctx.scale(xs.d,1.0);
      for (var xi = -75; xi <= 75; xi += 10) {
        var x1 = xi / 10.0;
        var path = fm.Path();
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
  void drawAxes(fm.Canvas ctx, {bool short = false}) {
    final length = short ? 2.0 : 7.5;
    var p = gridPaint();
    p.color = Color.RED;
    ctx.drawLine(fm.Offset(0.0,0.0), fm.Offset(-length,0.0), p);
    p.color = Color.BLUE;
    ctx.drawLine(fm.Offset(0.0,0.0), fm.Offset(length,0.0), p);
  }

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
  void drawGrid(fm.Canvas ctx) {
    var p = gridPaint();
    for (var x = -75; x <= 75; x += 10) {
      var path = fm.Path();
      path.moveTo(x/10.0, -7.5);
      path.lineTo(x/10.0, 7.5);
      ctx.drawPath(path,p);
    }
    for (var y = -75; y <= 75; y += 10) {
      var path = fm.Path();
      path.moveTo(-7.5, y/10.0);
      path.lineTo(7.5, y/10.0);
      ctx.drawPath(path,p);
    }
  }

  @override
  void drawAxes(fm.Canvas ctx, {bool short = false}) {
    final length = short ? 2.0 : 7.5;
    var p = gridPaint();
    p.color = Color.RED;
    ctx.drawLine(fm.Offset(-length,0.0), fm.Offset(length,0.0), p);
    p.color = Color.BLUE;
    ctx.drawLine(fm.Offset(0.0,-length), fm.Offset(0.0,length), p);
  }

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

  @override
  void drawGrid(fm.Canvas ctx) {
    var p = gridPaint();
    for (var yscale = -1; yscale <= 1; yscale += 2) {
      for (var a=0; a<=6; a++) {
        ctx.save();
        ctx.rotate(pi/6 + a*pi/3);
        ctx.scale(1.0, yscale.d);
        for (var xi=5; xi<=85; xi+=10) {
          var x0 = xi / 10.0;
          var path = fm.Path();
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

  @override
  void drawAxes(fm.Canvas ctx, {bool short = false}) {
    final length = short ? 2.0 : 7.5;
    final tanlength = length * tan(pi/6);
    var p = gridPaint();
    p.color = Color.RED;
    ctx.drawLine(fm.Offset(0.0,0.0), fm.Offset(-length,0.0), p);
    ctx.drawLine(fm.Offset(0.0,0.0), fm.Offset(tanlength,length), p);
    ctx.drawLine(fm.Offset(0.0,0.0), fm.Offset(tanlength,-length), p);
    p.color = Color.BLUE;
    ctx.drawLine(fm.Offset(0.0,0.0), fm.Offset(length,0.0), p);
    ctx.drawLine(fm.Offset(0.0,0.0), fm.Offset(-tanlength,length), p);
    ctx.drawLine(fm.Offset(0.0,0.0), fm.Offset(-tanlength,-length), p);
  }

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

  //  Same as sqaure geometry
  @override
  void drawGrid(fm.Canvas ctx) {
    var p = gridPaint();
    for (var x = -75; x <= 75; x += 10) {
      var path = fm.Path();
      path.moveTo(x/10.0, -7.5);
      path.lineTo(x/10.0, 7.5);
      ctx.drawPath(path,p);
    }
    for (var y = -75; y <= 75; y += 10) {
      var path = fm.Path();
      path.moveTo(-7.5, y/10.0);
      path.lineTo(7.5, y/10.0);
      ctx.drawPath(path,p);
    }
  }

  @override
  void drawAxes(fm.Canvas ctx, {bool short = false}) {
    final length = short ? 2.0 : 7.5;
    var p = gridPaint();
    p.color = Color.RED;
    ctx.drawLine(fm.Offset(-length,0.0), fm.Offset(length,0.0), p);
    p.color = Color.BLUE;
    ctx.drawLine(fm.Offset(0.0,-length), fm.Offset(0.0,length), p);
  }

  @override
  Matrix startMatrix(Matrix mat, int rotnum) =>
      Matrix.getRotation(pi * rotnum / 2.0) * mat;

}