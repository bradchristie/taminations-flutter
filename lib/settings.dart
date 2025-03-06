/*

  Taminations Square Dance Animations
  Copyright (C) 2024 Brad Christie

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
import 'package:shared_preferences/util/legacy_to_async_migration_util.dart';
import 'call_index.dart';
import 'common_flutter.dart';

class Settings extends fm.ChangeNotifier {

  static final List<String> _dancerColors = [ for (var i=1; i<=12; i++) 'default' ];
  static final List<String> _coupleColors =
      [ 'Red', 'Green', 'Blue', 'Yellow', 'Magenta', 'Cyan' ];

  static bool _init = false;
  static late Settings _instance;
  SharedPreferencesWithCache _prefs;

  //  This is boilerplate from Flutter docs
  static Future<void> _migratePreferences() async {
    // #docregion migrate
    const sharedPreferencesOptions =
    SharedPreferencesOptions();
    final prefs = await SharedPreferences.getInstance();
    await migrateLegacySharedPreferencesToSharedPreferencesAsyncIfNecessary(
      legacySharedPreferencesInstance: prefs,
      sharedPreferencesAsyncOptions: sharedPreferencesOptions,
      migrationCompletedKey: 'migrationCompleted',
    );
    // #enddocregion migrate
  }

  static Future<bool> init() async {
    if (!_init) {
      await _migratePreferences().whenComplete(() {
        SharedPreferencesWithCache.create(
            cacheOptions: SharedPreferencesWithCacheOptions())
            .then((SharedPreferencesWithCache value) {
          _instance = Settings._internal(value);
          ;
        });
      });
      _init = true;
    }
    return true;
  }

  //  Only the code above can create the singleton object
  Settings._internal(this._prefs);
  //  Default constructor returns singleton object
  factory Settings() => _instance;

  static String get speed =>
      _instance._prefs.getString('Dancer Speed') ?? 'Normal Speed';
  static set speed(String value) {
    _instance._prefs.setString('Dancer Speed', value);
    _instance.notifyListeners();
  }

  static bool get loop =>
      _instance._prefs.getBool('Loop') ?? false;
  static set loop(bool value) {
    _instance._prefs.setBool('Loop', value);
    _instance.notifyListeners();
  }

  static bool get grid =>
      _instance._prefs.getBool('Grid') ?? false;
  static set grid(bool value) {
    _instance._prefs.setBool('Grid', value);
    _instance.notifyListeners();
  }

  static String get axes =>
      _instance._prefs.getString('Axes') ?? 'None';
  static set axes(String value) {
    _instance._prefs.setString('Axes', value);
    _instance.notifyListeners();
  }

  static bool get paths =>
      _instance._prefs.getBool('Paths') ?? false;
  static set paths(bool value) {
    _instance._prefs.setBool('Paths', value);
    _instance.notifyListeners();
  }

  static String get numbers =>
      _instance._prefs.getString('Numbers') ?? 'None';
  static set numbers(String value) {
    _instance._prefs.setString('Numbers', value);
    _instance.notifyListeners();
  }

  static String coupleColor(int i) =>
      _instance._prefs.getString('Couple $i') ?? _coupleColors[i-1];
  static void setCoupleColor(int i, String value) {
    _instance._prefs.setString('Couple $i', value);
    _instance.notifyListeners();
  }

  static String dancerColor(int i) =>
      _instance._prefs.getString('Dancer $i') ?? _dancerColors[i-1];
  static void setDancerColor(int i, String value) {
    _instance._prefs.setString('Dancer $i', value);
    _instance.notifyListeners();
  }

  static bool get phantoms =>
      _instance._prefs.getBool('Phantoms') ?? false;
  static set phantoms(bool value) {
    _instance._prefs.setBool('Phantoms', value);
    _instance.notifyListeners();
  }

  static String get geometry =>
      _instance._prefs.getString('Special Geometry') ?? 'None';
  static set geometry(String value) {
    _instance._prefs.setString('Special Geometry', value);
    _instance.notifyListeners();
  }

  static String get language =>
      _instance._prefs.getString('Language for Definitions') ?? 'System';
  static set language(String value) {
    _instance._prefs.setString('Language for Definitions',value);
    _instance.notifyListeners();
  }

  static String get languageCode {
    if (language == 'English')
      return 'en';
    else if (language == 'German')
      return 'de';
    else if (language == 'Japanese')
      return 'ja';
    else  //  System language
      return fm.WidgetsBinding.instance.platformDispatcher.locale.languageCode;
  }

  //  Get a language-specific link for retreiving the definition
  static String getLanguageLink(String link) {
    var code = languageCode;
    if (code != 'en') {
      var call = callIndex.firstWhereOrNull((e) =>
      e.link == link && e.languages.contains('lang-$code'));
      if (call != null)
        link += '.lang-$code';
    }
    return link;
  }

  static String get practiceGender =>
      _instance._prefs.getString('PracticeGender') ?? 'Boy';
  static set practiceGender(String value) {
    _instance._prefs.setString('PracticeGender',value);
    _instance.notifyListeners();
  }

  static String get practiceSpeed =>
      _instance._prefs.getString('PracticeSpeed') ?? 'Slow';
  static set practiceSpeed(String value) {
    _instance._prefs.setString('PracticeSpeed',value);
    _instance.notifyListeners();
  }

  static String get primaryControl =>
  _instance._prefs.getString('PrimaryControl') ?? 'Left Finger';
  static set primaryControl(String value) {
    _instance._prefs.setString('PrimaryControl',value);
    _instance.notifyListeners();
  }

  static String get mouseControl =>
      _instance._prefs.getString('MouseControl') ?? 'Pressed';
  static set mouseControl(String value) {
    _instance._prefs.setString('MouseControl',value);
    _instance.notifyListeners();
  }

  static String get startingFormation =>
      _instance._prefs.getString('Starting Formation') ?? 'Squared Set';
  static set startingFormation(String value) {
    _instance._prefs.setString('Starting Formation',value);
    _instance.notifyListeners();
  }

  static bool get dancerShapes =>
      _instance._prefs.getBool('Dancer Shapes') ?? true;
  static set dancerShapes(bool value) {
    _instance._prefs.setBool('Dancer Shapes', value);
    _instance.notifyListeners();
  }

  static String get dancerIdentification =>
      _instance._prefs.getString('Dancer Identification') ?? 'None';
  static set dancerIdentification(String value) {
    _instance._prefs.setString('Dancer Identification',value);
    _instance.notifyListeners();
  }

  static String get showDancerColors =>
      _instance._prefs.getString('Dancer Colors') ?? 'By Couple';
  static set showDancerColors(String value) {
    _instance._prefs.setString('Dancer Colors',value);
    _instance.notifyListeners();
  }

  static String get joinCallsWith =>
      _instance._prefs.getString('Join Calls With') ?? 'New Line';
  static set joinCallsWith(String value) {
    _instance._prefs.setString('Join Calls With', value);
    _instance.notifyListeners();
  }

  //  Window dimensions are internal, set when user resizes the window
  static String get windowRect =>
      _instance._prefs.getString('Window Rect') ?? '';
  static set windowRect(String value) {
    _instance._prefs.setString('Window Rect', value);
    //  no need to notify listeners
  }

}