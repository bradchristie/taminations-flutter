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

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart' as fm;
import 'package:taminations/sequencer/call_context.dart';
import 'package:taminations/sequencer/sequencer_model.dart';
import 'package:taminations/sequencer/words.dart';

import '../animated_call.dart';
import '../call_entry.dart';
import '../call_index.dart';
import '../common_flutter.dart';
import 'call_error.dart';

class SequencerCallsModel extends fm.ChangeNotifier {

  SequencerModel? sequencerModel;

  void setSequencerModel(SequencerModel model) {
    sequencerModel = model;
  }

  var callsSelected = <CallEntry>[];
  var validCalls = <String>[];

  final _levelsSelected = <LevelData, bool>{
    LevelData.MS: false,
    LevelData.PLUS: false,
    LevelData.A1: false,
    LevelData.A2: false,
    LevelData.C1: false,
    LevelData.C2: false,
    LevelData.C3A: false,
    LevelData.C3B: false
  };

  bool levelSelected(LevelData level) => _levelsSelected[level]!;

  void setSelected(LevelData level, bool value) {
    if (_levelsSelected[level] != value) {
      _levelsSelected[level] = value;
      callsSelected = callIndex.where((element) =>
      _levelsSelected[LevelData.find(element.link)] ?? false).toList();
    }
    computeValidCalls();
  }

  void computeValidCalls() async {
    if (sequencerModel != null) {
      var calls = callsSelected.map((c)=>c.title).toList();
      var ctx = sequencerModel!.contextFromCurrentFormation();
      var myDancers = ctx.dancers.map((d) => d.clone()).toList();
      var canApply = _ApplyCallContext(myDancers, calls, _levelsSelected);
      validCalls = await compute(_canApplyCall,canApply);
      notifyListeners();
    }
  }

}

class _ApplyCallContext {

  List<Dancer> dancers;
  List<String> callNames;
  Map<LevelData,bool> validLevels;
  Map<String,List<AnimatedCall>> normalizedCallIndex = {};

  _ApplyCallContext(this.dancers, this.callNames, this.validLevels) {
    normalizedCallIndex = Words.normalizedCallIndex;
  }

  bool showMyDancers() {
    print(dancers.show());
    return true;
  }

}

List<String> _canApplyCall(_ApplyCallContext ctx) {
  Words.normalizedCallIndex = ctx.normalizedCallIndex;
  var retval = <String>[];
  for (var call in ctx.callNames) {
    try {
      _probeCall(call, ctx);
      retval.add(call);
    } on CallError {
      // fall through
    } catch (_) {
      // fall through
    }
  }
  return retval;
}

void _probeCall(String call, _ApplyCallContext actx) {
    var ctx = CallContext.fromDancers(actx.dancers);
    ctx.interpretCall(call);
    ctx.performCall(tryDoYourPart: false);
    //  Some calls listed for a level can only be done
    //  with the current formation at a higher level
    //  for example, Linear Cycle is Plus from waves
    //  but A-1 from lines.
    //  Check that this has not happened
    if (!(actx.validLevels[ctx.level] ?? false))
      throw CallError('Incorrect level');
    if (!RegExp(r'move in|step|gnat|back\s*(up|away)', caseSensitive: false)
        .hasMatch(call))
      ctx.adjustForSquaredSetConvention();
    ctx.checkCenters();
    ctx.animateToEnd();
    ctx.matchStandardFormation();
    if (ctx.isCollision())
      throw CallError('Collision');
  }

