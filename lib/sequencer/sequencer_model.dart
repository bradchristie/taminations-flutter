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

import 'package:flutter/material.dart' as fm;
import 'package:flutter/services.dart' as fs;

import '../animated_call.dart';
import '../common_flutter.dart';
import '../dance_model.dart';
import 'abbreviations_model.dart';
import 'call_context.dart';
import 'call_error.dart';
import 'calls/coded_call.dart';
import 'calls/xml_call.dart';
import 'words.dart';

class SequencerCall {
  final String name;
  final double beats;
  final LevelData? level;
  SequencerCall(this.name,{required this.beats, required this.level});
}

class SequencerModel extends fm.ChangeNotifier {

  List<SequencerCall> calls = [];
  List<SequencerCall> _savedCalls = [];
  String _startingFormation = 'Squared Set'; // overriden by Settings
  String _savedStartingFormation = '';
  String get startingFormation => _startingFormation;
  String partString = '';
  String errorString = '';
  DanceModel animation;
  int currentCall = -1;
  String helplink = '';
  double animateFrom = 0.0;

  SequencerModel([fm.BuildContext? context]) :
        animation = DanceModel(context) {
    animation.addListener(() {
      _updateCurrentCall();
    });
    Dancer.shuffleNames();
    Words.init();
  }

  void setStartingFormation(String formation) {
    if (formation != _startingFormation) {
      _startingFormation = formation;
      reset();
    }
  }

  void reset() {
    animation.doPause();
    _savedCalls = calls;
    _savedStartingFormation = _startingFormation;
    calls = [];
    errorString = _savedCalls.isNotEmpty ? 'Use Undo to restore sequence' : '';
    currentCall = -1;
    helplink = 'info/sequencer';
    _startSequence();
    animateFrom = 0.0;
    later(() {
      notifyListeners();
    });
  }

  void undoReset() {
    if (_savedCalls.isNotEmpty) {
      _startingFormation = _savedStartingFormation;
      _startSequence();
      for (final call in _savedCalls)
        loadOneCall(call.name);
      _updateParts();
      later(() {
        notifyListeners();
      });
    }
  }

  void setColor(String c, Settings settings) {
    errorString = '';
    final command = c.toLowerCase();
    final coupleColors = <String>[ 'Red', 'Green', 'Blue', 'Yellow', 'Magenta', 'Cyan' ];
    if (command.matches('color (off|none)'.r)) {
      Settings.showDancerColors = 'None';
    }
    else if (command.matches('color reset'.r)) {
      Settings.showDancerColors = 'By Couple';
      for (var i=1; i<=12; i++)
        Settings.setDancerColor(i, 'default');
      for (var i=1; i<=6; i++)
        Settings.setCoupleColor(i, coupleColors[i-1]);
    }
    else if (command.matches('color random'.r)) {
      Settings.showDancerColors = 'Random';
      //  Force dance model to re-shuffle colors
      animation.setRandomColors(false);
      animation.setRandomColors(true);
    }
    else if (command.matches('color on'.r)) {
      Settings.showDancerColors = 'By Couple';
    } else {
      final match = 'color (dancer|couple) ([1-8]) (.*)'.r.firstMatch(command);
      if (match == null)
        errorString = 'Color what?';
      else {
        final isCouple = match[1]!.startsWith('c');
        final num = match[2]!.toIntOrNull()!;
        final color = match[3]!.toLowerCase();
        if (!color.matches(
            '(black|blue|cyan|gr[ae]y|green|magenta|orange|red|white|yellow)'
                .r))
          errorString = 'Invalid color: $color';
        else {
          if (isCouple) {
            Settings.setDancerColor(num * 2 - 1, 'default');
            Settings.setDancerColor(num * 2, 'default');
            Settings.setCoupleColor(num, color.capitalize());
          }
          else
            Settings.setDancerColor(num, color.capitalize());
        }
      }
    }
    later(() {
      notifyListeners();
    });
  }

  void setId(String c, Settings settings) {
    final command = c.toLowerCase();
    if (command.matches('id none'.r)) {
      Settings.dancerIdentification = 'None';
    }
    else if (command.matches('id dancer.*'.r)) {
      Settings.dancerIdentification = 'Dancer Numbers';
    }
    else if (command.matches('id couple.*'.r)) {
      Settings.dancerIdentification = 'Couple Numbers';
    }
    else if (command.matches('id name.*'.r)) {
      Settings.dancerIdentification = 'Names';
      if (command.lc.contains('shuffle')) {
        Dancer.shuffleNames();
        reset();
      }
    }
    else {
      errorString = 'Invalid Id: $c';
    }
    later(() {
      notifyListeners();
    });
  }

  void setSpeed(String c, Settings settings) {
    final command = c.toLowerCase().replaceAll('speed','').trim();
    switch (command) {
      case 'slow' :
        Settings.speed = 'Slow';
        break;
      case 'normal' :
        Settings.speed = 'Normal';
        break;
      case 'fast' :
        Settings.speed = 'Fast';
        break;
      case 'ludicrous' :
        Settings.speed = 'Ludicrous';
        break;
      default :
        errorString = 'Invalid speed';
        break;
    }
  }

  void setAxes(String c, Settings settings) {
    final command = c.toLowerCase().replaceAll('axes', '').trim();
    switch (command) {
      case 'off' :
      case 'none' :
        Settings.axes = 'None';
        break;
      case 'short' :
        Settings.axes = 'Short';
        break;
      case 'long' :
        Settings.axes = 'Long';
        break;
      default:
        errorString = 'Invalid axes setting';
        break;
    }
    notifyListeners();
  }

  void setGrid(String c, Settings settings) {
    final command = c.toLowerCase().replaceAll('grid', '').trim();
    switch (command) {
      case 'off' :
      case 'none' :
        Settings.grid = false;
        break;
      case 'on' :
        Settings.grid = true;
        break;
      default :
        errorString = 'Invalid grid setting';
        break;
    }
    notifyListeners();
  }

  void setPaths(String c, Settings settings) {
    final command = c.toLowerCase().replaceAll('paths?'.r, '').trim();
    Dancer? d;
    if (command.substring(0,1).matches('[0-9]'.r)) {
      d = animation.dancers.firstWhere((it) => it.number == command.substring(0,1));
    }
    var showPath = false;
    if (command.endsWith('on'))
      showPath = true;
    else if (command.endsWith('off'))
      showPath = false;
    else {
      errorString = 'Invalid path setting';
      return;
    }
    if (d != null)
      d.showPath = showPath;
    else {
      for (var d2 in animation.dancers)
        d2.showPath = showPath;
    }
    notifyListeners();
  }

  void showHelp(String c) async {
    final callName = c.replaceFirst('help'.ri, '').trim();
    if (callName.isBlank) {
      errorString = 'Enter "Help <call>" for specific information on <call>.';
      helplink = 'info/sequencer';
    }
    else {
      errorString = 'Could not find $callName';
      //  First look for a coded call
      final call = CodedCall.fromName(callName.capWords());
      if (call != null) {
        errorString = call.help;
        helplink = call.helplink;
      } else {
        //  No coded call, see if we can just show the Callerlab definition
        var xmlCall = XMLCall(callName);
        xmlCall.matchAnimatedCall(CallContext.fromDancers(animation.dancers));
        if (xmlCall.foundLink.isNotBlank) {
          helplink = xmlCall.foundLink;
          errorString  = xmlCall.help;
          notifyListeners();
        }
      }
    }
    notifyListeners();
  }

  bool loadOneCall(String call) {
    errorString = '';
    try {
      _interpretOneLine(call);
    } on CallError catch(e) {
      errorString = e.toString();
      notifyListeners();
      return false;
    }
    return true;
  }

  void undoLastCall() {
    if (calls.isNotEmpty) {
      var lastCall = calls.last;
      calls.removeLast();
      if (!isComment(lastCall.name)) {
        var totalBeats = calls.fold<double>(0.0,(a,b) => a + b.beats);
        for (var d in animation.dancers) {
          while (d.path.beats.isGreaterThan(totalBeats))
            d.path.pop();
        }
      }
      errorString = '';
      animation.recalculate();
      _updateParts();
      animation.goToEnd();
      later(() {
        notifyListeners();
      });
    } else if (_savedCalls.isNotEmpty)
      undoReset();
  }

  CallContext _contextFromAnimation() {
    var ctx = CallContext.fromFormation(Formation(startingFormation));
    if (Settings.geometry == 'Bi-Gon') {
      for (var i=0; i<ctx.dancers.length; i++)
        ctx.dancers[i].path = animation.dancers[i ~/ 2].path.clone();
    } else if (Settings.geometry == 'Hexagon') {
      for (var i=0; i<ctx.dancers.length; i++)
        ctx.dancers[i].path = animation.dancers[(i~/2)*3].path.clone();
    } else if (Settings.geometry == 'Hashtag') {
      for (var i=0; i<ctx.dancers.length; i++)
        ctx.dancers[i].path = animation.dancers[i*2].path.clone();
    }
    else {
      for (var i=0; i<ctx.dancers.length; i++)
        ctx.dancers[i].path = animation.dancers[i].path.clone();
      ctx.animateToEnd();
      ctx.asymmetric = !ctx.dancers.areDancersOrdered();
    }
    ctx.animateToEnd();
    return CallContext.fromContext(ctx);
  }

  void _applyContextToAnimation(CallContext ctx) {
    if (Settings.geometry == 'Hexagon') {
      for (var i=0; i<(ctx.dancers.length ~/ 2) * 3 ; i++)
        animation.dancers[i].path += ctx.dancers[(i~/3)*2].path;
    } else if (Settings.geometry == 'Bi-Gon') {
      for (var i=0; i<ctx.dancers.length ~/ 2; i++)
        animation.dancers[i].path += ctx.dancers[i*2].path;
    } else if (Settings.geometry == 'Hashtag') {
      for (var i=0; i<ctx.dancers.length*2; i++) {
        animation.dancers[i].path += ctx.dancers[i ~/ 2].path;
      }
    }
    else {
      for (var i=0; i<ctx.dancers.length; i++)
        animation.dancers[i].path += ctx.dancers[i].path;
    }
    animation.recalculate();
    /*
    for (var d in animation.dancers) {
      var a = d.orbitAngle(animation.beats).toDegrees.s;
      print('Orbit Angle $d = $a');
    } */
  }

  void _interpretOneLine(String line) {
    //  Replace abbreviations
    line = AbbreviationsModel.replaceAbbreviations(line);
    //  Remember the current beat, we will animate from here
    //  once all interpretation is done
    //  Will be reset to 0 if 'reset' is part of the line
    animateFrom = animation.beats;
    //  If call now has multiple lines (separated by semi-colons)
    //  run each one separately
    for (var oneCall in line.split(';'))
      _interpretOneCall(oneCall);
    //  Play whatever has been added
    if (animation.beats > animateFrom) {
      animation.goToBeat(animateFrom);
      animation.doPlay();
    }
  }

  void _interpretOneCall(String call) {
    if (call.isBlank)
      return;
    if (isComment(call)) {
      calls.add(SequencerCall(call,beats:0.0,level:null));
      notifyListeners();
      return;
    }
    //  Remove any underscores, which are reserved for internal calls only
    call = call.replaceAll('_', '');
    //  Remove any [user annotations]
    var comment = '';
    if (call.contains('\\[.*\\]'.r)) {
      comment = ' ' + call.replaceMatch('.*(\\[.*\\]).*'.r,'\\1');
      call = call.replaceFirst('\\[.*?\\]'.r,'');
    }
    //  Check for special commands
    final settings = Settings();
    if (call.lc.trim() == 'undo')
      undoLastCall();
    else if (call.lc.trim() == 'reset')
      reset();
    else if (call.lc.trim().startsWith('color'))
      setColor(call, settings);
    else if (call.lc.trim().startsWith('id '))
      setId(call, settings);
    else if (call.lc.trim().startsWith('speed '))
      setSpeed(call, settings);
    else if (call.lc.trim().startsWith('axes'))
      setAxes(call, settings);
    else if (call.lc.trim().startsWith('grid'))
      setGrid(call, settings);
    else if (call.lc.trim().startsWith('path'))
      setPaths(call, settings);
    else if (call.lc.trim().startsWith('help'))
      showHelp(call);

    else {
      var prevbeats = animation.beats;
      var cctx = _contextFromAnimation();
      cctx.interpretCall(call);
      cctx.performCall(tryDoYourPart: true);
      if (!cctx.callname.contains('(move in|step|gnat|back\\s*(up|away))'.ri))
        cctx.adjustForSquaredSetConvention();
      cctx.checkCenters();
      //  Snap to a standard formation so subsequent calls will work
      //  But not if just one XML call, as it knows how it should end
      final firstCall = cctx.callstack.first;
      cctx.animateToEnd();
      if (cctx.callstack.length > 1 ||
          firstCall is CodedCall ||
          (firstCall is XMLCall && !firstCall.found)) {
        if (!DebugSwitch.nosnap.enabled)
          cctx.matchStandardFormation();
      }
      if (!DebugSwitch.collisions.enabled) {
        if (cctx.isCollision())
          throw CallError('Unable to calculate valid animation.');
      }
      if (!(Settings.geometry == 'None')) {
        if (!cctx.dancers.areDancersOrdered())
          throw CallError('Asymmetry only possible with square geometry');
      }
      if (cctx.resolutionError)
        errorString = 'Warning: Dancers are not resolved';
      if (cctx.didYourPart)
        errorString = 'Note: Assuming Do Your Part';
      cctx.extendPaths();
      _applyContextToAnimation(cctx);
      var newbeats = animation.beats;
      if (newbeats > prevbeats) {
        //  Call worked, add it to the list
        calls.add(SequencerCall(
            (cctx.callname + comment).trim(), beats: (newbeats - prevbeats),
            level: cctx.level));
        _updateParts();
        _savedCalls = [];
      }
      later(() {
        notifyListeners();
      });

    }
  }

  bool isComment(String text) =>
      text.trim().startsWith('[^\\a-zA-Z0-9]'.r);

  void _startSequence() {
    var formation = Formation(startingFormation);
    var paths = [for (var _ in formation.dancers) Path()];
    animation.setAnimatedCall(AnimatedCall('',formation:formation,paths:paths),
        geometryType: Geometry.fromString(Settings.geometry).geometry);
    animation.recalculate();
    _updateParts();
  }

  void animateAtCall(int index) {
    var beat = calls.take(index).fold<double>(0.0, (b, c) => b + c.beats);
    animation.beater.beat = beat;
  }

  void _updateParts() {
    if (calls.length > 1) {
      final partstr = calls.take(calls.length-1).map((e) => e.beats.s).join(';');
      animation.partstr = partstr;
      animation.hasCalls = true;
    } else
      animation.partstr = '';
  }

  void _updateCurrentCall() {
    final updatedCall = _callNumberAtBeat(animation.beater.beat);
    if (updatedCall != currentCall) {
      currentCall = updatedCall;
      later(() {
        notifyListeners();
      });
    }
  }

  double totalBeats() => calls.fold(0.0, (p, e) => p + e.beats);

  int _callNumberAtBeat(double beat) {
    if (beat < 0)
      return -1;
    var beatSum = 0.0;
    for (var i=0; i<calls.length; i++) {
      beatSum += calls[i].beats;
      if (beatSum > beat)
        return i;
    }
    return -1;
  }

  void copy() {
    var joiner = '\n';
    if (Settings.joinCallsWith == 'Semi-Colon')
      joiner = '; ';
    if (Settings.joinCallsWith == 'Comma')
      joiner = ', ';
    final text = calls.map((call) => call.name).join(joiner);
    final clip = fs.ClipboardData(text:text);
    fs.Clipboard.setData(clip);
  }

  Future<void> paste(String calltext) async {
    for (final line in calltext.split('[\n;,]'.r)) {
      if (line.isBlank) {
        continue;
      }
      if (!loadOneCall(line)) {
        break;
      }
    }
    animation.goToEnd();
  }

}