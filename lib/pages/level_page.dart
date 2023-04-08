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

import '../common_flutter.dart';
import 'page.dart';

class LevelPage extends fm.StatelessWidget {

  @override
  fm.Widget build(fm.BuildContext context) {
    return Page(
        child: LevelFrame()
    );
  }

}

//  Wrapper widget to handle taps
class _TapDetector extends fm.StatelessWidget {
  final String text;
  final Color color;
  final fm.StatelessWidget child;
  _TapDetector({fm.Key? key,
    required this.text,
    required this.color,
    required this.child}) : super(key:key);

  @override
  fm.Widget build(fm.BuildContext context) =>
      pp.Consumer<TamState>(
          builder: (context,appState,_) {
            return fm.Material(
              color: color,
              child: fm.InkWell(
                  highlightColor: color.darker(),
                  onTap: () {
                    if (text == 'Practice')
                      appState.change(mainPage: MainPage.STARTPRACTICE);
                    else if (text == 'Sequencer')
                      appState.change(mainPage: MainPage.SEQUENCER,
                          detailPage: DetailPage.NONE);
                    else if (text == 'Settings')
                      appState.change(detailPage: DetailPage.SETTINGS);
                    else if (text == 'About')
                      appState.change(detailPage: DetailPage.HELP);
                    else
                      appState.change(detailPage: DetailPage.CALLS, level: text);
                  },
                  child:child
              ),
            );
          });

}

//  Wrapper widget to style level text
class _LevelTextWidget extends fm.StatelessWidget {
  final String text;
  _LevelTextWidget({required this.text});

  @override
  fm.Widget build(fm.BuildContext context) =>
      fm.Align(
        alignment: fm.Alignment.centerLeft,
        child: AutoSizeText(text, style: fm.TextStyle(fontWeight: fm.FontWeight.bold, fontSize: 20)));
}

//  Widget for level that completely spans a horizontal line
class _FullLineWidget extends fm.StatelessWidget {
  final String text;
  final Color background;
  _FullLineWidget({required this.text, required this.background});

  @override
  fm.Widget build(fm.BuildContext context) =>
      fm.Expanded(
          child: _TapDetector(text:text,
              key: fm.Key(text),
              color: background,
              child: fm.Container(
                  decoration: fm.BoxDecoration(
                      border: fm.Border(top: fm.BorderSide(width: 1, color: fm.Colors.black))),
                  padding: fm.EdgeInsets.only(left: 20.0),
                  child: _LevelTextWidget(text:text))));

}

//  Widget for level that's indented below a parent level
class _IndentedLineWidget extends fm.StatelessWidget {
  final String text;
  final Color background;
  final Color indented;
  _IndentedLineWidget({
    required this.text,
    required this.background,
    required this.indented});

  @override
  fm.Widget build(fm.BuildContext context) =>
      fm.Expanded(
          child: fm.Row(children: <fm.Widget>[
            fm.Flexible(flex: 1, child: fm.Container(color: indented)),
            fm.Flexible(
                flex: 9,
                child: _TapDetector(text:text,
                    key: fm.Key(text),
                    color: background,
                    child:fm.Container(
                        decoration: fm.BoxDecoration(
                            border: fm.Border(
                                top: fm.BorderSide(width: 1, color: fm.Colors.black),
                                left: fm.BorderSide(width: 1, color: fm.Colors.black))),
                        padding: fm.EdgeInsets.only(left: 20.0),
                        child: _LevelTextWidget(text:text)))
            )]));

}


//  Widget for two levels combined on one horizontal line
class _TwoItemLineWidget extends fm.StatelessWidget {
  final String text1;
  final String text2;
  _TwoItemLineWidget({
    required this.text1,
    required this.text2});

  @override
  fm.Widget build(fm.BuildContext context) =>
      fm.Expanded(
          child: fm.Row(children: <fm.Widget>[
            fm.Flexible(
                flex: 1,
                child: _TapDetector(
                  color:Color.LIGHTGREY,
                    text: text1,
                    key: fm.Key(text1),
                    child:fm.Container(
                        decoration: fm.BoxDecoration(
                            border: fm.Border(
                                top: fm.BorderSide(width: 1, color: fm.Colors.black))),
                        padding: fm.EdgeInsets.only(left: 20.0),
                        child: _LevelTextWidget(text:text1)))),
            fm.Flexible(
                flex: 1,
                child: _TapDetector(
                    text: text2,
                    color: Color.LIGHTGREY,
                    key: fm.Key(text2),
                    child:fm.Container(
                        decoration: fm.BoxDecoration(
                            border: fm.Border(
                                top: fm.BorderSide(width: 1, color: fm.Colors.black),
                                left: fm.BorderSide(width: 1, color: fm.Colors.black))),
                        padding: fm.EdgeInsets.only(left: 20.0),
                        child: _LevelTextWidget(text:text2)))
            )]));

}

class LevelFrame extends fm.StatelessWidget {

  @override
  fm.Widget build(fm.BuildContext context) {
    return fm.Column(
          crossAxisAlignment: fm.CrossAxisAlignment.stretch,
          children: <fm.Widget>[
            _FullLineWidget(
                text:'Basic and Mainstream' ,
                background:Color.BMS),
            _IndentedLineWidget(
                text:'SSD' ,
                background:Color.MS,
                indented:Color.BMS),
            _IndentedLineWidget(
                text:'Basic 1' ,
                background:Color.B1,
                indented:Color.BMS),
            _IndentedLineWidget(
                text:'Basic 2' ,
                background:Color.B2,
                indented:Color.BMS),
            _IndentedLineWidget(
                text:'Mainstream' ,
                background:Color.MS,
                indented:Color.BMS),
            _FullLineWidget(text:'Plus' ,
                background:Color.PLUS),
            _FullLineWidget(
                text:'Advanced' ,
                background:Color.ADV),
            _IndentedLineWidget(
                text:'A-1' ,
                background:Color.A1,
                indented:Color.ADV),
            _IndentedLineWidget(
                text:'A-2' ,
                background:Color.A2,
                indented:Color.ADV),
            _FullLineWidget(
                text:'Challenge' ,
                background:Color.CHALLENGE),
            _IndentedLineWidget(
                text:'C-1' ,
                background:Color.C1,
                indented:Color.CHALLENGE),
            _IndentedLineWidget(
                text:'C-2' ,
                background:Color.C2,
                indented:Color.CHALLENGE),
            _IndentedLineWidget(
                text:'C-3A' ,
                background:Color.C3A,
                indented:Color.CHALLENGE),
            _IndentedLineWidget(
                text:'C-3B' ,
                background:Color.C3B,
                indented:Color.CHALLENGE),
            _FullLineWidget(
                text:'Index of All Calls' ,
                background:Color.LIGHTGREY),
            _TwoItemLineWidget(
                text1:'Practice' ,
                text2:'Sequencer' ),
            _TwoItemLineWidget(
                text1:'About' ,
                text2:'Settings' )
          ],
        );
  }
}
