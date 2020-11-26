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
import '../title_bar.dart';
import '../color.dart';
import '../main.dart';
import '../request.dart';

class LevelPage extends FM.StatelessWidget {

  @override
  FM.Widget build(FM.BuildContext context) {
    return FM.Scaffold(
        appBar: FM.PreferredSize(
            preferredSize: FM.Size.fromHeight(56.0),
            child: TitleBar(title:"Taminations")
        ),
        body: RequestHandler(
          child: LevelFrame(),
          handler: (request) {
            var route = TaminationsRoute(level:request("level"));
            if (request.action == Action.PRACTICE) route = TaminationsRoute(practice: true);
            else if (request.action == Action.SETTINGS) route = TaminationsRoute(settings: true);
            else if (request.action == Action.SEQUENCER) route = TaminationsRoute(sequencer: true);
            else if (request.action == Action.ABOUT) route = TaminationsRoute(about: true);
            FM.Router.of(context).routerDelegate.setNewRoutePath(route);
          }
        )
    );
  }

}

//  Wrapper widget to handle taps
class _TapDetector extends FM.StatelessWidget {
  final String text;
  final FM.StatelessWidget child;
  _TapDetector({FM.Key key,this.text,this.child}) : super(key:key);

  @override
  FM.Widget build(FM.BuildContext context) =>
      FM.GestureDetector(
          onTap: () {
            var request = Request(action:Action.LEVEL,params:{"level":text});
            if (text == "Practice") request = Request(action:Action.PRACTICE);
            else if (text == "Sequencer") request = Request(action:Action.SEQUENCER);
            else if (text == "Settings") request = Request(action:Action.SETTINGS);
            else if (text == "About") request = Request(action:Action.ABOUT);
            RequestHandler.of(context).processRequest(request);
          },
          child:child
      );

}

//  Wrapper widget to style level text
class _LevelTextWidget extends FM.StatelessWidget {
  final String text;
  _LevelTextWidget({this.text});

  @override
  FM.Widget build(FM.BuildContext context) =>
      FM.Align(
        alignment: FM.Alignment.centerLeft,
        child: FM.Text(text, style: FM.TextStyle(fontWeight: FM.FontWeight.bold, fontSize: 20)));
}

//  Widget for level that completely spans a horizontal line
class _FullLineWidget extends FM.StatelessWidget {
  final String text;
  final FM.Color background;
  _FullLineWidget({this.text,this.background});

  @override
  FM.Widget build(FM.BuildContext context) =>
      FM.Expanded(
          child: _TapDetector(text:text,
              key: FM.Key(text),
              child: FM.Container(
                  decoration: FM.BoxDecoration(
                      color: background,
                      border: FM.Border(top: FM.BorderSide(width: 1, color: FM.Colors.black))),
                  padding: FM.EdgeInsets.only(left: 20.0),
                  child: _LevelTextWidget(text:text))));

}

//  Widget for level that's indented below a parent level
class _IndentedLineWidget extends FM.StatelessWidget {
  final String text;
  final FM.Color background;
  final FM.Color indented;
  _IndentedLineWidget({this.text,this.background,this.indented});

  @override
  FM.Widget build(FM.BuildContext context) =>
      FM.Expanded(
          child: FM.Row(children: <FM.Widget>[
            FM.Flexible(flex: 1, child: FM.Container(color: indented)),
            FM.Flexible(
                flex: 9,
                child: _TapDetector(text:text,
                    key: FM.Key(text),
                    child:FM.Container(
                        decoration: FM.BoxDecoration(
                            color: background,
                            border: FM.Border(
                                top: FM.BorderSide(width: 1, color: FM.Colors.black),
                                left: FM.BorderSide(width: 1, color: FM.Colors.black))),
                        padding: FM.EdgeInsets.only(left: 20.0),
                        child: _LevelTextWidget(text:text)))
            )]));

}


//  Widget for two levels combined on one horizontal line
class _TwoItemLineWidget extends FM.StatelessWidget {
  final String text1;
  final String text2;
  _TwoItemLineWidget({this.text1,this.text2});

  @override
  FM.Widget build(FM.BuildContext context) =>
      FM.Expanded(
          child: FM.Row(children: <FM.Widget>[
            FM.Flexible(
                flex: 1,
                child: _TapDetector(
                    text: text1,
                    key: FM.Key(text1),
                    child:FM.Container(
                        decoration: FM.BoxDecoration(
                            color: Color.LIGHTGREY,
                            border: FM.Border(
                                top: FM.BorderSide(width: 1, color: FM.Colors.black))),
                        padding: FM.EdgeInsets.only(left: 20.0),
                        child: _LevelTextWidget(text:text1)))),
            FM.Flexible(
                flex: 1,
                child: _TapDetector(
                    text: text2,
                    key: FM.Key(text2),
                    child:FM.Container(
                        decoration: FM.BoxDecoration(
                            color: Color.LIGHTGREY,
                            border: FM.Border(
                                top: FM.BorderSide(width: 1, color: FM.Colors.black),
                                left: FM.BorderSide(width: 1, color: FM.Colors.black))),
                        padding: FM.EdgeInsets.only(left: 20.0),
                        child: _LevelTextWidget(text:text2)))
            )]));

}

class LevelFrame extends FM.StatelessWidget {

  @override
  FM.Widget build(FM.BuildContext context) {
    return FM.Column(
          crossAxisAlignment: FM.CrossAxisAlignment.stretch,
          children: <FM.Widget>[
            _FullLineWidget(
                text:"Basic and Mainstream",
                background:Color.BMS),
            _IndentedLineWidget(
                text:"Basic 1",
                background:Color.B1,
                indented:Color.BMS),
            _IndentedLineWidget(
                text:"Basic 2",
                background:Color.B2,
                indented:Color.BMS),
            _IndentedLineWidget(
                text:"Mainstream",
                background:Color.MS,
                indented:Color.BMS),
            _FullLineWidget(text:"Plus",
                background:Color.PLUS),
            _FullLineWidget(
                text:"Advanced",
                background:Color.ADV),
            _IndentedLineWidget(
                text:"A-1",
                background:Color.A1,
                indented:Color.ADV),
            _IndentedLineWidget(
                text:"A-2",
                background:Color.A2,
                indented:Color.ADV),
            _FullLineWidget(
                text:"Challenge",
                background:Color.CHALLENGE),
            _IndentedLineWidget(
                text:"C-1",
                background:Color.C1,
                indented:Color.CHALLENGE),
            _IndentedLineWidget(
                text:"C-2",
                background:Color.C2,
                indented:Color.CHALLENGE),
            _IndentedLineWidget(
                text:"C-3A",
                background:Color.C3A,
                indented:Color.CHALLENGE),
            _IndentedLineWidget(
                text:"C-3B",
                background:Color.C3B,
                indented:Color.CHALLENGE),
            _FullLineWidget(
                text:"Index of All Calls",
                background:Color.LIGHTGREY),
            _TwoItemLineWidget(
                text1:"Practice",
                text2:"Sequencer"),
            _TwoItemLineWidget(
                text1:"About",
                text2:"Settings")
          ],
        );
  }
}
