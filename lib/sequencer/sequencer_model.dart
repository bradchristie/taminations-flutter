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

import '../common.dart';
import '../dance_animation_painter.dart';
import 'calls/coded_call.dart';
import 'call_context.dart';
import 'call_error.dart';
import 'abbreviations_model.dart';

class SequencerCall {
  final String name;
  final double beats;
  final LevelData level;
  SequencerCall(this.name,{this.beats,this.level});
}

class SequencerModel extends fm.ChangeNotifier {

  List<SequencerCall> calls;
  String startingFormation = 'Static Square';  // TODO get from settings somehow
  String partString = '';
  String errorString = '';
  DanceAnimationPainter animation = DanceAnimationPainter();
  AbbreviationsModel abbreviations = AbbreviationsModel();

  SequencerModel() {
    CallContext.init();
    reset();
  }

  void reset() {
    animation.doPause();
    calls = [];
    _startSequence();
    notifyListeners();
  }

  void loadOneCall(String call) async {
    errorString = '';
    try {
      await _interpretOneCall(_replaceAbbreviations(call));
      //  TODO Highlight new call and start its animation
      notifyListeners();
    } on CallError catch(e) {
      errorString = e.toString();
      print('errorString: $errorString');
      notifyListeners();
    }
  }

  void undoLastCall() {
    if (calls.isNotEmpty) {
      var lastCall = calls.last;
      calls.removeLast();
      if (!_isComment(lastCall.name)) {
        var totalBeats = calls.fold(0.0,(a,b) => a + b.beats);
        for (var d in animation.dancers) {
          while (d.path.beats > totalBeats)
            d.path.pop();
        }
      }
      animation.recalculate();
      _updateParts();
      notifyListeners();
    }
  }

  Future<void> _interpretOneCall(String call) async {
    if (_isComment(call)) {
      calls.add(SequencerCall(call,beats:0.0,level:LevelData.INDEX));
      return Future<void>.value();
    }
    //  Remove any underscores, which are reserved for internal calls only
    call = call.replaceAll('_', '');
    //  Remove any [user annotations]
    call = call.replaceAll('\\[.*?\\]'.r,'');
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
    cctx.appendToSource();
    animation.recalculate();
    var newbeats = animation.beats;
    if (newbeats > prevbeats) {
      //  Call worked, add it to the list
      calls.add(SequencerCall(cctx.callname,beats:(newbeats-prevbeats),level:cctx.level));
      animation.beat = prevbeats;
      animation.doPlay();
    }
  }

  //  Replace any abbreviations with their expanded equivalents
  //  and return the new string
  String _replaceAbbreviations(String text) =>
  text.split('\\s+'.r)
      .map((word) => abbreviations.currentAbbreviations
      .firstWhere((e) => e.item1 == word.toLowerCase(), orElse: () => null)?.item2 ?? word)
      .join(' ');

  bool _isComment(String text) =>
      text.trim().startsWith('[^\\[a-zA-Z0-9]'.r);

  void _startSequence() {
    animation.setAnimation(TamUtils.getFormation(startingFormation));
    _updateParts();
  }

  void _updateParts() {

  }


}