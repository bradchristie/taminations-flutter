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

import 'common.dart';
import 'dance_model.dart';

class DancePainter extends fm.CustomPainter  {

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

  DancePainter(this.model) : super(repaint:model.beater) {
    _prevbeat = model.beater.beat;
  }

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




  /// Updates dancers positions based on the passage of realtime.
  /// Called at the start of onDraw().
  void _updateDancers() {
    //  Move dancers
    //  For big jumps, move incrementally -
    //  this helps hexagon and bigon compute the right location
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
            var hh = Handhold.create(d1, d2, model.geometry);
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
      var incenter = model.geometry == Geometry.HEXAGON && hh.inCenter;
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
      Geometry(model.geometry,0).drawGrid(ctx);
    }
    if (model.axesVisibility!='None') {
      Geometry(model.geometry,0).drawAxes(ctx,short:(model.axesVisibility=='Short'));
    }
    //  Always show bigon center mark
    if (model.geometry == Geometry.BIGON) {
      var p = fm.Paint()
          ..strokeWidth = 0.03;
      ctx.drawLine(fm.Offset(0,-0.5), fm.Offset(0,0.5), p);
      ctx.drawLine(fm.Offset(-0.5,0), fm.Offset(0.5,0), p);
    }

    //  Draw paths if requested
    model.dancers.forEach((d) {
      if (!d.hidden && (model.showPaths || d.showPath))
        d.drawPath(ctx);
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
      d.draw(ctx);
    });
    ctx.restore();
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

}