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
import 'package:provider/provider.dart' as pp;

import '../common.dart';

//  Widget for one full-screen display
//  Not related to the Flutter Material Page class
class Page extends fm.StatelessWidget {

  final fm.Widget child;
  Page({@fm.required this.child});

  @override
  fm.Widget build(fm.BuildContext context) {
    return pp.ChangeNotifierProvider(
      create: (_) => TitleModel(),
      child: fm.Scaffold(
          backgroundColor: Color.GRAY,
          appBar: fm.PreferredSize(
              preferredSize: fm.Size.fromHeight(56.0),
              child: TitleBar()),
          body: child),
    );
  }
}
