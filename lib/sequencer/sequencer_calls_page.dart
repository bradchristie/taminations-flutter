/*

  Taminations Square Dance Animations
  Copyright (C) 2023 Brad Christie

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

import '../call_entry.dart';
import '../call_index.dart';
import '../common_flutter.dart';
import '../pages/calls_page.dart';
import '../pages/page.dart';

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

  void setSelected(LevelData level, bool value) {
    if (_levelsSelected[level] != value) {
      _levelsSelected[level] = value;
      callsSelected = callIndex.where((element) =>
      _levelsSelected[LevelData.find(element.link)] ?? false).toList();
      notifyListeners();
    }
  }

}


class _SequencerCallsFrameState extends fm.State<SequencerCallsFrame> {

  final callsModel = SequencerCallsModel();

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
