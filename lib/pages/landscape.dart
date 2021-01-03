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
import 'package:flutter/services.dart';

class LandscapeOnly extends fm.StatefulWidget {
  final fm.Widget child;
  LandscapeOnly({@fm.required this.child});
  @override
  _LandscapeOnlyState createState() => _LandscapeOnlyState();
}

class _LandscapeOnlyState extends fm.State<LandscapeOnly> {

  @override
  void initState() {
    super.initState();
    print('Landscape init');
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
  }

  @override
  void dispose() {
    print('Landscape dispose');
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown
    ]);
    super.dispose();
  }

  @override
  fm.Widget build(fm.BuildContext context) {
    return widget.child;
  }
}

class PortraitOnly extends fm.StatefulWidget {
  final fm.Widget child;
  PortraitOnly({@fm.required this.child}) : super(key:fm.ValueKey('Portrait Only'));
  @override
  _PortraitOnlyState createState() => _PortraitOnlyState();
}

class _PortraitOnlyState extends fm.State<PortraitOnly> {

  @override
  void initState() {
    super.initState();
    print('Portrait init');
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);
  }

  @override
  void dispose() {
    print('Portrait dispose');
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown
    ]);
    super.dispose();
  }

  @override
  fm.Widget build(fm.BuildContext context) {
    return widget.child;
  }
}
