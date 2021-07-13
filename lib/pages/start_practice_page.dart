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
import 'package:flutter/services.dart';
import 'package:provider/provider.dart' as pp;
import 'package:taminations/color.dart';
import 'package:taminations/common.dart';

import '../common.dart';
import 'page.dart';

class StartPracticePage extends fm.StatefulWidget {

  @override
  _StartPracticePageState createState() => _StartPracticePageState();
}

class _StartPracticePageState extends fm.State<StartPracticePage> {

  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft
    ]);
  }

  @override
  void dispose() {
    if (isSmallDevice(context))
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown
      ]);
    else
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
        DeviceOrientation.landscapeLeft,
        DeviceOrientation.landscapeRight
      ]);
    super.dispose();
  }

  @override
  fm.Widget build(fm.BuildContext context) {
    return  Page(
        child: StartPracticeFrame()
    );
  }
}

//  Wrapper widget to handle taps
class _TapDetector extends fm.StatelessWidget {
  final String text;
  final Color color;
  final fm.StatelessWidget child;
  _TapDetector({
    required this.text,
    required this.color,
    required this.child});

  @override
  fm.Widget build(fm.BuildContext context) =>
      pp.Consumer<TamState>(
          builder: (context,appState,_) {
            return fm.Material(
              color: color,
              child: fm.InkWell(
                highlightColor: color.darker(),
                  onTap: () {
                    if (text == 'Tutorial')
                      appState.change(mainPage: MainPage.TUTORIAL);
                    else
                      appState.change(mainPage: MainPage.PRACTICE, level: text);
                  },
                  child:child
              ),
            );
          });
}

//  Wrapper widget to style level text
class _StartPracticeItem extends fm.StatelessWidget {
  final String text;
  final Color color;
  _StartPracticeItem({required this.text, required this.color});

  @override
  fm.Widget build(fm.BuildContext context) =>
      fm.Expanded(
        child: _TapDetector(
          text: text,
          color: color,
          child: fm.Container(
            decoration: fm.BoxDecoration(
                border: fm.Border(
                    top: fm.BorderSide(width: 1, color: fm.Colors.black),
                    left: fm.BorderSide(width: 1, color: fm.Colors.black)
                )),
            child: fm.Align(
                alignment: fm.Alignment.center,
                child: fm.Text(text, style: fm.TextStyle(fontWeight: fm.FontWeight.bold, fontSize: 20))),
          ),
        ),
      );
}

class _StartPracticeRadioGroup extends fm.StatelessWidget {

  final String groupValue;
  final List<String> values;
  final void Function(String? value) onChanged;
  _StartPracticeRadioGroup({
    required this.groupValue,
    required this.values,
    required this.onChanged});

  @override
  fm.Widget build(fm.BuildContext context) {
    return fm.Container(
        color: Color.FLOOR,
        margin: fm.EdgeInsets.only(left:20, bottom:10),
        child: fm.Row (
            children: values.map((v) => [
              fm.Radio<String>(
                  value: v,
                  groupValue: groupValue,
                  onChanged: onChanged
              ),
              fm.Text(v)
            ]).expand((e) => e).toList()
        ));
  }
}

class StartPracticeFrame extends fm.StatefulWidget {
  @override
  _StartPracticeFrameState createState() => _StartPracticeFrameState();
}

class _StartPracticeFrameState extends fm.State<StartPracticeFrame> {

  @override
  fm.Widget build(fm.BuildContext context) {
    return pp.Consumer<Settings>(
        builder: (context, settings, child) {
          return fm.Container(
            color: Color.FLOOR,
            child: fm.Row(
              crossAxisAlignment: fm.CrossAxisAlignment.stretch,
              children: [
                fm.Expanded(
                  child: fm.Container(
                    margin: fm.EdgeInsets.only(left:20,top:20),
                    child: fm.Column(
                      crossAxisAlignment: fm.CrossAxisAlignment.stretch,
                      children: [
                        fm.Text(
                            'Choose a Gender', style: fm.TextStyle(fontSize: 20)),
                        _StartPracticeRadioGroup(
                            groupValue: settings.practiceGender,
                            values: ['Boy', 'Girl'],
                            onChanged: (value) {
                              setState(() {
                                settings.practiceGender = value ?? 'Boy';
                              });
                            }),
                        fm.Text('Speed for Practice',
                            style: fm.TextStyle(fontSize: 20)),
                        _StartPracticeRadioGroup(
                            groupValue: settings.practiceSpeed,
                            values: ['Slow', 'Moderate', 'Normal'],
                            onChanged: (value) {
                              setState(() {
                                settings.practiceSpeed = value ?? 'Slow';
                              });
                            }),
                        if (TamUtils.isTouchDevice)
                          fm.Text(
                              'Primary Control', style: fm.TextStyle(fontSize: 20)),
                        if (TamUtils.isTouchDevice)
                          _StartPracticeRadioGroup(
                              groupValue: settings.primaryControl,
                              values: ['Left Finger', 'Right Finger'],
                              onChanged: (value) {
                                setState(() {
                                  settings.primaryControl = value ?? 'Right Finger';
                                });
                              }),
                        if (!TamUtils.isTouchDevice)
                          fm.Text(
                              'Mouse Control', style: fm.TextStyle(fontSize: 20)),
                        if (!TamUtils.isTouchDevice)
                          _StartPracticeRadioGroup(
                              groupValue: settings.mouseControl,
                              values: ['Dancer moves only when mouse button is pressed',
                                'Dancer moves only when mouse button is released'],
                              onChanged: (value) {
                                setState(() {
                                  settings.primaryControl = value ?? 'Dancer moves only when mouse button is pressed';
                                });
                              }),
                      ],
                    ),
                  ),
                ),
                fm.Expanded(
                  child: fm.Column(
                    crossAxisAlignment: fm.CrossAxisAlignment.stretch,
                    children: [
                      _StartPracticeItem(
                          text: 'Tutorial', color: Color.LIGHTGREY),
                      fm.Expanded(
                        child: fm.Row(
                          crossAxisAlignment: fm.CrossAxisAlignment.stretch,
                          children: [
                            _StartPracticeItem(text: 'Basic 1', color: Color.B1),
                            _StartPracticeItem(text: 'Basic 2', color: Color.B2)
                          ],
                        ),
                      ),
                      fm.Expanded(
                        child: fm.Row(
                          crossAxisAlignment: fm.CrossAxisAlignment.stretch,
                          children: [
                            _StartPracticeItem(
                                text: 'Mainstream', color: Color.MS),
                            _StartPracticeItem(text: 'Plus', color: Color.PLUS)
                          ],
                        ),
                      ),
                      fm.Expanded(
                        child: fm.Row(
                          crossAxisAlignment: fm.CrossAxisAlignment.stretch,
                          children: [
                            _StartPracticeItem(text: 'A-1', color: Color.A1),
                            _StartPracticeItem(text: 'A-2', color: Color.A2)
                          ],
                        ),
                      ),
                      fm.Expanded(
                        child: fm.Row(
                          crossAxisAlignment: fm.CrossAxisAlignment.stretch,
                          children: [
                            _StartPracticeItem(text: 'C-1', color: Color.C1),
                            _StartPracticeItem(text: 'C-2', color: Color.C2)
                          ],
                        ),
                      ),
                      fm.Expanded(
                        child: fm.Row(
                          crossAxisAlignment: fm.CrossAxisAlignment.stretch,
                          children: [
                            _StartPracticeItem(text: 'C-3A', color: Color.C3A),
                            _StartPracticeItem(text: 'C-3B', color: Color.C3B)
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        });

  }
}
