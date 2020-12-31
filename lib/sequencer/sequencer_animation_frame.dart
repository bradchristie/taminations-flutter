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
import 'package:provider/provider.dart' as pp;

import '../button.dart';
import '../color.dart';
import '../main.dart';
import '../pages/animation_page.dart';
import 'sequencer_model.dart';

class SequencerAnimationFrame extends fm.StatefulWidget {

  SequencerAnimationFrame() : super(key: fm.ValueKey('Sequencer Animation Frame'));

  @override
  _SequencerAnimationFrameState createState() => _SequencerAnimationFrameState();

}

class _SequencerAnimationFrameState extends fm.State<SequencerAnimationFrame> {

  @override
  fm.Widget build(fm.BuildContext context) {
    final appState = pp.Provider.of<TamState>(context,listen: false);
    return fm.Column(
      children: [
        fm.Expanded(
            child: fm.Stack(
                children: [
                  AnimationFrame(),
                  fm.Positioned(
                      top: 6, left:12, right:12,
                      child: pp.Consumer<SequencerModel>(
                          builder: (context,model,_) =>
                              fm.Text(model.currentCall < 0 ? ''
                                  : model.calls[model.currentCall].name,
                                  style: fm.TextStyle(fontSize: 28))
                      )
                  )
                ]
            )
        ),
        fm.Container(
          color: Color.FLOOR,
          child: fm.Row(
            children: [
              fm.Expanded(
                  child: Button('Help',onPressed: () {
                    appState.change(detailPage:DetailPage.HELP);
                  },)
              ),
              fm.Expanded(
                  child: Button('Settings',onPressed: () {
                    appState.change(detailPage:DetailPage.SETTINGS);
                  })
              ),
              fm.Expanded(
                  child: Button('Abbrev',onPressed: () {
                    appState.change(detailPage:DetailPage.ABBREVIATIONS);
                  })
              ),
              fm.Expanded(
                  child: Button('Calls',onPressed: () {
                    appState.change(detailPage:DetailPage.CALLS);
                  })
              ),
            ],
          ),
        ),
      ],
    );
  }

}
