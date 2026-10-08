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

import 'package:flutter/material.dart' as fm;
import 'package:flutter/services.dart';
import 'package:provider/provider.dart' as pp;

import '../common_flutter.dart';
import 'calls_page.dart';
import 'page.dart';

class StartPracticePage extends fm.StatefulWidget {

  @override
  _StartPracticePageState createState() => _StartPracticePageState();
}

class _StartPracticePageState extends fm.State<StartPracticePage> {

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
                    else if(Settings.practiceSpecific)
                      appState.change(level:text);
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
        margin: fm.EdgeInsets.only(left:10, bottom:0),
        child: fm.RadioGroup(
          onChanged: onChanged,
          groupValue: groupValue,
          child: fm.Row (
              children: values.map((v) => [
                fm.Radio<String>(
                    value: v,
                ),
                fm.Text(v)
              ]).expand((e) => e).toList()
          ),
        ));
  }
}

class _StartPracticeCheckBox extends fm.StatelessWidget {
  final String text;
  final bool value;
  final void Function(bool? value) onChanged;
  _StartPracticeCheckBox({required this.text, required this.value, required this.onChanged});
  @override
  fm.Widget build(fm.BuildContext context) {
    return fm.Material(
      child: fm.CheckboxListTile(
        tileColor: Color.FLOOR,
        title: fm.Text(text,style: fm.TextStyle(fontSize: 20)),
        value: value,
        controlAffinity: fm.ListTileControlAffinity.leading,
        onChanged: onChanged),
    );
  }

}

class _StartPracticeLeftColumn extends fm.StatefulWidget {
  @override
  fm.State<_StartPracticeLeftColumn> createState() => _StartPracticeLeftColumnState();
}

class _StartPracticeLeftColumnState extends fm.State<_StartPracticeLeftColumn> {
  @override
  fm.Widget build(fm.BuildContext context) {
    return fm.Container(
      margin: fm.EdgeInsets.only(left:10,top:10),
      child: fm.ListView(
        //crossAxisAlignment: fm.CrossAxisAlignment.stretch,
        children: [
          fm.Text(
              'Choose a Gender', style: fm.TextStyle(fontSize: 20)),
          _StartPracticeRadioGroup(
              groupValue: Settings.practiceGender,
              values: ['Boy', 'Girl'],
              onChanged: (value) {
                setState(() {
                  Settings.practiceGender = value ?? 'Boy';
                });
              }),
          fm.Text('Speed for Practice',
              style: fm.TextStyle(fontSize: 20)),
          _StartPracticeRadioGroup(
              groupValue: Settings.practiceSpeed,
              values: ['Slow', 'Moderate', 'Normal'],
              onChanged: (value) {
                setState(() {
                  Settings.practiceSpeed = value ?? 'Slow';
                });
              }),
          if (TamUtils.isTouchDevice)
            fm.Text(
                'Primary Control', style: fm.TextStyle(fontSize: 20)),
          if (TamUtils.isTouchDevice)
            _StartPracticeRadioGroup(
                groupValue: Settings.primaryControl,
                values: ['Left Finger', 'Right Finger'],
                onChanged: (value) {
                  setState(() {
                    Settings.primaryControl = value ?? 'Right Finger';
                  });
                }),
          if (!TamUtils.isTouchDevice)
            fm.Text(
                'Mouse Control', style: fm.TextStyle(fontSize: 20)),
          if (!TamUtils.isTouchDevice)
            _StartPracticeRadioGroup(
                groupValue: Settings.mouseControl,
                values: ['Press mouse button to move',
                  'Release mouse button to move'],
                onChanged: (value) {
                  setState(() {
                    Settings.mouseControl = value ?? 'Press mouse button to move';
                  });
                }),
          _StartPracticeCheckBox(
            text: 'Practice a specific call',
            value: Settings.practiceSpecific,
            onChanged: (value) {
              setState(() {
                Settings.practiceSpecific = value ?? false;
              });
            },
          ),
        ],
      ),
    );
  }
}

class _StartPracticeRightColumn extends fm.StatelessWidget {
  @override
  fm.Widget build(fm.BuildContext context) {
    return fm.Column(
      crossAxisAlignment: fm.CrossAxisAlignment.stretch,
      children: [
        _StartPracticeItem(
            text: 'Tutorial', color: Color.LIGHTGREY),
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
    );
  }

}

class _StartPracticeCallsColumn extends fm.StatefulWidget {
  @override
  fm.State<_StartPracticeCallsColumn> createState() => _StartPracticeCallsColumnState();
}

class _StartPracticeCallsColumnState extends fm.State<_StartPracticeCallsColumn> {
  @override
  fm.Widget build(fm.BuildContext context) {
    return pp.Consumer<TamState>(
      builder: (context,tamState,child) {
        return fm.Column(
          children: [
            fm.Expanded(child: CallsFrame(destination: MainPage.PRACTICE)),
            Button('Return to Level Selection',onPressed: () {
              setState(() {
                tamState.change(level: '');
              });
            }),
          ],
        );
      }
    );
  }
}

class StartPracticeFrame extends fm.StatefulWidget {
  @override
  _StartPracticeFrameState createState() => _StartPracticeFrameState();
}

class _StartPracticeFrameState extends fm.State<StartPracticeFrame> {

  @override
  fm.Widget build(fm.BuildContext context) {
    return pp.Consumer2<Settings,TamState>(
        builder: (context, settings, tamstate, child) {
          return fm.OrientationBuilder(
            builder: (context,orientation) {
              if (orientation == fm.Orientation.portrait)
                return fm.Container(
                  color: Color.FLOOR,
                  child: fm.Center(
                      child: fm.Text(
                          'Resize your window wider for Practice.',
                        textAlign: TextAlign.center,
                        style: fm.TextStyle(fontSize: 40),
                      ))
                );
              return fm.Container(
                color: Color.FLOOR,
                child: fm.Row(
                  crossAxisAlignment: fm.CrossAxisAlignment.stretch,
                  children: [
                    fm.Expanded(
                      child: _StartPracticeLeftColumn(),
                    ),
                    fm.Expanded(
                      child: (tamstate.level ?? '').isBlank ||
                             !Settings.practiceSpecific
                          ? _StartPracticeRightColumn()
                          : _StartPracticeCallsColumn()
                    )
                  ],
                ),
              );
            }
          );
        });

  }
}
