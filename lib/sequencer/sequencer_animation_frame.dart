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
import 'package:provider/provider.dart' as pp;
import 'package:taminations/sequencer/sequence_frame.dart';

import '../common.dart';
import '../pages/animation_page.dart';
import 'sequencer_model.dart';

class SequencerAnimationFrame extends fm.StatelessWidget {

  @override
  fm.Widget build(fm.BuildContext context) {
    return fm.Column(
      children: [
        BasicSequencerAnimation(),
        fm.Container(
          color: Color.FLOOR,
          child: fm.Row(
            children: [
              SequencerHelpButton(),
              SequencerSettingsButton(),
              SequencerAbbrevButton(),
              SequencerCallsButton()
            ]
          )
        )
      ]
    );
  }

}

class PortraitSequencerAnimationFrame extends fm.StatelessWidget {

  @override
  fm.Widget build(fm.BuildContext context) {
    return fm.Row(
      children: [
        BasicSequencerAnimation(),
        fm.Expanded(
          flex: 1,
          child: fm.Container(
            color: Color.FLOOR,
            child: fm.LayoutBuilder(
              builder:(context,constraints) {
                return fm.Column(
                children: [
                  SequencerUndoButton(),
                  SequencerResetButton(),
                  SequencerCopyButton(),
                  SequencerPasteButton(),
                  if (constraints.maxHeight > 50)
                    ...[fm.Divider(color: Color.GRAY, height: 8),
                  SequencerHelpButton(),
                  SequencerSettingsButton(),
                  SequencerAbbrevButton(),
                  SequencerCallsButton()]
                ]
              ); }
            ),
          ),
        )
      ],
    );
  }

}

class BasicSequencerAnimation extends fm.StatelessWidget {
  @override
  fm.Widget build(fm.BuildContext context) {
    return fm.Expanded(
        flex: 4,
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
    );
  }
}


class SequencerHelpButton extends fm.StatelessWidget {
  @override
  fm.Widget build(fm.BuildContext context) {
    final appState = pp.Provider.of<TamState>(context,listen: false);
    return fm.Expanded(
        child: Button('Help',onPressed: () {
          appState.change(detailPage:DetailPage.HELP);
        },)
    );
  }
}

class SequencerSettingsButton extends fm.StatelessWidget {
  @override
  fm.Widget build(fm.BuildContext context) {
    final appState = pp.Provider.of<TamState>(context,listen: false);
    return fm.Expanded(
        child: Button('Settings',onPressed: () {
          appState.change(detailPage:DetailPage.SETTINGS);
        },)
    );
  }
}

class SequencerAbbrevButton extends fm.StatelessWidget {
  @override
  fm.Widget build(fm.BuildContext context) {
    final appState = pp.Provider.of<TamState>(context,listen: false);
    return fm.Expanded(
        child: Button('Abbrev',onPressed: () {
          appState.change(detailPage:DetailPage.ABBREVIATIONS);
        },)
    );
  }
}

class SequencerCallsButton extends fm.StatelessWidget {
  @override
  fm.Widget build(fm.BuildContext context) {
    final appState = pp.Provider.of<TamState>(context,listen: false);
    return fm.Expanded(
        child: Button('Calls',onPressed: () {
          appState.change(detailPage:DetailPage.CALLS);
        },)
    );
  }
}

