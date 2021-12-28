/*
 *     Copyright 2021 Brad Christie
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

import 'package:flutter/material.dart' as fm;
import 'package:provider/provider.dart' as pp;
import 'package:taminations/beat_notifier.dart';

import 'common.dart';
import 'practice_dancer.dart';

class DanceModel extends fm.ChangeNotifier {

  static const SLOWSPEED = 1500.0;
  static const MODERATESPEED = 1000.0;
  static const NORMALSPEED = 500.0;
  static const FASTSPEED = 200.0;

  XmlElement? _tam;
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
  var _showPaths = false;
  var _showNumbers = Dancer.NUMBERS_OFF;
  var _showPhantoms = false;
  var _geometry = Geometry.SQUARE;
  var _asymmetric = false;
  var _randomColors = false;
  var _practiceScore = 0.0;
  String get animationNote =>
      _tam?.childrenNamed('taminator').firstOrNull
          ?.text.trim().replaceAll(r'\s+'.r, ' ') ?? '';
  String get title => _tam?.getAttribute('title')
      ?.replaceAll(' \\(.*?\\) '.r, ' ') ?? '';

  //  Except for the phantoms, these are the standard colors
  //  used for teaching callers
  List<Color> get _dancerColor =>
      (_geometry == Geometry.HEXAGON) ?
      [Color.LIGHTGRAY, Color.RED, Color.GREEN, Color.MAGENTA,
  Color.BLUE, Color.YELLOW, Color.CYAN,
  Color.LIGHTGRAY, Color.LIGHTGRAY, Color.LIGHTGRAY, Color.LIGHTGRAY]
      : [Color.LIGHTGRAY, Color.RED, Color.GREEN, Color.BLUE, Color.YELLOW,
  Color.LIGHTGRAY, Color.LIGHTGRAY, Color.LIGHTGRAY, Color.LIGHTGRAY];

  final _randomColorList = [
    Color.BLACK,
    Color.BLUE,
    Color.CYAN,
    Color.GRAY,
    Color.GREEN,
    Color.MAGENTA,
    Color.ORANGE,
    Color.RED,
    Color.WHITE,
    Color.YELLOW
  ];

  final _boyNames = ['Adam','Brad','Carl','David',
    'Eric','Frank',
    'Gary','Hank',
    'John','Kevin','Larry',
    'Mark','Paul','Ray','Scott','Tim','Wally'];
  final _girlNames = ['Alice','Barb','Carol','Donna',
    'Helen', 'Karen','Irene','Janet','Linda','Mary','Nancy',
    'Pam','Ruth','Susan','Tina','Wanda'];

  DanceModel(fm.BuildContext context)
      : beater = pp.Provider.of<BeatNotifier>(context,listen: false) {
    beater.addListener(_updateCurrentPart);
  }

  @override
  void dispose() {
    beater.removeListener(_updateCurrentPart);
    super.dispose();
  }

  bool get gridVisibility => _showGrid;
  set gridVisibility(bool show) {
    if (show != _showGrid) {
      _showGrid = show;
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
      _boyNames.shuffle();
      _girlNames.shuffle();
      for (var i=0; i<dancers.length; i++) {
        final d = dancers[i];
        d.name = d.gender == Gender.BOY ? _boyNames[i] : _girlNames[i];
      }
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
      for (var i=0; i<dancers.length; i++) {
        final d = dancers[i];
        d.showColor = true;
        d.fillColor = d.gender == Gender.PHANTOM
            ? Color.LIGHTGRAY
            : _randomColorList[i];
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
    final newSpeed = {'Slow':SLOWSPEED,'Moderate':MODERATESPEED,'Fast':FASTSPEED}[speed] ?? NORMALSPEED;
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

  int get geometry => _geometry;
  set geometry(int g) {
    if (!_asymmetric && g != _geometry) {
      _geometry = g;
      later(() {
        _resetAnimation();
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
    //  Notifiy if part changes to update definition highlight
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




  Future<void> setAnimation(XmlElement xtam,
      {int practiceGender = -1, bool practiceIsRandom = true}) async {
    _tam = await TamUtils.tamXref(xtam);
    _interactiveDancer = practiceGender;
    _interactiveRandom = practiceIsRandom;
    _resetAnimation();
    partstr = _tam!('parts','') + _tam!('fractions','');
    hasParts = _tam!('parts').isNotBlank;
    notifyListeners();
  }

  void _resetAnimation() {
    if (_tam != null) {
      leadin = _interactiveDancer < 0 ? 2.0 : 3.0;
      leadout = _interactiveDancer < 0 ? 2.0 : 0.2;
      //beater.reset();
      var tform = _tam!.getElement('formation');
      var aform = _tam!('formation');
      var formation = _tam!;
      if (tform != null)
        formation = tform;
      else if (aform.isNotBlank)
        formation = TamUtils.getFormation(aform);
      var flist = formation.childrenNamed('dancer');
      dancers = [];
      _beats = 0.0;

      //  Get numbers for dancers and couples
      //  This fetches any custom numbers that might be defined in
      //  the animation to match a Callerlab or Ceder Chest illustration
      var paths = _tam!.childrenNamed('path');
      var numbers = <String>[];
      _asymmetric = _tam!('asymmetric').isNotBlank;
      if (_asymmetric)
        _geometry = Geometry.ASYMMETRIC;
      if (_geometry == Geometry.HEXAGON)
        numbers = ['A', 'E', 'I',
          'B', 'F', 'J',
          'C', 'G', 'K',
          'D', 'H', 'L',
          'U', 'V', 'W', 'X', 'Y', 'Z'];
      else if (_geometry == Geometry.BIGON)
        numbers = ['1', '2', '3', '4', '5', '6', '7', '8'];
      else if (_geometry == Geometry.HASHTAG)
        numbers = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'.split('');
      else if (paths.isEmpty)
        numbers = ['1', '5', '2', '6', '3', '7', '4', '8'];
      else
        numbers = TamUtils.getNumbers(_tam!);
      var couples = <String>[];
      if (_geometry == Geometry.HEXAGON)
        couples = ['1', '3', '5', '1', '3', '5',
          '2', '4', '6', '2', '4', '6',
          '7', '8', '7', '8', '7', '8'];
      else if (_geometry == Geometry.BIGON)
        couples = [ '1', '2', '3', '4', '5', '6', '7', '8' ];
      else if (_geometry == Geometry.HASHTAG)
        couples = ['1','3','1','3',
          '1','3','1','3',
          '1','3','1','3',
          '1','3','1','3',
          '1','3','1','3',
          '1','3','1','3'];
      else
        couples = TamUtils.getCouples(_tam!);

      var geoms = Geometry.getGeometry(_geometry);

      //  Select a random dancer of the correct gender for the interactive dancer
      var icount = -1;
      var im = Matrix.getIdentity();
      if (_interactiveDancer > 0) {
        var glist = formation.childrenNamed('dancer')
            .where((d) => d('gender') == (_interactiveDancer==Gender.BOY ? 'boy' : 'girl')).toList();
        //  Select either the first or random dancer to be interactive
        icount = _interactiveRandom ? Random().nextInt(glist.length) : 0;
        //  Find the angle the interactive dancer faces at start
        //  We want to rotate the formation so that direction is up
        var iangle = glist[icount]('angle').d;
        im = Matrix.getRotation(-iangle.toRadians);
        //  Adjust icount for looping through geometry below
        icount = icount * geoms.length + 1;
      }

      //  Create the dancers and set their starting positions
      var dnum = 0;
      for (var i=0; i<flist.length; i++) {
        var fd = flist[i];
        var x = fd('x').d;
        var y = fd('y').d;
        var angle = fd('angle').d;
        var g = Gender.BOY;
        if (fd('gender') == 'girl') g = Gender.GIRL;
        if (fd('gender') == 'phantom') g = Gender.PHANTOM;
        var movelist = (paths.length > i) ? TamUtils.translatePath(paths[i]) : <Movement>[];
        //  Each dancer listed in the formation corresponds to
        //  one, two, or three real dancers depending on the geometry
        geoms.forEach((geom) {
          var m = im * Matrix.getTranslation(x,y) *
              Matrix.getRotation(angle.toRadians);
          var nstr = (g == Gender.PHANTOM) ? ' ' : numbers[dnum];
          var cstr = (g == Gender.PHANTOM) ? ' ' : couples[dnum];
          var colorstr = (g == Gender.PHANTOM) ? ' ' : couples[dnum];
          var color = Color.LIGHTGREY;
          if (g != Gender.PHANTOM)
            color = _dancerColor[colorstr.i];

          //  add one dancer
          //  practice dancer?
          if (g == _interactiveDancer  && --icount == 0) {
            practiceDancer = PracticeDancer(nstr,cstr,g,color,m,geom.clone(),movelist);
            dancers.add(practiceDancer!);
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
      beater.setTimes(-leadin, _beats);
      notifyListeners();
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