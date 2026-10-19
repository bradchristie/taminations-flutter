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
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart' as fm;
import 'package:provider/provider.dart' as pp;
import 'package:taminations/call_entry.dart';
import 'package:taminations/sequencer/sequencer_model.dart';

import '../common_flutter.dart';
import '../pages/calls_page.dart';
import '../pages/page.dart';
import 'sequencer_calls_model.dart';

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


class _SequencerCallsFrameState extends fm.State<SequencerCallsFrame> {

  final callsModel = SequencerCallsModel();
  var scrollController = fm.ScrollController();

  @override
  fm.Widget build(fm.BuildContext context) {
    scrollController = fm.ScrollController();
    return pp.ChangeNotifierProvider.value(
      value: callsModel,
      child: pp.Consumer<SequencerModel>(
          builder: (context, model, _) {
            callsModel.setSequencerModel(model);
            callsModel.computeValidCalls();
            return pp.Consumer<SequencerCallsModel>(
                builder: (context, _, _) {
                  return fm.Column(children: [
                    fm.Expanded(
                      child: fm.Container(
                        color: Color.LIGHTGRAY,
                        child: fm.Scrollbar(
                            controller: scrollController,
                            thumbVisibility: TamUtils.platform().matches('web|windows'.r),
                            thickness: 16,
                            child: fm.GridView.builder(
                                gridDelegate: fm.SliverGridDelegateWithMaxCrossAxisExtent(
                                    maxCrossAxisExtent: 20,
                                    mainAxisSpacing: 1,
                                    childAspectRatio: 0.1
                                ),
                                controller: scrollController,
                                scrollDirection: fm.Axis.horizontal,
                                padding: fm.EdgeInsets.fromLTRB(0, 0, 0, 20),
                                itemCount: callsModel.callsSelected.length,
                                itemBuilder: (_, index) => itemBuilder(callsModel, callsModel.callsSelected[index])

                            )),
                      ),
                    ),
                    fm.Row(children: [
                      _LevelCheckbox(LevelData.MS),
                      _LevelCheckbox(LevelData.C1)
                    ]),
                    fm.Row(children: [
                      _LevelCheckbox(LevelData.PLUS),
                      _LevelCheckbox(LevelData.C2)
                    ]),
                    fm.Row(children: [
                      _LevelCheckbox(LevelData.A1),
                      _LevelCheckbox(LevelData.C3A)
                    ]),
                    fm.Row(children: [
                      _LevelCheckbox(LevelData.A2),
                      _LevelCheckbox(LevelData.C3B)
                    ]),
                  ]);
                }
            );
          }),
    );
  }

  fm.Widget itemBuilder(SequencerCallsModel callModel, CallEntry entry) {
    if (callModel.validCalls.contains(entry.title)) {
      return fm.Container(
        child: fm.Material(
          color: LevelData.find(entry.link)!.color,
          child: fm.InkWell(
            onTap: () {
              callModel.sequencerModel?.loadOneCall(entry.title);
            },
            child: fm.Text(entry.title,style: fm.TextStyle(
                fontSize: 16,
              color: Color.RED
            ))
          )
        )
      );
    } else {
      return fm.Container(
        child: fm.Material(
          color: LevelData.find(entry.link)!.color,
          child: fm.Text(entry.title,style: fm.TextStyle(
              fontSize: 16,
            color: Color.GRAY
          )),
        ),
      );
    }
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
