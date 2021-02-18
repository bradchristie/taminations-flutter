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

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart' as fm;
import 'extensions.dart';

class VirtualKeyboardVisible {
  bool isVisible = false;
}

enum MainPage {
  LEVELS,
  ANIMLIST,   // portrait only
  ANIMATIONS,
  SEQUENCER,
  STARTPRACTICE,
  PRACTICE,
  TUTORIAL
}
extension MainPageEx on String {
  MainPage toMainPage() => MainPage.values.firstWhere((d) => describeEnum(d) == this);
}

enum DetailPage {
  NONE,  // portrait only
  CALLS,
  SETTINGS,
  DEFINITION,
  HELP,
  ABBREVIATIONS
}
extension DetailPageEx on String {
  DetailPage toDetailPage() => DetailPage.values.firstWhere((d) => describeEnum(d) == this);
}

//  This class holds state information used to
//  generate the current layout
class TamState extends fm.ChangeNotifier {

  String? _level;
  String? get level => _level;
  String? _link;
  String? get link => _link;
  int _animnum;
  int get animnum => _animnum;
  MainPage? _mainPage;
  MainPage? get mainPage => _mainPage;
  DetailPage? _detailPage;
  DetailPage? get detailPage => _detailPage;

  @override
  bool operator ==(Object other) =>
      (other is TamState)
          && other.toString() == toString();

  //  Default parameters generate the layout for the main menu
  TamState({
    level,
    link,
    animnum = -1,
    mainPage = MainPage.LEVELS,
    detailPage = DetailPage.NONE
  }) : _level=level, _link=link, _animnum=animnum,
        _mainPage=mainPage, _detailPage=detailPage;

  void change({String? level, String? link, int? animnum,
    MainPage? mainPage, DetailPage? detailPage}) {
    final before = toString();
    _level = level ?? _level;
    _link = link ?? _link;
    _animnum = animnum ?? _animnum;
    _mainPage = mainPage ?? _mainPage;
    _detailPage = detailPage ?? _detailPage;
    if (toString() != before)
      notifyListeners();
  }

  //  For URL generation
  @override
  String toString() => <String>[
    if (level != null && level!.isNotEmpty) 'level=$level',
    if (animnum >= 0) 'animnum=${animnum.d}',
    if (link != null && link!.isNotEmpty) 'link=$link',
    if (mainPage != null) 'main=${describeEnum(mainPage!)}',
    if (detailPage != null && detailPage!=DetailPage.NONE)
      'detail=${describeEnum(detailPage!)}'
  ].join('&');

  bool get isBlank => toString().isBlank;

}

