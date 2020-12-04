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
import '../pages/animation_page.dart';
import 'sequencer_model.dart';
import '../color.dart';

class SequencerAnimationFrame extends fm.StatefulWidget {

  @override
  _SequencerAnimationFrameState createState() => _SequencerAnimationFrameState();

}

class _SequencerAnimationFrameState extends fm.State<SequencerAnimationFrame> {

  @override
  fm.Widget build(fm.BuildContext context) {
    return fm.Column(
      children: [
        fm.Expanded(
            child:pp.Consumer<SequencerModel>(
                builder: (context, settings, child) {
                  return AnimationFrame(startFormation: 'Static Square');
                })
        ),
        fm.Container(
          color: Color.FLOOR,
          child: fm.Row(
            children: [
              fm.Expanded(
                  child: Button('Help')
              ),
              fm.Expanded(
                  child: Button('Settings')
              ),
              fm.Expanded(
                  child: Button('Abbrev')
              ),
              fm.Expanded(
                  child: Button('Calls')
              ),
            ],
          ),
        ),
      ],
    );
  }

}
