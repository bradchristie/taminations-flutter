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


import 'package:flutter/material.dart' as fm;
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';

import 'common_flutter.dart';
import 'dance_model.dart';

class DancePainter extends fm.CustomPainter  {

  //  Shapes for drawing dancers
  static const rect = fm.Rect.fromLTWH(-0.5, -0.5, 1.0, 1.0);
  static var rrect = fm.RRect.fromRectAndRadius(rect,
      fm.Radius.circular(0.3));
  static const NUMBER_HEIGHT = 8.0;


  DanceModel model;

  Vector _size = Vector();
  var leadin = 2.0;
  var leadout = 2.0;
  var _prevbeat = 0.0;
  //var _beat = 0.0;
  //double get beat => _beat;
  //set beat(value) {
  //  _beat = value;
  //  notifyListeners();
  //}
  //  currentPart is 0 if not in animation, 1 to n otherwise
  var currentPart = 0;
  var hasParts = false;
  var hasCalls = false;
  String partstr = '';
  Map<Dancer,fm.Path> paths = {};

  DancePainter(this.model) : super(repaint:model.beater) {
    _prevbeat = 0; // model.beater.beat;
    computePaths();
  }

  @override
  bool shouldRepaint(covariant fm.CustomPainter oldDelegate) {
    return true;
  }

  @override
  bool? hitTest(fm.Offset position) => null;

  @override
  fm.SemanticsBuilderCallback? get semanticsBuilder => null;

  @override
  bool shouldRebuildSemantics(covariant fm.CustomPainter oldDelegate) => shouldRepaint(oldDelegate);

  //  Convert widget x and y to dance floor coordinates
  Vector mouse2dance(Vector wc) {
    var range = min(_size.x,_size.y);
    var s = range / 13.0;
    var dx = -(wc.y - _size.y / 2.0) / s;
    var dy = -(wc.x - _size.x / 2.0) / s;
    return Vector(dx,dy);
  }

  //  Find dancer at floor coordinates
  Dancer? dancerAt(Vector p) {
    try {
      return model.dancers.firstWhere((d) => (d.location - p).length < 0.5);
    } on Error {
      return null;
    }
  }

  //  Check that there isn't another dancer in the middle of
  //  a computed handhold.  Can happen when dancers are in
  //  tight formations like tidal waves.
  bool _dancerInHandhold(Handhold hh) {
    var hhloc = (hh.dancer1.location + hh.dancer2.location).scale(0.5,0.5);
    return model.dancers.any((d) =>
    d != hh.dancer1 && d != hh.dancer2 &&
        (d.location - hhloc).length < 0.5 );
  }

  // Compute points of paths for drawing path
  void computePaths() {
    for (var d in model.dancers) {
      d.animate(0);
      var loc = d.location;
      var path = fm.Path();
      path.moveTo(loc.x, loc.y);
      for (var beat = 0.1; beat <= d.beats; beat += 0.1) {
        d.animate(beat);
        loc = d.location;
        path.lineTo(loc.x, loc.y);
      }
      paths[d] = path;
    }
  }

  ///   Draw the entire Dancer's path as a translucent colored line
  /// @param c  Canvas to draw to
  void drawPath(fm.Canvas c, Dancer d) {
    //  The path color is a partly transparent version of the draw color
    var p = fm.Paint()
      ..color = d.drawColor.withAlpha(128)
      ..style = fm.PaintingStyle.stroke
      ..strokeWidth = 0.1;
    c.drawPath(paths[d]!, p);
  }

  /// Updates dancers positions based on the passage of realtime.
  /// Called at the start of onDraw().
  void _updateDancers() {
    //  Move dancers
    var delta = model.beater.beat - _prevbeat;
    var incs = delta.abs().ceil();
    for (var j = 1; j <= incs; j++)
      model.dancers.forEach((d) {
        d.animate(_prevbeat + j * delta / incs);
      });
    model.dancers.forEach((d) {
      d.animate(model.beater.beat);
    });
    _prevbeat = model.beater.beat;


    //  Compute handholds
    var hhlist = <Handhold>[];
    model.dancers.forEach((d0) {
      d0.rightDancer = null;
      d0.leftDancer = null;
      d0.rightHandVisibility = false;
      d0.leftHandVisibility = false;
    });
    for (var i1 = 0; i1 < model.dancers.length - 1; i1++) {
      var d1 = model.dancers[i1];
      if (!d1.isPhantom || model.showPhantoms) {
        for (var i2 = i1 + 1; i2 < model.dancers.length; i2++) {
          var d2 = model.dancers[i2];
          if (!d2.isPhantom || model.showPhantoms) {
            var hh = Handhold.create(d1, d2, model.geometryType);
            if (hh != null)
              hhlist.add(hh);
          }
        }
      }
    }
    //  Sort the list to put the best scores first
    hhlist.sort((a, b) => a.score.compareTo(b.score));
    //  Apply the handholds in order from best to worst
    //  so that if a dancer has a choice it gets the best handhold
    hhlist.where((it) => !_dancerInHandhold(it)).forEach((hh) {
      //  Check that the hands aren't already used
      var incenter = model.geometryType == Geometry.HEXAGON && hh.inCenter;
      if (incenter ||
          (hh.hold1 == Hands.RIGHTHAND && hh.dancer1.rightDancer == null ||
              hh.hold1 == Hands.LEFTHAND && hh.dancer1.leftDancer == null) &&
              (hh.hold2 == Hands.RIGHTHAND && hh.dancer2.rightDancer == null ||
                  hh.hold2 == Hands.LEFTHAND &&
                      hh.dancer2.leftDancer == null)) {
        //      	Make the handhold visible
        //  Scale should be 1 if distance is 2
        //  float scale = hh.distance/2f;
        if (hh.hold1 == Hands.RIGHTHAND || hh.hold1 == Hands.GRIPRIGHT) {
          hh.dancer1.rightHandVisibility = true;
          hh.dancer1.rightHandNewVisibility = true;
        }
        if (hh.hold1 == Hands.LEFTHAND || hh.hold1 == Hands.GRIPLEFT) {
          hh.dancer1.leftHandVisibility = true;
          hh.dancer1.leftHandNewVisibility = true;
        }
        if (hh.hold2 == Hands.RIGHTHAND || hh.hold2 == Hands.GRIPRIGHT) {
          hh.dancer2.rightHandVisibility = true;
          hh.dancer2.rightHandNewVisibility = true;
        }
        if (hh.hold2 == Hands.LEFTHAND || hh.hold2 == Hands.GRIPLEFT) {
          hh.dancer2.leftHandVisibility = true;
          hh.dancer2.leftHandNewVisibility = true;
        }

        if (!incenter) {
          if (hh.hold1 == Hands.RIGHTHAND) {
            hh.dancer1.rightDancer = hh.dancer2;
            if ((hh.dancer1.hands & Hands.GRIPRIGHT) == Hands.GRIPRIGHT)
              hh.dancer1.rightGrip = hh.dancer2;
          } else {
            hh.dancer1.leftDancer = hh.dancer2;
            if ((hh.dancer1.hands & Hands.GRIPLEFT) == Hands.GRIPLEFT)
              hh.dancer1.leftGrip = hh.dancer2;
          }
          if (hh.hold2 == Hands.RIGHTHAND) {
            hh.dancer2.rightDancer = hh.dancer1;
            if ((hh.dancer2.hands & Hands.GRIPRIGHT) == Hands.GRIPRIGHT)
              hh.dancer2.rightGrip = hh.dancer1;
          } else {
            hh.dancer2.leftDancer = hh.dancer1;
            if ((hh.dancer2.hands & Hands.GRIPLEFT) == Hands.GRIPLEFT)
              hh.dancer2.leftGrip = hh.dancer1;
          }
        }
      }
    });

    //  Clear handholds no longer visible
    model.dancers.forEach ( (d) {
      if (d.leftHandVisibility && !d.leftHandNewVisibility)
        d.leftHandVisibility = false;
      if (d.rightHandVisibility && !d.rightHandNewVisibility)
        d.rightHandVisibility = false;
    });

  }


  @override
  void paint(fm.Canvas ctx, fm.Size size) {
    _updateDancers();
    ctx.save();
    ctx.drawRect(fm.Rect.fromLTWH(0,0,size.width,size.height),
        fm.Paint()..color = Color.FLOOR);
    _size = size.v;
    var range = min(size.width,size.height);
    //  Scale coordinate system to dancer's size
    ctx.translate(size.width/2, size.height/2);
    ctx.clipRect(fm.Rect.fromCenter(center:fm.Offset(0,0),width: size.width, height: size.height));
    var s = range / 13.0;
    //  Flip and rotate
    ctx.scale(s,-s);
    ctx.rotate(pi/2);
    //  Draw grid if on
    if (model.gridVisibility) {
      drawGrid(ctx,model.geometryType);
    }
    if (model.axesVisibility!='None') {
      drawAxes(ctx, model.geometryType, short:(model.axesVisibility=='Short'));
    }
    //  Always show bigon center mark
    if (model.geometryType == Geometry.BIGON) {
      var p = fm.Paint()
          ..strokeWidth = 0.03;
      ctx.drawLine(fm.Offset(0,-0.5), fm.Offset(0,0.5), p);
      ctx.drawLine(fm.Offset(-0.5,0), fm.Offset(0.5,0), p);
    }

    //  Draw paths if requested
    model.dancers.forEach((d) {
      if (!d.hidden && (model.showPaths || d.showPath))
        drawPath(ctx,d);
    });

    //  Draw handholds
    var hline = fm.Paint()
      ..color = Color.ORANGE
      ..strokeWidth = 0.05;
    model.dancers.forEach( (d) {
      var loc = d.location;
      if (d.rightHandVisibility) {
        if (d.rightDancer == null) {  // hexagon center
          ctx.drawLine(fm.Offset(loc.x,loc.y), fm.Offset(0,0), hline);
          ctx.drawCircle(fm.Offset(0,0), 0.125, hline);
        } else if (d.rightDancer! < d) {
          var loc2 = d.rightDancer!.location;
          ctx.drawLine(fm.Offset(loc.x,loc.y), fm.Offset(loc2.x,loc2.y), hline);
          ctx.drawCircle(
            fm.Offset((loc.x+loc2.x)/2, (loc.y+loc2.y)/2),
              0.125, hline);
        }
      }
      if (d.leftHandVisibility) {
        if (d.leftDancer == null) { // hexagon center
          ctx.drawLine(fm.Offset(loc.x, loc.y), fm.Offset(0, 0), hline);
          ctx.drawCircle(fm.Offset(0, 0), 0.125, hline);
        } else if (d.leftDancer! < d) {
          var loc2 = d.leftDancer!.location;
          ctx.drawLine(fm.Offset(loc.x,loc.y), fm.Offset(loc2.x,loc2.y), hline);
          ctx.drawCircle(
              fm.Offset((loc.x+loc2.x)/2, (loc.y+loc2.y)/2),
              0.125, hline);
        }
      }
    });

    //  Draw dancers
    model.dancers.where((d) => !d.hidden).forEach((d) {
      drawDancer(ctx,d);
    });
    ctx.restore();
  }

  //  Draw grids
  void drawGrid(fm.Canvas ctx, int geometryType) {
    var p = fm.Paint()
      ..color = Color.LIGHTGREY
      ..style = fm.PaintingStyle.stroke
      ..strokeWidth = 0;

    switch (geometryType) {
      case Geometry.BIGON :
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
        break;

      case Geometry.SQUARE :
      case Geometry.HASHTAG :
      case Geometry.ASYMMETRIC :
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
        break;

      case Geometry.HEXAGON :
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
        break;
    }
  }

  //  Draw axes
  void drawAxes(fm.Canvas ctx, int geometryType, {bool short = false}) {
    var p = fm.Paint()
      ..color = Color.LIGHTGREY
      ..style = fm.PaintingStyle.stroke
      ..strokeWidth = 0;

    switch (geometryType) {
      case Geometry.BIGON :
        final length = short ? 2.0 : 7.5;
        p.color = Color.RED;
        ctx.drawLine(fm.Offset(0.0,0.0), fm.Offset(-length,0.0), p);
        p.color = Color.BLUE;
        ctx.drawLine(fm.Offset(0.0,0.0), fm.Offset(length,0.0), p);
        break;

      case Geometry.SQUARE :
      case Geometry.HASHTAG :
      case Geometry.ASYMMETRIC :
        final length = short ? 2.0 : 7.5;
        p.color = Color.RED;
        ctx.drawLine(fm.Offset(-length,0.0), fm.Offset(length,0.0), p);
        p.color = Color.BLUE;
        ctx.drawLine(fm.Offset(0.0,-length), fm.Offset(0.0,length), p);
        break;

      case Geometry.HEXAGON :
        final length = short ? 2.0 : 7.5;
        final tanlength = length * tan(pi/6);
        p.color = Color.RED;
        ctx.drawLine(fm.Offset(0.0,0.0), fm.Offset(-length,0.0), p);
        ctx.drawLine(fm.Offset(0.0,0.0), fm.Offset(tanlength,length), p);
        ctx.drawLine(fm.Offset(0.0,0.0), fm.Offset(tanlength,-length), p);
        p.color = Color.BLUE;
        ctx.drawLine(fm.Offset(0.0,0.0), fm.Offset(length,0.0), p);
        ctx.drawLine(fm.Offset(0.0,0.0), fm.Offset(-tanlength,length), p);
        ctx.drawLine(fm.Offset(0.0,0.0), fm.Offset(-tanlength,-length), p);
        break;
    }
  }

  //  Draw the Dancer at its current position
  //  The Canvas is already transformed to the Dancer's position and orientation
  //  and scaled to the Dancer's size
  void drawDancer(fm.Canvas c, Dancer d) {
    var dc = d.showColor ? d.drawColor : Color.GRAY;
    var fc = d.showColor ? d.fillColor : Color.LIGHTGREY;
    c.save();
    //ctx.transform(d.tx);  not available on Flutter
    c.translate(d.location.x,d.location.y);
    c.rotate(d.tx.angle);
    //  Draw the head
    var p = fm.Paint()..color = dc;
    c.drawCircle(fm.Offset(0.5,0.0), 0.33, p);
    //  Draw the body
    final reallyShowNumbers =
        d.showNumber != Dancer.NUMBERS_OFF &&
            d.gender != Gender.PHANTOM &&
            d.fillColor != Color.GRAY;
    p.color = reallyShowNumbers ? fc.veryBright() : fc;
    var g = d.showShape ? d.gender : Gender.PHANTOM;
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
      var angle = atan2(d.tx.m12,d.tx.m22);
      var txtext = Matrix.getRotation(-angle + pi/2);
      c.translate(txtext.location.x,txtext.location.y);
      c.rotate(txtext.angle);
      c.scale(-0.1,0.1);
      var t = '';
      if (d.showNumber == Dancer.NUMBERS_DANCERS) t = d.number;
      if (d.showNumber == Dancer.NUMBERS_COUPLES) t = d.numberCouple;
      if (d.showNumber == Dancer.NUMBERS_NAMES) t = d.name;
      var _span = TextSpan(text: t,
          style:GoogleFonts.roboto(fontSize: NUMBER_HEIGHT, color: fm.Colors.black));
      var _tp = TextPainter(text: _span,
          textAlign: TextAlign.center,
          textDirection: fm.TextDirection.ltr)..layout();

      _tp.paint(c, fm.Offset(-_tp.width/2,-_tp.height/2));
    }
    c.restore();
  }


}