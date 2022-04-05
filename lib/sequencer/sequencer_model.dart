/*

  Taminations Square Dance Animations
  Copyright (C) 2021 Brad Christie

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

import '../common.dart';
import '../dance_model.dart';
import 'call_context.dart';
import 'call_error.dart';
import 'calls/coded_call.dart';
import 'calls/xml_call.dart';

class SequencerCall {
  final String name;
  final double beats;
  final LevelData? level;
  SequencerCall(this.name,{required this.beats, required this.level});
}

class SequencerModel extends fm.ChangeNotifier {

  List<SequencerCall> calls = [];
  String _startingFormation = 'Squared Set'; // overriden by Settings
  String get startingFormation => _startingFormation;
  String partString = '';
  String errorString = '';
  DanceModel animation;
  int currentCall = -1;

  SequencerModel([fm.BuildContext? context]) :
        animation = DanceModel(context) {
    CallContext.init();
    animation.addListener(() {
      _updateCurrentCall();
    });
  }

  Future<void> setStartingFormation(String formation) async {
    if (formation != _startingFormation) {
      _startingFormation = formation;
      await reset();
    }
  }

  Future<void> reset() async {
    animation.doPause();
    calls = [];
    errorString = '';
    currentCall = -1;
    await _startSequence();
    later(() {
      notifyListeners();
    });
  }

  void setColor(String c, Settings settings) {
    errorString = '';
    final command = c.toLowerCase();
    final coupleColors = <String>[ 'Red', 'Green', 'Blue', 'Yellow', 'Magenta', 'Cyan' ];
    if (command.matches('color (off|none)'.r)) {
      settings.showDancerColors = 'None';
    }
    else if (command.matches('color reset'.r)) {
      settings.showDancerColors = 'By Couple';
      for (var i=1; i<=12; i++)
        settings.setDancerColor(i, 'default');
      for (var i=1; i<=6; i++)
        settings.setCoupleColor(i, coupleColors[i-1]);
    }
    else if (command.matches('color random'.r)) {
      settings.showDancerColors = 'Random';
    }
    else if (command.matches('color on'.r)) {
      settings.showDancerColors = 'By Couple';
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
            settings.setDancerColor(num * 2 - 1, 'default');
            settings.setDancerColor(num * 2, 'default');
            settings.setCoupleColor(num, color.capitalize());
          }
          else
            settings.setDancerColor(num, color.capitalize());
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
      settings.dancerIdentification = 'None';
    }
    else if (command.matches('id dancer.*'.r)) {
      settings.dancerIdentification = 'Dancer Numbers';
    }
    else if (command.matches('id couple.*'.r)) {
      settings.dancerIdentification = 'Couple Numbers';
    }
    else if (command.matches('id name.*'.r)) {
      settings.dancerIdentification = 'Names';
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
        settings.speed = 'Slow';
        break;
      case 'normal' :
        settings.speed = 'Normal';
        break;
      case 'fast' :
        settings.speed = 'Fast';
        break;
      case 'ludicrous' :
        settings.speed = 'Ludicrous';
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
        settings.axes = 'None';
        break;
      case 'short' :
        settings.axes = 'Short';
        break;
      case 'long' :
        settings.axes = 'Long';
        break;
      default:
        errorString = 'Invalid axes setting';
        break;
    }
  }

  Future<bool> loadOneCall(String call) async {
    errorString = '';
    try {
      await _interpretOneCall(call);
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
          while (d.path.beats > totalBeats)
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
    }
  }

  Future<void> _interpretOneCall(String call) async {
    if (call.isBlank)
      return Future<void>.value();
    if (isComment(call)) {
      calls.add(SequencerCall(call,beats:0.0,level:null));
      notifyListeners();
      return Future<void>.value();
    }
    //  Remove any underscores, which are reserved for internal calls only
    call = call.replaceAll('_', '');
    //  Remove any [user annotations]
    var comment = '';
    if (call.contains('\\[.*\\]'.r)) {
      comment = ' ' + call.replaceMatch('.*(\\[.*\\]).*'.r,'\\1');
      call = call.replaceFirst('\\[.*?\\]'.r,'');
    }

    var prevbeats = animation.beats;
    var cctx = CallContext.fromDancers(animation.dancers);
    await cctx.interpretCall(call);
    await cctx.performCall();
    cctx.checkForCollisions();
    cctx.extendPaths();
    if (!cctx.callname.contains('(move in|step|gnat)'.ri))
      cctx.adjustForSquaredSetCovention();
    //  Snap to a standard formation so subsequent calls will work
    //  But not if just one XML call, as it knows how it should end
    final firstCall = cctx.callstack.first;
    if (cctx.callstack.length > 1 ||
        firstCall is CodedCall ||
        (firstCall is XMLCall && !firstCall.found))
      cctx.matchStandardFormation();
    if (cctx.isCollision())
      throw CallError('Unable to calculate valid animation.');
    if (cctx.resolutionError)
      errorString = 'Warning: Dancers are not resolved';
    cctx.appendToSource();
    animation.recalculate();
    var newbeats = animation.beats;
    if (newbeats > prevbeats) {
      //  Call worked, add it to the list
      calls.add(SequencerCall((cctx.callname + comment).trim(),beats:(newbeats-prevbeats),level:cctx.level));
      _updateParts();
    }
    notifyListeners();
  }

  bool isComment(String text) =>
      text.trim().startsWith('[^\\a-zA-Z0-9]'.r);

  Future<void> _startSequence() async {
    await animation.setAnimation(TamUtils.getFormation(startingFormation));
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

  void copy(Settings settings) {
    var joiner = '\n';
    if (settings.joinCallsWith == 'Semi-Colon')
      joiner = '; ';
    if (settings.joinCallsWith == 'Comma')
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
      if (!await loadOneCall(line)) {
        break;
      }
    }
    animation.goToEnd();
  }

}