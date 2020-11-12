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

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'tam_utils.dart';

class Settings extends ChangeNotifier {

  bool _preferencesRead = false;
  String _speed = "Normal";
  bool _loop = false;
  bool _grid = false;
  bool _paths = false;
  String _numbers = "None";
  List<String> _coupleColors = [ "Red", "Green", "Blue", "Yellow", "Magenta", "Cyan" ];
  List<String> _dancerColors = [ for (var i=1; i<=12; i++) "default" ];
  bool _phantoms = false;
  String _geometry = "None";
  String _language = "System";
  bool _isAbbrev = true;

  SharedPreferences prefs;

  Future<bool> getSettings() async {
    if (!_preferencesRead)
      return _getPreferences().then( (b) => true);
    return Future.value(true);
  }

  Future<bool> _getPreferences() async {
    prefs = await SharedPreferences.getInstance();
    _speed = prefs.getString("Dancer Speed") ?? "Normal";
    _loop = prefs.getBool("Loop") ?? false;
    _grid = prefs.getBool("Grid") ?? false;
    _paths = prefs.getBool("Paths") ?? false;
    _numbers = prefs.getString("Numbers") ?? "None";
    for (var i = 1; i <= 6; i++) {
      _coupleColors[i - 1] = prefs.getString("Couple $i") ?? _coupleColors[i - 1];
    }
    for (var i = 1; i <= 12; i++) {
      _dancerColors[i - 1] = prefs.getString("Dancer $i") ?? _dancerColors[i - 1];
    }
    _phantoms = prefs.getBool("Phantoms") ?? false;
    _geometry = prefs.getString("Special Geometry") ?? "None";
    _language = prefs.getString("Language for Definitions") ?? "System";
    _preferencesRead = true;
    _isAbbrev = prefs.getBool("DefinitionAbbrev") ?? true;
    notifyListeners();
    return true;
  }

  String get speed => _speed;
  set speed(String value) {
    _speed = value;
    prefs.setString("Dancer Speed",value);
    notifyListeners();
  }

  bool get loop => _loop;
  set loop(bool value) {
    _loop = value;
    prefs.setBool("Loop",value);
    notifyListeners();
  }

  bool get grid => _grid;
  set grid(bool value) {
    _grid = value;
    prefs.setBool("Grid", value);
    notifyListeners();
  }

  bool get paths => _paths;
  set paths(bool value) {
    _paths = value;
    prefs.setBool("Paths", value);
    notifyListeners();
  }


  String get numbers => _numbers;
  set numbers(String value) {
    _numbers = value;
    prefs.setString("Numbers",value);
    notifyListeners();
  }

  String coupleColor(int i) => _coupleColors[i-1];
  void setCoupleColor(int i, String value) {
    _coupleColors[i-1] = value;
    prefs.setString("Couple $i",value);
    notifyListeners();
  }

  String dancerColor(int i) => _dancerColors[i-1];
  void setDancerColor(int i, String value) {
    _dancerColors[i-1] = value;
    prefs.setString("Dancer $i",value);
    notifyListeners();
  }

  bool get phantoms => _phantoms;
  set phantoms(bool value) {
    _phantoms = value;
    prefs.setBool("Phantoms",value);
    notifyListeners();
  }

  String get geometry => _geometry;
  set geometry(String value) {
    _geometry = value;
    prefs.setString("Special Geometry",value);
    notifyListeners();
  }

  bool get isAbbrev => _isAbbrev;
  set isAbbrev(bool value) {
    _isAbbrev = value;
    prefs.setBool("DefinitionAbbrev", value);
    notifyListeners();
  }

  String get language => _language;
  set language(String value) {
    _language = value;
    prefs.setString("Language for Definitions",value);
    notifyListeners();
  }

  //  Get a language-specific link for retreiving the definition
  String getLanguageLink(String link) {
    var languageSetting = _language;
    print("Language setting: $languageSetting");
    if (languageSetting == "English")
      languageSetting = "en";
    else if (languageSetting == "German")
      languageSetting = "de";
    else if (languageSetting == "Japanese")
      languageSetting = "ja";
    else  //  System language
      languageSetting = WidgetsBinding.instance.window.locale.languageCode;
    print("link: $link   looking for definition in $languageSetting");
    if (languageSetting != "en") {
      if (TamUtils.calldata.firstWhere((item) {
        if (item.link == link)
          print("Languages available: ${item.languages}");
        return item.link == link && item.languages.contains(languageSetting);
      }, orElse: null) != null) {
        link += ".lang-$languageSetting";
      }
    }
    return link;
  }


}