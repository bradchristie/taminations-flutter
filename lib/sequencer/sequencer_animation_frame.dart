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


import 'package:flutter/material.dart' as FM;
import 'package:taminations/pages/animation_page.dart';

import '../button.dart';

class SequencerAnimationFrame extends FM.StatefulWidget {

  @override
  _SequencerAnimationFrameState createState() => _SequencerAnimationFrameState();

}

class _SequencerAnimationFrameState extends FM.State<SequencerAnimationFrame> {

  @override
  FM.Widget build(FM.BuildContext context) {
    return FM.Column(
      children: [
        FM.Expanded(
            child:AnimationFrame(startFormation: "Static Square")
        ),
        FM.Row(
          children: [
            FM.Expanded(
                child: Button("Undo")
            ),
            FM.Expanded(
                child: Button("Reset")
            ),
            FM.Expanded(
                child: Button("Copy")
            ),
            FM.Expanded(
                child: Button("Paste")
            ),
          ],
        ),
        FM.Row(
          children: [
            FM.Expanded(
                child: Button("Help")
            ),
            FM.Expanded(
                child: Button("Settings")
            ),
            FM.Expanded(
                child: Button("Abbrev")
            ),
            FM.Expanded(
                child: Button("Calls")
            ),
          ],
        ),
      ],
    );
  }

}
