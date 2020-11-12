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
import 'package:provider/provider.dart' as PP;
import 'package:flutter/services.dart';
import 'package:taminations/color.dart';

import '../title_bar.dart';
import '../settings.dart';

class StartPracticePage extends FM.StatelessWidget {

  @override
  FM.Widget build(FM.BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    return FM.Scaffold(
        appBar: FM.PreferredSize(
            preferredSize: FM.Size.fromHeight(56.0),
            child: TitleBar(
                title: "Practice"
            )
        ),
        body: StartPracticeFrame()
    );
  }

}

//  Wrapper widget to handle taps
class _TapDetector extends FM.StatelessWidget {
  final String text;
  final FM.StatelessWidget child;
  _TapDetector({this.text,this.child});

  @override
  FM.Widget build(FM.BuildContext context) =>
      FM.GestureDetector(
          onTap: () {
          },
          child:child
      );

}

//  Wrapper widget to style level text
class _StartPracticeItem extends FM.StatelessWidget {
  final String text;
  final Color color;
  _StartPracticeItem({@FM.required this.text, @FM.required this.color});

  @override
  FM.Widget build(FM.BuildContext context) =>
      FM.Expanded(
        child: FM.Container(
          decoration: FM.BoxDecoration(
              color: color,
              border: FM.Border(
                  top: FM.BorderSide(width: 1, color: FM.Colors.black),
                  left: FM.BorderSide(width: 1, color: FM.Colors.black)
              )),
          child: FM.Align(
              alignment: FM.Alignment.center,
              child: FM.Text(text, style: FM.TextStyle(fontWeight: FM.FontWeight.bold, fontSize: 20))),
        ),
      );
}

class _StartPracticeRadioGroup extends FM.StatelessWidget {

  final String groupValue;
  final List<String> values;
  final void Function(String value) onChanged;
  _StartPracticeRadioGroup({@FM.required this.groupValue,
    @FM.required this.values,
    @FM.required this.onChanged});

  @override
  FM.Widget build(FM.BuildContext context) {
    return FM.Container(
        color: Color.FLOOR,
        margin: FM.EdgeInsets.only(bottom:3),
        child: FM.Row (
            children: values.map((v) => [
              FM.Radio<String>(
                  value: v,
                  groupValue: groupValue,
                  onChanged: onChanged
              ),
              FM.Text(v)
            ]).expand((e) => e).toList()
        ));
  }
}

class StartPracticeFrame extends FM.StatefulWidget {
  @override
  _StartPracticeFrameState createState() => _StartPracticeFrameState();
}

class _StartPracticeFrameState extends FM.State<StartPracticeFrame> {

  @override
  FM.Widget build(FM.BuildContext context) {
    return PP.Consumer<Settings>(
        builder: (context, settings, child) {
          return FM.Row(
            crossAxisAlignment: FM.CrossAxisAlignment.stretch,
            children: [
              FM.Expanded(
                child: FM.Container(
                  color: Color.FLOOR,
                  child: FM.Column(
                    crossAxisAlignment: FM.CrossAxisAlignment.stretch,
                    children: [
                      FM.Text(
                          "Choose a Gender", style: FM.TextStyle(fontSize: 20)),
                      _StartPracticeRadioGroup(
                          groupValue: settings.practiceGender,
                          values: ["Boy", "Girl"],
                          onChanged: (value) {
                            setState(() {
                              settings.practiceGender = value;
                            });
                          }),
                      FM.Text("Speed for Practice",
                          style: FM.TextStyle(fontSize: 20)),
                      _StartPracticeRadioGroup(
                          groupValue: settings.practiceSpeed,
                          values: ["Slow", "Moderate", "Normal"],
                          onChanged: (value) {
                            setState(() {
                              settings.practiceSpeed = value;
                            });
                          }),
                      FM.Text(
                          "Primary Control", style: FM.TextStyle(fontSize: 20)),
                      _StartPracticeRadioGroup(
                          groupValue: settings.primaryControl,
                          values: ["Left Finger", "Right Finger"],
                          onChanged: (value) {
                            setState(() {
                              settings.primaryControl = value;
                            });
                          }),
                    ],
                  ),
                ),
              ),
              FM.Expanded(
                child: FM.Column(
                  crossAxisAlignment: FM.CrossAxisAlignment.stretch,
                  children: [
                    _StartPracticeItem(
                        text: "Tutorial", color: Color.LIGHTGREY),
                    FM.Expanded(
                      child: FM.Row(
                        crossAxisAlignment: FM.CrossAxisAlignment.stretch,
                        children: [
                          _StartPracticeItem(text: "Basic 1", color: Color.B1),
                          _StartPracticeItem(text: "Basic 2", color: Color.B2)
                        ],
                      ),
                    ),
                    FM.Expanded(
                      child: FM.Row(
                        crossAxisAlignment: FM.CrossAxisAlignment.stretch,
                        children: [
                          _StartPracticeItem(
                              text: "Mainstream", color: Color.MS),
                          _StartPracticeItem(text: "Plus", color: Color.PLUS)
                        ],
                      ),
                    ),
                    FM.Expanded(
                      child: FM.Row(
                        crossAxisAlignment: FM.CrossAxisAlignment.stretch,
                        children: [
                          _StartPracticeItem(text: "A-1", color: Color.A1),
                          _StartPracticeItem(text: "A-2", color: Color.A2)
                        ],
                      ),
                    ),
                    FM.Expanded(
                      child: FM.Row(
                        crossAxisAlignment: FM.CrossAxisAlignment.stretch,
                        children: [
                          _StartPracticeItem(text: "C-1", color: Color.C1),
                          _StartPracticeItem(text: "C-2", color: Color.C2)
                        ],
                      ),
                    ),
                    FM.Expanded(
                      child: FM.Row(
                        crossAxisAlignment: FM.CrossAxisAlignment.stretch,
                        children: [
                          _StartPracticeItem(text: "C-3A", color: Color.C3A),
                          _StartPracticeItem(text: "C-3B", color: Color.C3B)
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          );
        });

  }
}
