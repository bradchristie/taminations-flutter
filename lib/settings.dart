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
import 'package:shared_preferences/shared_preferences.dart';

import 'tam_utils.dart';

class Settings extends fm.ChangeNotifier {

  bool _preferencesRead = false;
  String _speed = 'Normal';
  bool _loop = false;
  bool _grid = false;
  bool _axes = false;
  bool _paths = false;
  String _numbers = 'None';
  final List<String> _coupleColors = [ 'Red', 'Green', 'Blue', 'Yellow', 'Magenta', 'Cyan' ];
  final List<String> _dancerColors = [ for (var i=1; i<=12; i++) 'default' ];
  bool _phantoms = false;
  String _geometry = 'None';
  String _language = 'System';
  bool _isAbbrev = true;
  String _practiceGender = 'Boy';
  String _practiceSpeed = 'Slow';
  String _primaryControl = 'Left Finger';
  String _mouseControl = 'Pressed';
  String _startingFormation = 'Squared Set';
  bool _dancerShapes = true;
  String _dancerIdentification = 'None';
  String _showDancerColors = 'By Couple';
  String _joinCallsWith = 'New Line';

  late SharedPreferences prefs;

  Settings() {
    getSettings();
  }

  Future<bool> getSettings() async {
    if (!_preferencesRead)
      return _getPreferences().then( (b) => true);
    return Future.value(true);
  }

  Future<bool> _getPreferences() async {
    prefs = await SharedPreferences.getInstance();
    _speed = prefs.getString('Dancer Speed') ?? 'Normal';
    _loop = prefs.getBool('Loop') ?? false;
    _grid = prefs.getBool('Grid') ?? false;
    _axes = prefs.getBool('Axes') ?? false;
    _paths = prefs.getBool('Paths') ?? false;
    _numbers = prefs.getString('Numbers') ?? 'None';
    for (var i = 1; i <= 6; i++) {
      _coupleColors[i - 1] = prefs.getString('Couple $i') ?? _coupleColors[i - 1];
    }
    for (var i = 1; i <= 12; i++) {
      _dancerColors[i - 1] = prefs.getString('Dancer $i') ?? _dancerColors[i - 1];
    }
    _phantoms = prefs.getBool('Phantoms') ?? false;
    _geometry = prefs.getString('Special Geometry') ?? 'None';
    _language = prefs.getString('Language for Definitions') ?? 'System';
    _preferencesRead = true;
    _isAbbrev = prefs.getBool('DefinitionAbbrev') ?? true;
    _practiceGender = prefs.getString('PracticeGender') ?? 'Boy';
    _practiceSpeed = prefs.getString('PracticeSpeed') ?? 'Slow';
    _primaryControl = prefs.getString('PrimaryControl') ?? 'Left Finger';
    _mouseControl = prefs.getString('MouseControl') ?? 'Dancer moves only when mouse button is pressed';
    _startingFormation = prefs.getString('Starting Formation') ?? 'Squared Set';
    _dancerShapes = prefs.getBool('Dancer Shapes') ?? true;
    _dancerIdentification = prefs.getString('Dancer Identification') ?? 'None';
    _showDancerColors = prefs.getString('Dancer Colors') ?? 'By Couple';
    _joinCallsWith = prefs.getString('Join Calls With') ?? 'New Line';
    notifyListeners();
    return true;
  }

  String get speed => _speed;
  set speed(String value) {
    _speed = value;
    prefs.setString('Dancer Speed',value);
    notifyListeners();
  }

  bool get loop => _loop;
  set loop(bool value) {
    _loop = value;
    prefs.setBool('Loop',value);
    notifyListeners();
  }

  bool get grid => _grid;
  set grid(bool value) {
    _grid = value;
    prefs.setBool('Grid', value);
    notifyListeners();
  }

  bool get axes => _axes;
  set axes(bool value) {
    _axes = value;
    prefs.setBool('Axes', value);
    notifyListeners();
  }

  bool get paths => _paths;
  set paths(bool value) {
    _paths = value;
    prefs.setBool('Paths', value);
    notifyListeners();
  }

  String get numbers => _numbers;
  set numbers(String value) {
    _numbers = value;
    prefs.setString('Numbers',value);
    notifyListeners();
  }

  String coupleColor(int i) => _coupleColors[i-1];
  void setCoupleColor(int i, String value) {
    _coupleColors[i-1] = value;
    prefs.setString('Couple $i',value);
    notifyListeners();
  }

  String dancerColor(int i) => _dancerColors[i-1];
  void setDancerColor(int i, String value) {
    _dancerColors[i-1] = value;
    prefs.setString('Dancer $i',value);
    notifyListeners();
  }

  bool get phantoms => _phantoms;
  set phantoms(bool value) {
    _phantoms = value;
    prefs.setBool('Phantoms',value);
    notifyListeners();
  }

  String get geometry => _geometry;
  set geometry(String value) {
    _geometry = value;
    prefs.setString('Special Geometry',value);
    notifyListeners();
  }

  bool get isAbbrev => _isAbbrev;
  set isAbbrev(bool value) {
    _isAbbrev = value;
    prefs.setBool('DefinitionAbbrev', value);
    notifyListeners();
  }

  String get language => _language;
  set language(String value) {
    _language = value;
    prefs.setString('Language for Definitions',value);
    notifyListeners();
  }

  String get languageCode {
    if (language == 'English')
      return 'en';
    else if (language == 'German')
      return 'de';
    else if (language == 'Japanese')
      return 'ja';
    else  //  System language
      return fm.WidgetsBinding.instance!.window.locale.languageCode;
  }

  //  Get a language-specific link for retreiving the definition
  String getLanguageLink(String link) {
    var code = languageCode;
    if (code != 'en') {
      if (TamUtils.calldata.indexWhere((item) {
        return item.link == link && item.languages.contains(code);
      }) >= 0) {
        link += '.lang-$code';
      }
    }
    return link;
  }

  String get practiceGender => _practiceGender;
  set practiceGender(String value) {
    _practiceGender = value;
    prefs.setString('PracticeGender',value);
    notifyListeners();
  }

  String get practiceSpeed => _practiceSpeed;
  set practiceSpeed(String value) {
    _practiceSpeed = value;
    prefs.setString('PracticeSpeed',value);
    notifyListeners();
  }

  String get primaryControl => _primaryControl;
  set primaryControl(String value) {
    _primaryControl = value;
    prefs.setString('PrimaryControl',value);
    notifyListeners();
  }

  String get mouseControl => _mouseControl;
  set mouseControl(String value) {
    _mouseControl = value;
    prefs.setString('MouseControl',value);
    notifyListeners();
  }

  String get startingFormation => _startingFormation;
  set startingFormation(String value) {
    _startingFormation = value;
    prefs.setString('Starting Formation',value);
    notifyListeners();
  }

  bool get dancerShapes => _dancerShapes;
  set dancerShapes(bool value) {
    _dancerShapes = value;
    prefs.setBool('Dancer Shapes', value);
    notifyListeners();
  }

  String get dancerIdentification => _dancerIdentification;
  set dancerIdentification(String value) {
    _dancerIdentification = value;
    prefs.setString('Dancer Identification',value);
    notifyListeners();
  }

  String get showDancerColors => _showDancerColors;
  set showDancerColors(String value) {
    _showDancerColors = value;
    prefs.setString('Dancer Colors',value);
    notifyListeners();
  }

  String get joinCallsWith => _joinCallsWith;
  set joinCallsWith(String value) {
    _joinCallsWith = value;
    prefs.setString('Join Calls With', value);
    notifyListeners();
  }


}