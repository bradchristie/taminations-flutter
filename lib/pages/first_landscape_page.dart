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
import '../main.dart';
import 'web_page.dart';
import 'level_page.dart';
import '../level_data.dart';
import 'settings_page.dart';
import 'calls_page.dart';
import '../title_bar.dart';
import '../request.dart';
import '../color.dart';

class FirstLandscapePage extends fm.StatefulWidget {

  @override
  _FirstLandscapePageState createState() => _FirstLandscapePageState();

}

class _FirstLandscapePageState extends fm.State<FirstLandscapePage> {

  fm.Widget rightChild = WebFrame('info/about.html');
  String title = 'Taminations';

  @override
  fm.Widget build(fm.BuildContext context) {
    return fm.Scaffold(
      backgroundColor: Color.GRAY,
        appBar: fm.PreferredSize(
            preferredSize: fm.Size.fromHeight(56.0),
            child: TitleBar(title:title)
        ),
        body: RequestHandler(
            child:FirstLandscapeFrame(rightChild:rightChild),
          handler: (request) {
            if (request.action == Action.PRACTICE) {
              var route = TaminationsRoute(practice: true);
              fm.Router.of(context).routerDelegate.setNewRoutePath(route);
            }
            else if (request.action == Action.SEQUENCER) {
              var route = TaminationsRoute(sequencer: true);
              fm.Router.of(context).routerDelegate.setNewRoutePath(route);
            }
            else if (request.action == Action.SETTINGS) {
              showSettingsFrame();
            }
            else if (request.action == Action.ABOUT) {
              showAboutFrame();
            }
            else if (request.action == Action.LEVEL) {
              showCallsFrame(request('level'));
            }
            //FM.Router.of(context).routerDelegate.setNewRoutePath(route);
          }
        )
    );
  }

  void showAboutFrame() {
    setState(() {
      rightChild = WebFrame('info/about.html');
      title = 'Taminations';
    });
  }

  void showSettingsFrame() {
    setState(() {
      rightChild = SettingsFrame();
      title = 'Settings';
    });
  }

  void showCallsFrame(String level) {
    setState(() {
      rightChild = CallsFrame(level);
      title = LevelData.find(level).name;
    });
  }

}

class FirstLandscapeFrame extends fm.StatelessWidget {

  final fm.Widget rightChild;
  FirstLandscapeFrame({@fm.required this.rightChild});

  @override
  fm.Widget build(fm.BuildContext context) {
    return fm.Row(
      crossAxisAlignment: fm.CrossAxisAlignment.stretch,
      children: [
        fm.Expanded(child:LevelFrame(), flex: 1),
        fm.Expanded(child:rightChild, flex: 3)
      ],
    );
  }

}
