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

import 'package:flutter/material.dart' as fm;
import 'package:provider/provider.dart' as pp;

import '../common_flutter.dart';
import 'markdown_page.dart';
import 'page.dart';
import 'calls_page.dart';
import 'level_page.dart';
import 'settings_page.dart';

class FirstLandscapePage extends fm.StatelessWidget {

  @override
  fm.Widget build(fm.BuildContext context) {
    return Page(
      child: pp.Consumer<TamState>(
          builder: (context,appState,_) {
            return FirstLandscapeFrame(rightChild:
            appState.detailPage == DetailPage.SETTINGS
                ? SettingsFrame()
                : appState.detailPage == DetailPage.CALLS
                ? CallsFrame()
                : MarkdownFrame('info/about.html'));
          }
      ),
    );
  }

}

class FirstLandscapeFrame extends fm.StatelessWidget {

  final fm.Widget rightChild;
  FirstLandscapeFrame({required this.rightChild});

  @override
  fm.Widget build(fm.BuildContext context) {
    return fm.Row(
      crossAxisAlignment: fm.CrossAxisAlignment.stretch,
      children: [
        fm.Expanded(flex: 1, child:LevelFrame()),
        fm.VerticalDivider(color: Color.BLACK, width: 2.0,),
        fm.Expanded(flex: 3, child:rightChild)
      ],
    );
  }

}
