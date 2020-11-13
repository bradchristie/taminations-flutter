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

class SequencerCallsFrame extends FM.StatefulWidget {
  @override
  _SequencerCallsFrameState createState() => _SequencerCallsFrameState();
}

class _SequencerCallsFrameState extends FM.State<SequencerCallsFrame> {

  @override
  FM.Widget build(FM.BuildContext context) {
    return FM.Column(
      children: [
        FM.TextField(
          decoration: FM.InputDecoration.collapsed(hintText: "Enter calls"),
          enableSuggestions: false,
          style: FM.TextStyle(fontSize: 24),
          onChanged: (value) {
            setState(() {

            });
          },
        ),
        FM.Expanded(
          child: FM.Container()
        )
      ],
    );
  }

}
