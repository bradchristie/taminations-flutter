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

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart' as fm;
import 'package:taminations/common.dart';
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
  String? _animname;
  String? get animname => _animname;
  MainPage? _mainPage;
  MainPage? get mainPage => _mainPage;
  DetailPage? _detailPage;
  DetailPage? get detailPage => _detailPage;
  //  More fields for embed feature
  bool embed;
  bool play;
  bool loop;
  bool grid;
  String axes;
  bool definition;
  //  Fields for sequencer
  String? formation;
  String? calls;
  String? helplink;
  @override
  bool operator ==(Object other) =>
      (other is TamState)
          && other.toString() == toString();

  //  Default parameters generate the layout for the main menu
  TamState({
    level,
    link,
    animnum = -1,
    animname,
    mainPage = MainPage.LEVELS,
    detailPage = DetailPage.NONE,
    this.embed = false,
    this.play = false,
    this.loop = false,
    this.grid = false,
    this.definition = false,
    this.axes = 'None',
    this.formation,
    this.calls
  }) : _level=level, _link=link, _animnum=animnum, _animname=animname,
        _mainPage=mainPage, _detailPage=detailPage;

  void change({String? level, String? link, int? animnum, String? animname,
    MainPage? mainPage, DetailPage? detailPage,
    bool? embed, bool? play, bool? loop, bool? grid, bool? definition, String? axes,
    String? formation, String? calls, String? helplink}) {
    final before = toString();
    final params = Uri.parse(link ?? '').queryParameters;
    _level = level ?? _level;
    if (!(link ?? '').isBlank) {
      _link = Uri.parse(link!).path;
    }
    if (animnum != null) {
      _animnum = animnum;
      _animname = null;
    }
    animname = params['animname'] ?? animname;
    if (!(animname ?? '').isBlank) {
      _animname = animname;
    }
    _mainPage = mainPage ?? _mainPage;
    _detailPage = detailPage ?? _detailPage;
    this.embed = embed ?? this.embed;
    this.play = play ?? this.play;
    this.loop = loop ?? this.loop;
    this.grid = grid ?? this.grid;
    this.axes = axes ?? this.axes;
    this.definition = definition ?? this.definition;
    this.formation = formation ?? this.formation;
    this.calls = calls ?? this.calls;
    this.helplink = helplink ?? this.helplink;
    if (toString() != before)
      notifyListeners();
  }

  //  For URL generation
  @override
  String toString() => <String>[
    if (level != null && level!.isNotEmpty) 'level=$level',
    if (animnum >= 0) 'animnum=${animnum.d}',
    if ((animname ?? '').isNotBlank) 'animname=$animname',
    if (link != null && link!.isNotEmpty) 'link=$link',
    if (mainPage != null) 'main=${describeEnum(mainPage!)}',
    if (detailPage != null && detailPage!=DetailPage.NONE)
      'detail=${describeEnum(detailPage!)}',
    if (embed) 'embed',
    if (play) 'play',
    if (loop) 'loop',
    if (grid) 'grid',
    if (definition) 'definition',
    if (axes!='None') 'axes=$axes',
    if (formation != null && formation!.isNotBlank)
      'formation=$formation',
    if (calls != null && calls!.isNotBlank)
      'calls=$calls',
    if (helplink != null && helplink!.isNotBlank)
      'helplink=$helplink'
  ].join('&');

  bool get isBlank => toString().isBlank;

}

//  Info needed for highlighting current part in definition
class HighlightState extends fm.ChangeNotifier {

  var _currentCall = '';
  String get currentCall => _currentCall;
  set currentCall(String value) {
    if (value != _currentCall) {
      _currentCall = value;
      notifyListeners();
    }
  }

  var _currentPart = -1;
  int get currentPart => _currentPart;
  set currentPart(int value) {
    if (value != _currentPart) {
      _currentPart = value;
      notifyListeners();
    }
  }

  @override
  String toString() => '$_currentCall$_currentPart';

}

