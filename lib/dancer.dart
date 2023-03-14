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
import 'package:flutter/material.dart' as fm;
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';

import 'common.dart';

class Dancer extends DancerModel {

  static const NUMBERS_OFF = 0;
  static const NUMBERS_DANCERS = 1;
  static const NUMBERS_COUPLES = 2;
  static const NUMBERS_NAMES = 3;   //  sequencer only
  static const NUMBER_HEIGHT = 8.0;

  static const rect = fm.Rect.fromLTWH(-0.5, -0.5, 1.0, 1.0);
  static var rrect = fm.RRect.fromRectAndRadius(rect,
      fm.Radius.circular(0.3));

  //  Passed into default constructor
  Color fillColor;

  //  Computed
  Color get drawColor => fillColor.darker();
  int _showNumber = NUMBERS_DANCERS;
  bool showColor = true;
  bool showShape = true;
  bool hidden = false;
  bool showPath = false;
  fm.Path? _pathPath;
  var _span = fm.TextSpan();
  var _tp = fm.TextPainter();

  int get showNumber => _showNumber;
      set showNumber(int value) {
        _showNumber = value;
        var t = '';
        if (showNumber == NUMBERS_DANCERS) t = number;
        if (showNumber == NUMBERS_COUPLES) t = numberCouple;
        if (showNumber == NUMBERS_NAMES) t = name;
        _span = TextSpan(text: t,
            style:GoogleFonts.roboto(fontSize: NUMBER_HEIGHT, color: fm.Colors.black));
        _tp = TextPainter(text: _span,
            textAlign: TextAlign.center,
            textDirection: fm.TextDirection.ltr)..layout();

      }

  Dancer(number,numberCouple, gender,this.fillColor, Matrix mat, moves)
      : super(number,numberCouple,gender,mat,moves)
  {
    // Compute points of path for drawing path
    computePath();
  }

  factory Dancer.fromData({required int gender,
    String number='', String couple='',
    required double x, required double y, required double angle,
    Color color = Color.WHITE,
    Geometry? geometry, int rotnum=0,
    List<Movement> path = const <Movement>[]
  }) {
        var myGeometry = geometry ?? Geometry(Geometry.SQUARE);
    final mat = myGeometry.startMatrix(Matrix.getTranslation(x,y) *
        Matrix.getRotation(angle.toRadians), rotnum);
    return Dancer(number,couple,gender,color,mat,path);
  }

  @override
  String toString() => number;


  // Compute points of path for drawing path
  void computePath() {
    animateComputed(0);
    var loc = location;
    _pathPath = fm.Path();
    _pathPath!.moveTo(loc.x, loc.y);
    for (var beat = 0.1; beat <= beats; beat += 0.1) {
      animateComputed(beat);
      loc = location;
      _pathPath!.lineTo(loc.x, loc.y);
    }
  }

  ///   Draw the entire Dancer's path as a translucent colored line
  /// @param c  Canvas to draw to
  void drawPath(fm.Canvas c) {
    //  The path color is a partly transparent version of the draw color
    var p = fm.Paint()
      ..color = drawColor.withAlpha(128)
      ..style = fm.PaintingStyle.stroke
      ..strokeWidth = 0.1;
    c.drawPath(_pathPath!, p);
  }

  //  Draw the Dancer at its current position
  //  The Canvas is already transformed to the Dancer's position and orientation
  //  and scaled to the Dancer's size
  void draw(fm.Canvas c) {
    var dc = showColor ? drawColor : Color.GRAY;
    var fc = showColor ? fillColor : Color.LIGHTGREY;
    c.save();
    //ctx.transform(d.tx);  not available on Flutter
    c.translate(location.x,location.y);
    c.rotate(tx.angle);
    //  Draw the head
    var p = fm.Paint()..color = dc;
    c.drawCircle(fm.Offset(0.5,0.0), 0.33, p);
    //  Draw the body
    final reallyShowNumbers =
        showNumber != NUMBERS_OFF &&
        gender != Gender.PHANTOM &&
        fillColor != Color.GRAY;
    p.color = reallyShowNumbers ? fc.veryBright() : fc;
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
    if (reallyShowNumbers) {
      //  The Dancer is rotated relative to the display, but of course
      //  the Dancer number should not be rotated.
      //  So the number needs to be transformed back
      var angle = atan2(tx.m12,tx.m22);
      var txtext = Matrix.getRotation(-angle + pi/2);
      c.translate(txtext.location.x,txtext.location.y);
      c.rotate(txtext.angle);
      c.scale(-0.1,0.1);
      _tp.paint(c, Offset(-_tp.width/2,-_tp.height/2));
    }
    c.restore();
  }

}