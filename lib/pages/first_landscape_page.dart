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

import '../color.dart';
import '../main.dart';
import '../request.dart';
import '../title_bar.dart';
import 'calls_page.dart';
import 'level_page.dart';
import 'settings_page.dart';
import 'web_page.dart';

class FirstLandscapePage extends fm.StatefulWidget {

  @override
  _FirstLandscapePageState createState() => _FirstLandscapePageState();

}

class _FirstLandscapePageState extends fm.State<FirstLandscapePage> {

  String title = 'Taminations';

  @override
  fm.Widget build(fm.BuildContext context) {
    var router = fm.Router.of(context).routerDelegate as TaminationsRouterDelegate;
    var path = router.currentConfiguration;
    return fm.Scaffold(
      backgroundColor: Color.GRAY,
        appBar: fm.PreferredSize(
            preferredSize: fm.Size.fromHeight(56.0),
            child: TitleBar(title:title)
        ),
        body: RequestHandler(
            child:FirstLandscapeFrame(rightChild:
                path.settings
                    ? SettingsFrame()
                    :path.level?.isNotEmpty ?? false
                    ? CallsFrame(path.level)
                    : WebFrame('info/about.html')),
          handler: (request) {
            if (request.action == Action.PRACTICE) {
              router.setNewRoutePath(TaminationsRoute(practice: true, newPage: true));
            }
            else if (request.action == Action.SEQUENCER) {
              router.setNewRoutePath(TaminationsRoute(sequencer: true, newPage: true));
            }
            else if (request.action == Action.SETTINGS) {
              router.setNewRoutePath(TaminationsRoute(settings: true));
            }
            else if (request.action == Action.ABOUT) {
              router.setNewRoutePath(TaminationsRoute(about: true));
            }
            else if (request.action == Action.LEVEL) {
              router.setNewRoutePath(TaminationsRoute(level: request('level')));
            }
          }
        )
    );
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
        fm.VerticalDivider(color: Color.BLACK, width: 2.0,),
        fm.Expanded(child:rightChild, flex: 3)
      ],
    );
  }

}
