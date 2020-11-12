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
import '../main.dart';
import 'web_page.dart';
import 'level.dart';
import '../level_data.dart';
import 'settings.dart';
import 'calls.dart';
import '../title_bar.dart';
import '../request.dart';

class FirstLandscapePage extends FM.StatefulWidget {

  @override
  _FirstLandscapePageState createState() => _FirstLandscapePageState();

}

class _FirstLandscapePageState extends FM.State<FirstLandscapePage> {

  FM.Widget rightChild = WebFrame("info/about.html");
  String title = "Taminations";

  @override
  FM.Widget build(FM.BuildContext context) {
    return FM.Scaffold(
        appBar: FM.PreferredSize(
            preferredSize: FM.Size.fromHeight(56.0),
            child: TitleBar(title:title)
        ),
        body: RequestHandler(
            child:FirstLandscapeFrame(rightChild:rightChild),
          handler: (request) {
            if (request.action == Action.PRACTICE) {
              var route = TaminationsRoute(practice: true);
              FM.Router.of(context).routerDelegate.setNewRoutePath(route);
            }
            else if (request.action == Action.SETTINGS) {
              showSettingsFrame();
            }
            else if (request.action == Action.ABOUT) {
              showAboutFrame();
            }
            else if (request.action == Action.LEVEL) {
              showCallsFrame(request.params["level"]);
            }
            //FM.Router.of(context).routerDelegate.setNewRoutePath(route);
          }
        )
    );
  }

  void showAboutFrame() {
    setState(() {
      rightChild = WebFrame("info/about.html");
      title = "Taminations";
    });
  }

  void showSettingsFrame() {
    setState(() {
      rightChild = SettingsFrame();
      title = "Settings";
    });
  }

  void showCallsFrame(String level) {
    setState(() {
      rightChild = CallsFrame(level);
      title = LevelData.find(level).name;
    });
  }

}

class FirstLandscapeFrame extends FM.StatelessWidget {

  final FM.Widget rightChild;
  FirstLandscapeFrame({@FM.required this.rightChild});

  @override
  FM.Widget build(FM.BuildContext context) {
    return FM.Row(
      crossAxisAlignment: FM.CrossAxisAlignment.stretch,
      children: [
        FM.Expanded(child:LevelFrame(), flex: 1),
        FM.Expanded(child:rightChild, flex: 3)
      ],
    );
  }

}
