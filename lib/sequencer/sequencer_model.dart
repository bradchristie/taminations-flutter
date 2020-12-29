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

import 'package:flutter/material.dart' as fm;
import 'package:flutter/services.dart' as fs;

import '../common.dart';
import '../dance_animation_painter.dart';
import 'abbreviations_model.dart';
import 'call_context.dart';
import 'call_error.dart';
import 'calls/coded_call.dart';

class SequencerCall {
  final String name;
  final double beats;
  final LevelData level;
  SequencerCall(this.name,{this.beats,this.level});
}

class SequencerModel extends fm.ChangeNotifier {

  List<SequencerCall> calls;
  String _startingFormation = 'Squared Set'; // overriden by Settings
  String get startingFormation => _startingFormation;
  set startingFormation(String value) {
    if (value != _startingFormation) {
      _startingFormation = value;
      reset();
    }
  }
  String partString = '';
  String errorString = '';
  DanceAnimationPainter animation = DanceAnimationPainter();
  AbbreviationsModel abbreviations = AbbreviationsModel();
  int currentCall;

  SequencerModel() {
    CallContext.init();
    animation.addListener(() {
      _updateCurrentCall();
    });
    reset();
  }

  void reset() {
    animation.doPause();
    calls = [];
    errorString = '';
    currentCall = -1;
    _startSequence();
    later(() {
      notifyListeners();
    });
  }

  Future<bool> loadOneCall(String call) async {
    errorString = '';
    try {
      await _interpretOneCall(_replaceAbbreviations(call));
      notifyListeners();
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
        var totalBeats = calls.fold(0.0,(a,b) => a + b.beats);
        for (var d in animation.dancers) {
          while (d.path.beats > totalBeats)
            d.path.pop();
        }
      }
      errorString = '';
      animation.recalculate();
      _updateParts();
      later(() {
        notifyListeners();
      });
    }
  }

  Future<void> _interpretOneCall(String call) async {
    if (isComment(call)) {
      calls.add(SequencerCall(call,beats:0.0,level:null));
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
    //  Snap to a standard formation so subsequent calls will work
    //  But not if just one XML call, as it knows how it should end
    if (cctx.callstack.length > 1 || cctx.callstack[0] is CodedCall)
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
      calls.add(SequencerCall(cctx.callname + comment,beats:(newbeats-prevbeats),level:cctx.level));
      animation.beat = prevbeats - animation.leadout;
      _updateParts();
      animation.doPlay();
    }
  }

  //  Replace any abbreviations with their expanded equivalents
  //  and return the new string
  String _replaceAbbreviations(String text) =>
      text.split('\\s+'.r)
          .map((word) => abbreviations.currentAbbreviations
          .firstWhere((e) => e.abbr == word.toLowerCase(), orElse: () => null)?.expa ?? word)
          .join(' ');

  bool isComment(String text) =>
      text.trim().startsWith('[^\\[a-zA-Z0-9]'.r);

  void _startSequence() {
    animation.setAnimation(TamUtils.getFormation(startingFormation));
    _updateParts();
  }

  void animateAtCall(int index) {
    var beat = calls.take(index).fold(0.0, (b, c) => b + c.beats);
    animation.beat = beat;
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
    final updatedCall = _callNumberAtBeat(animation.beat);
    if (updatedCall != currentCall) {
      currentCall = updatedCall;
      notifyListeners();
    }
  }

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
    final text = calls.map((call) => call.name).join('\n');
    final clip = fs.ClipboardData(text:text);
    fs.Clipboard.setData(clip);
  }

  void paste() {
    fs.Clipboard.getData('text/plain').then((value) async {
      if (value is fs.ClipboardData) {
        for (final line in value.text.split('\n')) {
          if (!await loadOneCall(line))
            break;
        }
      }
    });
  }

}