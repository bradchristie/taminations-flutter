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
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart' as fm;
import 'package:provider/provider.dart' as pp;

import 'dart:async';

import '../call_entry.dart';
import '../call_index.dart';
import '../common_flutter.dart';
import '../pages/calls_page.dart';
import '../pages/page.dart';
import 'call_context.dart';
import 'call_error.dart';
import 'sequencer_model.dart';

class SequencerCallsPage extends fm.StatelessWidget {

  @override
  fm.Widget build(fm.BuildContext context) {
    return Page(child: SequencerCallsFrame());
  }

}

class SequencerCallsFrame extends fm.StatefulWidget {
  @override
  _SequencerCallsFrameState createState() => _SequencerCallsFrameState();
}

class SequencerCallsModel extends fm.ChangeNotifier {

  var callsSelected = <CallEntry>[];
  SequencerModel? _sequencerModel;
  bool filterByFormation = true;

  final _levelsSelected = <LevelData,bool>{
    LevelData.SSD : false,
    LevelData.B1 : false,
    LevelData.B2 : false,
    LevelData.MS : false,
    LevelData.PLUS : false,
    LevelData.A1 : false,
    LevelData.A2 : false,
    LevelData.C1 : false,
    LevelData.C2 : false,
    LevelData.C3A : false
  };
  bool levelSelected(LevelData level) => _levelsSelected[level]!;

  Timer? _debounce;

  void attachSequencerModel(SequencerModel model) {
    _sequencerModel = model;
    model.addListener(_onSequencerChanged);
  }

  bool _rebuildCancelled = false;

  void _onSequencerChanged() {
    //  Debounce: wait for animation to finish before starting probes.
    _debounce?.cancel();
    _rebuildCancelled = true;  // cancel any in-progress async rebuild
    _debounce = Timer(const Duration(milliseconds: 600), _rebuildCallListAsync);
  }

  void _rebuildCallList() => _rebuildCallListAsync();

  Future<void> _rebuildCallListAsync() async {
    _rebuildCancelled = false;
    final byLevel = callIndex.where((element) =>
        _levelsSelected[LevelData.find(element.link)] ?? false).toList();
    if (!filterByFormation || _sequencerModel == null) {
      callsSelected = byLevel;
      notifyListeners();
      return;
    }
    //  Probe calls in small batches, yielding between each batch
    //  so the UI thread can render animation frames in between.
    const batchSize = 5;
    final result = <CallEntry>[];
    for (var i = 0; i < byLevel.length; i += batchSize) {
      if (_rebuildCancelled) return;  // a new call came in, abort
      final batch = byLevel.skip(i).take(batchSize);
      for (final entry in batch) {
        if (_canApplyCall(entry.title))
          result.add(entry);
      }
      //  Yield to the event loop so animation frames can be rendered
      await Future.delayed(Duration.zero);
    }
    if (_rebuildCancelled) return;
    callsSelected = result;
    notifyListeners();
  }

  //  Designator prefixes to try when a plain call fails.
  //  This handles calls like 'Wheel Thru' that require 'Heads' or 'Sides'.
  static const _designators = [
    'Heads', 'Sides', 'Boys', 'Girls', 'Centers', 'Ends',
    'Leaders', 'Trailers', 'Beaus', 'Belles',
  ];

  void _probeCall(String callName) {
    final ctx = _sequencerModel!.contextFromCurrentFormation();
    ctx.interpretCall(callName);
    ctx.performCall(tryDoYourPart: false);
    if (!RegExp(r'move in|step|gnat|back\s*(up|away)', caseSensitive: false)
        .hasMatch(callName))
      ctx.adjustForSquaredSetConvention();
    ctx.checkCenters();
    ctx.animateToEnd();
    ctx.matchStandardFormation();
    if (ctx.isCollision())
      throw CallError('Collision');
  }

  bool _canApplyCall(String callName) {
    //  First try the plain call
    try {
      _probeCall(callName);
      return true;
    } on CallError {
      // fall through
    } catch (_) {
      // fall through
    }
    //  Plain call failed — try with designator prefixes.
    //  If any variant works, the call is valid from this formation.
    for (final prefix in _designators) {
      try {
        _probeCall('$prefix $callName');
        return true;
      } on CallError {
        // keep trying
      } catch (_) {
        // keep trying
      }
    }
    return false;
  }

  void setSelected(LevelData level, bool value) {
    if (_levelsSelected[level] != value) {
      _levelsSelected[level] = value;
      _rebuildCallList();
    }
  }

  void toggleFormationFilter() {
    filterByFormation = !filterByFormation;
    _rebuildCallList();
  }

  @override
  void dispose() {
    _debounce?.cancel();
    _sequencerModel?.removeListener(_onSequencerChanged);
    super.dispose();
  }

}


class _SequencerCallsFrameState extends fm.State<SequencerCallsFrame> {

  final callsModel = SequencerCallsModel();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final sequencerModel = pp.Provider.of<SequencerModel>(context, listen: false);
    callsModel.attachSequencerModel(sequencerModel);
  }

  @override
  fm.Widget build(fm.BuildContext context) {
    return pp.ChangeNotifierProvider.value(
      value: callsModel,
      child: pp.Consumer<SequencerCallsModel>(
        builder: (context,_,__) {
          return fm.Column(children: [
              fm.Expanded(child: fm.GridView.builder(
                gridDelegate: fm.SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    mainAxisSpacing: 1,
                    childAspectRatio: 8
                ),
                itemCount: callsModel.callsSelected.length,
                itemBuilder: (_,index) =>
                fm.Container(
                child: fm.Material(
                //  Color the item according the the level
                color: LevelData.find(callsModel.callsSelected[index].link)!.color,
                child: fm.Text(callsModel.callsSelected[index].title,
                    style: fm.TextStyle(fontSize: 16))
                )
                )

              )),
            fm.Row(children: [
              fm.Expanded(
                child: fm.InkWell(
                  onTap: () => callsModel.toggleFormationFilter(),
                  child: fm.Container(
                    color: callsModel.filterByFormation
                        ? fm.Colors.lightGreen.shade200
                        : fm.Colors.grey.shade300,
                    padding: fm.EdgeInsets.symmetric(vertical: 6, horizontal: 8),
                    child: fm.Row(children: [
                      fm.Icon(
                        callsModel.filterByFormation
                            ? fm.Icons.filter_alt
                            : fm.Icons.filter_alt_off,
                        size: 18,
                      ),
                      fm.SizedBox(width: 4),
                      fm.Expanded(
                        child: AutoSizeText(
                          callsModel.filterByFormation
                              ? 'Valid from formation'
                              : 'Show all calls',
                          maxLines: 1,
                          minFontSize: 8,
                          style: fm.TextStyle(fontSize: 14),
                        ),
                      ),
                    ]),
                  ),
                ),
              ),
            ]),
            fm.Row(children: [
              _LevelCheckbox(LevelData.SSD),
              _LevelCheckbox(LevelData.PLUS),
              _LevelCheckbox(LevelData.C1)
            ]),
            fm.Row(children: [
              _LevelCheckbox(LevelData.B1),
              _LevelCheckbox(LevelData.A1),
              _LevelCheckbox(LevelData.C2)
            ]),
            fm.Row(children: [
              _LevelCheckbox(LevelData.B2),
              _LevelCheckbox(LevelData.A2),
              _LevelCheckbox(LevelData.C3A)
            ]),
            fm.Row(children: [
              _LevelCheckbox(LevelData.MS),
            ])
          ]);
        } ),
    );
  }

}


class _LevelCheckbox extends fm.StatefulWidget {
  final LevelData level;
  _LevelCheckbox(this.level);

  @override
  _LevelCheckboxState createState() => _LevelCheckboxState();
}

class _LevelCheckboxState extends fm.State<_LevelCheckbox> {
  @override
  fm.Widget build(fm.BuildContext context) {
    return pp.Consumer<SequencerCallsModel>(
      builder: (context,callsModel,_) => fm.Expanded(
        child: fm.Container(
          color: widget.level.color,
            child: fm.InkWell(
              onTap: () {
                setState(() {
                  callsModel.setSelected(widget.level,
                      !callsModel.levelSelected(widget.level));
                });
              },
              child: fm.Row (
                  children: [fm.Checkbox(
                      value: callsModel.levelSelected(widget.level),
                      onChanged: (value) {
                        setState(() {
                          callsModel.setSelected(widget.level,value!);
                        });
                      }
                  ),
                    fm.Expanded(child: AutoSizeText(widget.level.name,
                        maxLines: 1,
                        minFontSize: 8,
                        style: fm.TextStyle(fontSize: 20)))
                  ]),
            )),
      ),
    );
  }
}
