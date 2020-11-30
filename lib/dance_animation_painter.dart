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

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:taminations/practice_dancer.dart';
import 'package:xml/xml.dart';

import 'dancer.dart';
import 'extensions.dart';
import 'geometry.dart';
import 'math/matrix.dart';
import 'color.dart';
import 'math/vector.dart';
import 'tam_utils.dart';
import 'handhold.dart';
import 'math/movement.dart';

class DanceAnimationPainter extends ChangeNotifier implements CustomPainter  {

  static const SLOWSPEED = 1500.0;
  static const MODERATESPEED = 1000.0;
  static const NORMALSPEED = 500.0;
  static const FASTSPEED = 200.0;

  var _looping = false;
  var _speed = NORMALSPEED;
  var _showGrid = false;
  var _showPaths = false;
  var _showNumbers = Dancer.NUMBERS_OFF;
  var _geometry = Geometry.SQUARE;
  //  randomColors  TODO
  XmlElement _tam;
  List<Dancer> dancers = [];
  var _interactiveDancer = -1;
  var _interactiveRandom = true;
  PracticeDancer practiceDancer;
  Vector _size;
  var leadin = 2.0;
  var leadout = 2.0;
  var _beats = 0.0;
  double get beats => _beats;  //  Includes leadout but not leadin
  double get movingBeats => _beats - leadout;
  double get totalBeats => leadin + _beats;
  double get practiceScore => _practiceScore;
  var beat = 0.0;
  var _showPhantoms = false;
  var isRunning = false;
  DateTime _lastTime = DateTime(2000);
  var _practiceScore = 0.0;
  var _prevbeat = -2.0;
  var hasParts = false;
  bool isFinished = false;
  String partstr;
  String get animationNote =>
      _tam?.childrenNamed("taminator")?.firstOrNull
      ?.text?.trim()?.replaceAll(r"\s+".r, " ") ?? "";
  //AnimationController controller;
  Ticker _ticker;
  String get title => _tam?.getAttribute("title")
      ?.replaceAll(" \\(.*?\\) ".r, " ") ?? "";

  //  Except for the phantoms, these are the standard colors
  //  used for teaching callers
  List<Color> get _dancerColor =>
      (_geometry == Geometry.HEXAGON) ?
          [Color.LIGHTGRAY, Color.RED, Color.GREEN, Color.MAGENTA,
          Color.BLUE, Color.YELLOW, Color.CYAN,
          Color.LIGHTGRAY, Color.LIGHTGRAY, Color.LIGHTGRAY, Color.LIGHTGRAY]
      : [Color.LIGHTGRAY, Color.RED, Color.GREEN, Color.BLUE, Color.YELLOW,
        Color.LIGHTGRAY, Color.LIGHTGRAY, Color.LIGHTGRAY, Color.LIGHTGRAY];

  DanceAnimationPainter()  {
    dancers = [ ];
    _ticker = Ticker((_) { notifyListeners(); });
    addListener(() { _onDraw(); });
  }

  void setGridVisibility(bool show) {
    _showGrid = show;

  }

  void setNumbers(String value) {
    if (_interactiveDancer >= 0) value = "None";
    _showNumbers = Dancer.NUMBERS_OFF;
    if (value == "1-8") _showNumbers = Dancer.NUMBERS_DANCERS;
    if (value == "1-4") _showNumbers = Dancer.NUMBERS_COUPLES;
    dancers.forEach( (d) => d.showNumber = _showNumbers );
  }

  void setDancerColor(int dancerNum, Color c) {
    dancers.where((d) => (int.tryParse(d.number) ?? -1) == dancerNum).forEach((d) {
      d.fillColor = c;
    });
  }

  void setSpeed(String speed) {
    switch (speed) {
      case "Slow" : _speed = SLOWSPEED; break;
      case "Moderate" : _speed = MODERATESPEED; break;
      case "Fast" : _speed = FASTSPEED; break;
      default : _speed = NORMALSPEED; break;
    }
  }

  void setPaths(bool show) {
    _showPaths = show;
  }

  void togglePath(Dancer d) {
    d.showPath = !d.showPath;
    print("Dancer $d showPath ${d.showPath}");
    notifyListeners();
  }

  void setLoop(bool loop) {
    _looping = loop;
  }

  void setPhantoms(bool show) {
    _showPhantoms = show;
    dancers.forEach((d) {
      d.hidden = d.isPhantom && !show;
    });
  }

  void setGeometry(int g) {
    if (g != _geometry) {
      _geometry = g;
      _resetAnimation();
    }
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
  Dancer dancerAt(Vector p) =>
      dancers.firstWhere((d) =>  (d.location - p).length < 0.5, orElse:()=>null);

  //  Check that there isn't another dancer in the middle of
  //  a computed handhold.  Can happen when dancers are in
  //  tight formations like tidal waves.
  bool _dancerInHandhold(Handhold hh) {
    var hhloc = (hh.dancer1.location + hh.dancer2.location).scale(0.5,0.5);
    return dancers.any((d) =>
    d != hh.dancer1 && d != hh.dancer2 &&
        (d.location - hhloc).length < 0.5 );
  }

  void doPlay() {
    if (!isRunning) {
      _lastTime = DateTime.now();
      if (beat > _beats)
        beat = -leadin;
      isRunning = true;
      _practiceScore = 0.0;
      _ticker.start();
    }
  }

  void doPause() {
    isRunning = false;
    _ticker.stop();
  }

  void goToStart() {
    beat = -leadin;
    notifyListeners();
  }

  void goToEnd() {
    beat = beats;
    notifyListeners();
  }

  void stepForward() {
    beat = min(beat+0.1,beats);
    notifyListeners();
  }

  void stepBack() {
    beat = max(beat-0.1,-leadin);
    notifyListeners();
  }

  bool _isInteractiveDancerOnTrack() {
    //  Get where the dancer should be
    var computetx = practiceDancer.computeMatrix(beat);
    //  Get computed and actual location vectors
    var ivu = practiceDancer.tx.location;
    var ivc = computetx.location;

    //  Check dancer's location and facing direction
    var au = practiceDancer.tx.angle;
    var ac = computetx.angle;
    //  Cannot be way off correct spot
    if ((ivu-ivc).length >= 2.0)
      return false;
    //  Cannot be facing the wrong way
    if (au.angleDiff(ac).abs() > pi/4)
      return false;
    //  Must be in correct relation to other dancers
    if (dancers.where((d) => d != practiceDancer).any((d) {
      var dv = d.tx.location;
      //  Compare angle to computed vs actual
      var d2ivu = dv.vectorTo(ivu);
      var d2ivc = dv.vectorTo(ivc);
      var a = d2ivu.angleDiff(d2ivc);
      return a.abs() > pi/4;
    }))
      return false;
    return true;
  }

  void _onDraw() {
    if (_tam != null) {  // sanity check

      //  Update the animation time
      var now = DateTime.now();
      var diff = now.difference(_lastTime).inMilliseconds;
      if (isRunning)
        beat += diff / _speed;
      _lastTime = now;
    }

    //  Move the dancers
    updateDancers();

    //  Remember time, and check for reaching end of animation
    _prevbeat = beat;
    if (beat >= beats) {
      if (_looping && isRunning) {
        _prevbeat = -leadin;
        beat = -leadin;
      } else if (isRunning) {
        isRunning = false;
        isFinished = true;
      } else
        //  Once everyone has noticed that the animation is over
        //  we can stop the ticker (which bangs on the CPU).
        _ticker.stop();
    }

  }

  /// Updates dancers positions based on the passage of realtime.
  /// Called at the start of onDraw().
  void updateDancers() {
    //  Move dancers
    //  For big jumps, move incrementally -
    //  this helps hexagon and bigon compute the right location
    var delta = beat - _prevbeat;
    var incs = delta.abs().ceil();
    for (var j = 1; j <= incs; j++)
      dancers.forEach((d) {
        d.animate(_prevbeat + j * delta / incs);
      });

    //  Compute handholds
    List<Handhold> hhlist = [];
    dancers.forEach((d0) {
      d0.rightDancer = null;
      d0.leftDancer = null;
      d0.rightHandVisibility = false;
      d0.leftHandVisibility = false;
    });
    for (var i1 = 0; i1 < dancers.length - 1; i1++) {
      var d1 = dancers[i1];
      if (!d1.isPhantom || _showPhantoms) {
        for (var i2 = i1 + 1; i2 < dancers.length; i2++) {
          var d2 = dancers[i2];
          if (!d2.isPhantom || _showPhantoms) {
            var hh = Handhold.create(d1, d2, _geometry);
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
      var incenter = _geometry == Geometry.HEXAGON && hh.inCenter;
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
    dancers.forEach ( (d) {
      if (d.leftHandVisibility && !d.leftHandNewVisibility)
        d.leftHandVisibility = false;
      if (d.rightHandVisibility && !d.rightHandNewVisibility)
        d.rightHandVisibility = false;
    });

    //  Update interactive dancer score
    if (practiceDancer != null && beat > 0.0 && beat < beats-leadout) {
      practiceDancer.onTrack = _isInteractiveDancerOnTrack();
      if (practiceDancer.onTrack)
        _practiceScore += (beat - max(_prevbeat,0.0)) * 10.0;
    }

  }


  @override
  void paint(Canvas ctx, Size size) {

    _onDraw();

    ctx.drawRect(Rect.fromLTWH(0,0,size.width,size.height),
        Paint()..color = Color.FLOOR);
    _size = size.v;
    var range = min(size.width,size.height);
    //  For interactive leadin, show countdown  TODO
    //  Scale coordinate system to dancer's size
    ctx.translate(size.width/2, size.height/2);
    ctx.clipRect(Rect.fromCenter(center:Offset(0,0),width: size.width, height: size.height));
    var s = range / 13.0;
    //  Flip and rotate
    ctx.scale(s,-s);
    ctx.rotate(pi/2);
    //  Draw grid if on
    if (_showGrid) {
      Geometry(_geometry,0).drawGrid(ctx,lineWidth:1.0/s);
    }
    //  Always show bigon center mark
    if (_geometry == Geometry.BIGON) {
      var p = Paint()
          ..strokeWidth = 0.03;
      ctx.drawLine(Offset(0,-0.5), Offset(0,0.5), p);
      ctx.drawLine(Offset(-0.5,0), Offset(0.5,0), p);
    }

    //  Draw paths if requested
    dancers.forEach((d) {
      if (!d.hidden && (_showPaths || d.showPath))
        d.drawPath(ctx);
    });

    //  Draw handholds
    var hline = Paint()
    ..color = Color.ORANGE
    ..strokeWidth = 0.05;
    dancers.forEach( (d) {
      var loc = d.location;
      if (d.rightHandVisibility) {
        if (d.rightDancer == null) {  // hexagon center
          ctx.drawLine(Offset(loc.x,loc.y), Offset(0,0), hline);
          ctx.drawCircle(Offset(0,0), 0.125, hline);
        } else if (d.rightDancer < d) {
          var loc2 = d.rightDancer.location;
          ctx.drawLine(Offset(loc.x,loc.y), Offset(loc2.x,loc2.y), hline);
          ctx.drawCircle(
            Offset((loc.x+loc2.x)/2, (loc.y+loc2.y)/2),
              0.125, hline);
        }
      }
      if (d.leftHandVisibility) {
        if (d.leftDancer == null) { // hexagon center
          ctx.drawLine(Offset(loc.x, loc.y), Offset(0, 0), hline);
          ctx.drawCircle(Offset(0, 0), 0.125, hline);
        } else if (d.leftDancer < d) {
          var loc2 = d.leftDancer.location;
          ctx.drawLine(Offset(loc.x,loc.y), Offset(loc2.x,loc2.y), hline);
          ctx.drawCircle(
              Offset((loc.x+loc2.x)/2, (loc.y+loc2.y)/2),
              0.125, hline);
        }
      }
    });

    //  Draw dancers
    dancers.where((d) => !d.hidden).forEach((d) {
      ctx.save();
      //ctx.transform(d.tx);  not available on Flutter
      ctx.translate(d.location.x,d.location.y);
      ctx.rotate(d.tx.angle);
      d.draw(ctx);
      ctx.restore();
    });
  }

  Future<void> setAnimation(XmlElement xtam,
      [int intdan = -1, bool intrand = true]) async {
    _tam = await TamUtils.tamXref(xtam);
    _interactiveDancer = intdan;
    _interactiveRandom = intrand;
    _resetAnimation();
    partstr = _tam("parts","") + _tam("fractions","");
    hasParts = _tam("parts") != null;
    notifyListeners();
  }

  void _resetAnimation() {
    if (_tam != null) {
      leadin = _interactiveDancer < 0 ? 2.0 : 3.0;
      leadout = _interactiveDancer < 0 ? 2.0 : 1.0;
      if (isRunning) {
        isRunning = false;
      }
      var tform = _tam.getElement("formation");
      var aform = _tam("formation");
      var formation = _tam;
      if (tform != null)
        formation = tform;
      if (aform != null)
        formation = TamUtils.getFormation(aform);
      var flist = formation.childrenNamed("dancer");
      dancers = [];

      //  Get numbers for dancers and couples
      //  This fetches any custom numbers that might be defined in
      //  the animation to match a Callerlab or Ceder Chest illustration
      var paths = _tam.childrenNamed("path");
      List<String> numbers = [];
      if (_geometry == Geometry.HEXAGON)
        numbers = ["A", "E", "I",
          "B", "F", "J",
          "C", "G", "K",
          "D", "H", "L",
          "U", "V", "W", "X", "Y", "Z"];
      else if (_geometry == Geometry.BIGON)
        numbers = ["1", "2", "3", "4", "5", "6", "7", "8"];
      else if (paths.length == 0)
        numbers = ["1", "5", "2", "6", "3", "7", "4", "8"];
      else
        numbers = TamUtils.getNumbers(_tam);
      List<String> couples = [];
      if (_geometry == Geometry.HEXAGON)
        couples = ["1", "3", "5", "1", "3", "5",
          "2", "4", "6", "2", "4", "6",
          "7", "8", "7", "8", "7", "8"];
      else if (_geometry == Geometry.BIGON)
        couples = [ "1", "2", "3", "4", "5", "6", "7", "8" ];
      else
        couples = TamUtils.getCouples(_tam);

      var geoms = Geometry.getGeometry(_geometry);

      //  Select a random dancer of the correct gender for the interactive dancer
      var icount = -1;
      var im = Matrix.getIdentity();
      if (_interactiveDancer > 0) {
        var glist = formation.childrenNamed("dancer")
            .where((d) => d("gender") == (_interactiveDancer==Gender.BOY ? "boy" : "girl")).toList();
        //  Select either the first or random dancer to be interactive
        icount = _interactiveRandom ? Random().nextInt(glist.length) : 0;
        //  Find the angle the interactive dancer faces at start
        //  We want to rotate the formation so that direction is up
        var iangle = glist[icount]("angle").d;
        im = Matrix.getRotation(-iangle.toRadians);
        //  Adjust icount for looping through geometry below
        icount = icount * geoms.length + 1;
      }

      //  Create the dancers and set their starting positions
      var dnum = 0;
      for (var i=0; i<flist.length; i++) {
        var fd = flist[i];
        var x = fd("x").d;
        var y = fd("y").d;
        var angle = fd("angle").d;
        var g = Gender.BOY;
        if (fd("gender") == "girl") g = Gender.GIRL;
        if (fd("gender") == "phantom") g = Gender.PHANTOM;
        var movelist = (paths.length > i) ? TamUtils.translatePath(paths[i]) : <Movement>[];
        //  Each dancer listed in the formation corresponds to
        //  one, two, or three real dancers depending on the geometry
        geoms.forEach((geom) {
          var m = im * Matrix.getTranslation(x,y) *
                  Matrix.getRotation(angle.toRadians);
          var nstr = (g == Gender.PHANTOM) ? " " : numbers[dnum];
          var cstr = (g == Gender.PHANTOM) ? " " : couples[dnum];
          var colorstr = (g == Gender.PHANTOM) ? " " : couples[dnum];
          var color = Color.LIGHTGREY;
          //  TODO random color
          if (g != Gender.PHANTOM)
            color = _dancerColor[colorstr.i];

          //  add one dancer
          //  practice dancer?
          if (g == _interactiveDancer  && --icount == 0) {
            practiceDancer = PracticeDancer(nstr,cstr,g,color,m,geom.clone(),movelist);
            dancers.add(practiceDancer);
          } else  // not the practice dancer
            dancers.add(Dancer(nstr,cstr,g,color,m,geom.clone(),movelist));
          if (g == Gender.PHANTOM && !_showPhantoms)
            dancers.last.hidden = true;
          _beats = max(_beats, dancers.last.beats + leadout);
          dnum += 1;
        });
      }  //  All dancers added
      for (var d in dancers)
        d.showNumber = _showNumbers;

      //  Initialize other instance variables
      isRunning = false;
      beat = -leadin;
      _prevbeat = -leadin;
      updateDancers();
      notifyListeners();
    }
  }

  void recalculate() {
    _beats = 0.0;
    for (var d in dancers) {
      d.computePath();
      d.animate(beat);  // current position clobbered by computePath
      _beats = max(_beats, d.beats + leadout);
    }
    notifyListeners();
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

  @override
  bool hitTest(Offset position) => null;
  @override
  get semanticsBuilder => null;

  @override
  bool shouldRebuildSemantics(covariant CustomPainter oldDelegate) => shouldRepaint(oldDelegate);

}