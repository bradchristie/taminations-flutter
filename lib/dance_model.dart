/*
 * *     Copyright 2024 Brad Christie
 *
 *     This file is part of Taminations.
 *
 *     Taminations is free software: you can redistribute it and/or modify
 *     it under the terms of the GNU Affero General Public License as published
 *     by the Free Software Foundation, either version 3 of the License, or
 *     (at your option) any later version.
 *
 *     Taminations is distributed in the hope that it will be useful,
 *     but WITHOUT ANY WARRANTY; without even the implied warranty of
 *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *     GNU Affero General Public License for more details.
 *
 *     You should have received a copy of the GNU Affero General Public License
 *     along with Taminations.  If not, see <http://www.gnu.org/licenses/>.
 */

import 'dart:ui' as ui;

import 'package:flutter/material.dart' as fm;
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart' as pp;
import 'package:taminations/beat_notifier.dart';
import 'package:super_clipboard/super_clipboard.dart';

import 'animated_call.dart';
import 'common_flutter.dart';
import 'practice_dancer.dart';

class DanceModel extends fm.ChangeNotifier {

  static const SLOWSPEED = 1500.0;
  static const MODERATESPEED = 1000.0;
  static const NORMALSPEED = 500.0;
  static const FASTSPEED = 200.0;
  static const LUDICROUSSPEED = 10.0;

  AnimatedCall? _call;
  BeatNotifier beater;
  var _interactiveDancer = -1;
  var _interactiveRandom = true;
  var hasParts = false;
  var hasCalls = false;
  String partstr = '';
  //  currentPart is 0 if not in animation, 1 to n otherwise
  var _currentPart = 0;
  var _prevbeat = 0.0;
  int get currentPart => _currentPart;
  var leadin = 0.0;
  var leadout = 0.0;
  var _beats = 0.0;
  double get beats => _beats;
  double get totalBeats => leadin + _beats;
  double get movingBeats => _beats - leadout;
  double get practiceScore => _practiceScore;
  List<Dancer> dancers = [];
  PracticeDancer? practiceDancer;
  var _looping = false;
  var _speed = NORMALSPEED;
  var _showGrid = false;
  var _showAxes = 'None';
  var _showPaths = false;
  var _showNumbers = Dancer.NUMBERS_OFF;
  var _showPhantoms = false;
  var _geometryType = Geometry.SQUARE;
  final _asymmetric = false;
  var _randomColors = false;
  var _practiceScore = 0.0;
  String get animationNote => (_call?.taminator ?? '').replaceAll(r'\s+'.r, ' ');
  String get title => _call?.title ?? '';
  final fm.GlobalKey keyForImageCopy = fm.GlobalKey();

  //  Except for the phantoms, these are the standard colors
  //  used for teaching callers
  List<Color> get _dancerColor =>
      (_geometryType == Geometry.HEXAGON) ?
      [Color.LIGHTGRAY, Color.RED, Color.GREEN, Color.MAGENTA,
  Color.BLUE, Color.YELLOW, Color.CYAN,
  Color.LIGHTGRAY, Color.LIGHTGRAY, Color.LIGHTGRAY, Color.LIGHTGRAY]
      : [Color.LIGHTGRAY, Color.RED, Color.GREEN, Color.BLUE, Color.YELLOW,
  Color.LIGHTGRAY, Color.LIGHTGRAY, Color.LIGHTGRAY, Color.LIGHTGRAY];

  final _randomColorList = [
    Color.BLACK,
    Color.BLUE,
    Color.CYAN,
    //  Color.GRAY,  reserved for phantoms only
    Color.GREEN,
    Color.MAGENTA,
    Color.ORANGE,
    Color.RED,
    Color.WHITE,
    Color.YELLOW
  ];

  DanceModel([fm.BuildContext? context])
      : beater = context == null ? BeatNotifier() : pp.Provider.of<BeatNotifier>(context,listen: false) {
    beater.addListener(_updateCurrentPart);
  }

  @override
  void dispose() {
    beater.removeListener(_updateCurrentPart);
    super.dispose();
  }

  //  Copy the animation screen to the clipboard as a png image
  Future<String> copyImageToClipboard() async {
    //  Get the image with some magical system calls
    var boundary = keyForImageCopy.currentContext!.findRenderObject()!
        as RenderRepaintBoundary;
    var image = await boundary.toImage(pixelRatio:2.0);
    var byteData = await image.toByteData(format: ui.ImageByteFormat.png);
    var imageBytes = byteData?.buffer.asUint8List();
    //  Send the image to the system clipboard
    if (imageBytes != null) {
      final clipboard = SystemClipboard.instance;
      if (clipboard != null) {
        final item = DataWriterItem();
        item.add(Formats.png(imageBytes));
        await clipboard.write([item]);
        return 'Image copied to Clipboard';
      }
    }
    return 'Error copying image';
  }

  bool get gridVisibility => _showGrid;
  set gridVisibility(bool show) {
    if (show != _showGrid) {
      _showGrid = show;
    }
  }

  String get axesVisibility => _showAxes;
  set axesVisibility(String show) {
    if (show != _showAxes) {
      _showAxes = show;
    }
  }

  int get showNumbers => _showNumbers;
  void setNumbers(String value) {
    if (_interactiveDancer >= 0) {
      value = 'None';
      _showNumbers = Dancer.NUMBERS_OFF;
    }
    else if (value == 'None')
      _showNumbers = Dancer.NUMBERS_OFF;
    else if (value == '1-8' || value == 'Dancer Numbers')
      _showNumbers = Dancer.NUMBERS_DANCERS;
    else if (value == '1-4' || value == 'Couple Numbers')
      _showNumbers = Dancer.NUMBERS_COUPLES;
    else if (value == 'Names') {
      _showNumbers = Dancer.NUMBERS_NAMES;
    }
    for (var d in dancers) {
      if (d.showNumber != _showNumbers) {
        d.showNumber = _showNumbers;
      }
    }
  }

  void setColors(bool isOn) {
    for (final d in dancers) {
      if (d.showColor != isOn)
        d.showColor = isOn;
    }
  }

  void setRandomColors(bool value) {
    if (value != _randomColors) {
      _randomColors = value;
      _randomColorList.shuffle();
    }
    if (value) {
      for (var i=0; i<dancers.length; i++) {
        final d = dancers[i];
        d.showColor = true;
        final j = dancers.length > 8 ? d.numberCouple.i-1 : i;
        d.fillColor = d.gender == Gender.PHANTOM
            ? Color.LIGHTGRAY
            : _randomColorList[j];
      }
    }
  }

  void setDancerColor(int dancerNum, Color c, {bool byCouple=false}) {
    if (!_randomColors) {
      dancers.where((d) => (int.tryParse(byCouple ? d.numberCouple : d.number) ?? -1) == dancerNum)
          .forEach((d) {
        if (d.fillColor != c) {
          d.fillColor = c;
        }
      });
    }
  }

  void setShapes(bool value) {
    for (final d in dancers)
      d.showShape = value;
  }

  void setSpeed(String speed) {
    final newSpeed = {
      'Slow':SLOWSPEED,
      'Moderate':MODERATESPEED,
      'Fast':FASTSPEED,
      'Ludicrous':LUDICROUSSPEED
    }[speed] ?? NORMALSPEED;
    _speed = newSpeed;
    beater.speed = _speed;
  }

  bool get showPaths => _showPaths;
  set showPaths(bool show) {
    if (_showPaths !=show) {
      _showPaths = show;
    }
  }

  void togglePath(Dancer d) {
    d.showPath = !d.showPath;
  }

  bool get looping => _looping;
  set looping(bool loop) {
    _looping = loop;
    beater.loop = loop;
  }

  bool get showPhantoms => _showPhantoms;
  set showPhantoms(bool show) {
    if (_showPhantoms != show) {
      _showPhantoms = show;
      for (final d in dancers) {
        d.hidden = d.isPhantom && !show;
      }
    }
  }

  int get geometryType => _geometryType;
  set geometry(int g) {
    if (!_asymmetric && g != _geometryType) {
      _geometryType = g;
      later(() {
        _resetAnimatedCall();
      });
    }
  }
  bool get asymmetric => _asymmetric;

  void doPlay() {
    if (!beater.isRunning) {
      _practiceScore = 0.0;
      beater.start();
      later(() {
        notifyListeners();
      });
    }
  }

  void doPause() {
    beater.stop();
    later(() {
      notifyListeners();
    });
  }

  void goToStart() {
    beater.beat = -leadin;
  }

  void goToBeat(double b) {
    beater.beat = b - leadin;
  }

  void goToEnd() {
    beater.beat = _beats;
  }

  List<double> _partsValues() {
    if (partstr.isBlank)
      return [-leadin,0.0];
    final values = [-leadin,0.0];
    var b = 0.0;
    final t = partstr.split(';');
    for (var i=0; i<t.length; i++) {
      b += t[i].d;
      values.add(b);
    }
    return values;
  }


  void goToNextPart() {
    beater.beat = (_partsValues().where((part) => part > beater.beat).firstOrNull ?? totalBeats) + 0.01;
  }

  void goToPreviousPart() {
    beater.beat = _partsValues().where((part) => part < beater.beat).lastOrNull ?? -leadin;
  }

  void stepForward() {
    beater.beat = min(beater.beat+0.1,beats);
  }

  void stepBack() {
    beater.beat = max(beater.beat-0.1,-leadin);
  }

  bool _isInteractiveDancerOnTrack() {
    //  Get where the dancer should be
    var computetx = practiceDancer!.computeMatrix(beater.beat);
    //  Get computed and actual location vectors
    var ivu = practiceDancer!.tx.location;
    var ivc = computetx.location;

    //  Check dancer's location and facing direction
    var au = practiceDancer!.tx.angle;
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

  //  This is called continuously during the animation
  //  by the beater
  void _updateCurrentPart() {
    final previousPart = _currentPart;
    if (beater.beat < 0 || beater.beat > beats-leadout || partstr.isBlank)
      _currentPart = 0;
    else {
      _currentPart = _partsValues().lastIndexWhere((b) => b < beater.beat);
    }
    //  Notify if part changes to update definition highlight
    //  Notify if at end to update play/pause button
    if (currentPart != previousPart || beater.isFinished)
      notifyListeners();

    //  Update interactive dancer score
    if (practiceDancer != null && beater.beat > 0.0 && beater.beat < beats-leadout) {
      practiceDancer!.onTrack = _isInteractiveDancerOnTrack();
      if (practiceDancer!.onTrack)
        _practiceScore += (beater.beat - max(_prevbeat,0.0)) * 10.0;
    }
    //  TODO notify if significant change in score
    //  TODO so running score can be displayed
    _prevbeat = beater.beat;
  }

  void setAnimatedCall(AnimatedCall call, {int geometryType=Geometry.SQUARE,
    int practiceGender = -1, bool practiceIsRandom = true}) {
    _call = call;
    _geometryType = call.formation.asymmetric ? Geometry.ASYMMETRIC : geometryType;
    _interactiveDancer = practiceGender;
    _interactiveRandom = practiceIsRandom;
    _resetAnimatedCall();
    partstr = call.parts + call.fractions;
    hasParts = call.parts.isNotBlank;
    later(() {
      notifyListeners();
    });
  }

  void _resetAnimatedCall() {
    var mycall = _call;
    if (mycall != null) {
      var geometry = Geometry(_geometryType);
        var numbers = mycall.numbers;
        var couples = mycall.coupleNumbers;
        if (_geometryType == Geometry.HEXAGON) {
          numbers = ['A', 'E', 'I',
            'B', 'F', 'J',
            'C', 'G', 'K',
            'D', 'H', 'L',
            ' ', ' ', ' ', ' ', ' ', ' ',
            ' ', ' ', ' ', ' ', ' ', ' '];
          couples = ['1', '3', '5', '1', '3', '5',
            '2', '4', '6', '2', '4', '6',
            ' ', ' ', ' ', ' ', ' ', ' ',
            ' ', ' ', ' ', ' ', ' ', ' '];
        } else if (_geometryType == Geometry.HASHTAG) {
          numbers = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ                        '.split('');
          couples = ['1', '3', '1', '3',
            '1', '3', '1', '3',
            '1', '3', '1', '3',
            '1', '3', '1', '3',
            '1', '3', '1', '3',
            '1', '3', '1', '3',
            ' ', ' ', ' ', ' ', ' ', ' ',' ',' ',
            ' ', ' ', ' ', ' ', ' ', ' ',' ',' '];
        } else if (_geometryType == Geometry.BIGON) {
          numbers = ['1', '2', '3', '4', '5', '6', '7', '8'];
          couples = [ '1', '2', '3', '4', '5', '6', '7', '8'];
        }

        var sym = mycall.formation.asymmetric ? 1 : _geometryType;
        dancers = [for (var ent in mycall.formation.dancers
            .asMap()
            .entries)
          for (var g = 0; g < sym; g++)
            Dancer(
                numbers[ent.key * sym + g],
                couples[ent.key * sym + g],
                ent.value.gender,
                ent.value.gender == Gender.PHANTOM
                  ? Color.GRAY
                  : _dancerColor[couples[ent.key * sym + g].i],
                // real color will be set later
                geometry.startMatrix(ent.value.starttx, g),
                geometry.clone(),
                mycall.paths[ent.key].movelist)
        ];

        //  For practice, replace one of the dancers with an interactive dancer
        if (_interactiveDancer > 0) {
          var p = 0;
          while (dancers[p].gender != _interactiveDancer)
            p += 1;
          if (_interactiveRandom) {
            do {
              p = Random().nextInt(dancers.length);
            } while (dancers[p].gender != _interactiveDancer);
          }
          practiceDancer = PracticeDancer(
              dancers[p].number, dancers[p].numberCouple,
              dancers[p].gender, dancers[p].fillColor,
              dancers[p].starttx, dancers[p].moves);
          dancers[p] = practiceDancer!;
          //  Rotate formation so practice dancer is facing forward
          practiceDancer!.animateComputed(0.0);
          var iangle = -practiceDancer!.angleFacing;
          var iangleTx = Matrix.getRotation(iangle);
          for (var d in dancers)
            d.starttx = iangleTx * d.starttx;
        }  // practice dancer


      leadin = 2.0;
      leadout = 2.0;
      _beats = 0.0;
      for (var d in dancers) {
        _beats = max(_beats, d.beats + leadout);
        d.showNumber = _showNumbers;
        d.hidden = d.isPhantom && !_showPhantoms;
      }
      beater.setTimes(-leadin, _beats);
      later(() {
        notifyListeners();
      });
    }
  }

  void recalculate() {
    _beats = 0.0;
    for (var d in dancers) {
      d.computePath();
      _beats = max(_beats, d.beats + leadout);
    }
    beater.setTimes(-leadin, _beats);
  }



}