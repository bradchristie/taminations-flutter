/*

  Taminations Square Dance Animations
  Copyright (C) 2026 Brad Christie

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

abstract class _BaseSettings {
  bool? getBool(String key);
  void setBool(String key, bool value);
  String? getString(String key);
  void setString(String key, String value);
}

class _MockSettings extends _BaseSettings {
  @override bool? getBool(String key) => null;
  @override void setBool(String key, bool value) { }
  @override String? getString(String key) => null;
  @override void setString(String key, String value) { }
}

class _ProxySettings extends _BaseSettings {
  final SharedPreferencesWithCache proxy;
  _ProxySettings(this.proxy);
  @override bool? getBool(String key) => proxy.getBool(key);
  @override void setBool(String key, bool value) {
    proxy.setBool(key, value);
  }
  @override String? getString(String key) => proxy.getString(key);
  @override void setString(String key, String value) {
    proxy.setString(key, value);
  }
}

class Settings extends fm.ChangeNotifier {

  static final List<String> _dancerColors = [ for (var i=1; i<=12; i++) 'default' ];
  static final List<String> _coupleColors =
      [ 'Red', 'Green', 'Blue', 'Yellow', 'Magenta', 'Cyan' ];

  static bool _init = false;
  static Settings _instance = Settings._internal(_MockSettings());
  _BaseSettings proxy;

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
               _instance = Settings._internal( _ProxySettings(value));
          ;
        });
      });
      _init = true;
    }
    return true;
  }

  static void mockInit() {
    _instance = Settings._internal(_MockSettings());
  }

  //  Only the code above can create the singleton object
  Settings._internal(this.proxy);
  //  Default constructor returns singleton object
  factory Settings() => _instance;

  static String get speed =>
      _instance.proxy.getString('Dancer Speed') ?? 'Normal Speed';
  static set speed(String value) {
    _instance.proxy.setString('Dancer Speed', value);
    _instance.notifyListeners();
  }

  static bool get loop =>
      _instance.proxy.getBool('Loop') ?? false;
  static set loop(bool value) {
    _instance.proxy.setBool('Loop', value);
    _instance.notifyListeners();
  }

  static bool get grid =>
      _instance.proxy.getBool('Grid') ?? false;
  static set grid(bool value) {
    _instance.proxy.setBool('Grid', value);
    _instance.notifyListeners();
  }

  static String get axes =>
      _instance.proxy.getString('Axes') ?? 'None';
  static set axes(String value) {
    _instance.proxy.setString('Axes', value);
    _instance.notifyListeners();
  }

  static bool get paths =>
      _instance.proxy.getBool('Paths') ?? false;
  static set paths(bool value) {
    _instance.proxy.setBool('Paths', value);
    _instance.notifyListeners();
  }

  static String get numbers =>
      _instance.proxy.getString('Numbers') ?? 'None';
  static set numbers(String value) {
    _instance.proxy.setString('Numbers', value);
    _instance.notifyListeners();
  }

  static String coupleColor(int i) =>
      _instance.proxy.getString('Couple $i') ?? _coupleColors[i-1];
  static void setCoupleColor(int i, String value) {
    _instance.proxy.setString('Couple $i', value);
    _instance.notifyListeners();
  }

  static String dancerColor(int i) =>
      _instance.proxy.getString('Dancer $i') ?? _dancerColors[i-1];
  static void setDancerColor(int i, String value) {
    _instance.proxy.setString('Dancer $i', value);
    _instance.notifyListeners();
  }

  static bool get phantoms =>
      _instance.proxy.getBool('Phantoms') ?? false;
  static set phantoms(bool value) {
    _instance.proxy.setBool('Phantoms', value);
    _instance.notifyListeners();
  }

  static String get geometry =>
      _instance.proxy.getString('Special Geometry') ?? 'None';
  static set geometry(String value) {
    _instance.proxy.setString('Special Geometry', value);
    _instance.notifyListeners();
  }

  static String get language =>
    _instance.proxy.getString('Language for Definitions') ?? 'System';
  static set language(String value) {
    _instance.proxy.setString('Language for Definitions',value);
    _instance.notifyListeners();
  }

  static String get languageCode {
    if (language == 'English')
      return 'en';
    else if (language == 'German')
      return 'de';
    else if (language == 'Italian')
      return 'it';
    else if (language == 'Japanese')
      return 'ja';
    else  //  System language
      return fm.WidgetsBinding.instance.platformDispatcher.locale.languageCode;
  }

  //  Get a language-specific link for retrieving the definition
  static String getLanguageLink(String link) {
    var code = languageCode;
    if (code != 'en') {
      link += '.lang-$code';
    }
    return link;
  }

  static String get practiceGender =>
      _instance.proxy.getString('PracticeGender') ?? 'Boy';
  static set practiceGender(String value) {
    _instance.proxy.setString('PracticeGender',value);
    _instance.notifyListeners();
  }

  static String get practiceSpeed =>
      _instance.proxy.getString('PracticeSpeed') ?? 'Slow';
  static set practiceSpeed(String value) {
    _instance.proxy.setString('PracticeSpeed',value);
    _instance.notifyListeners();
  }

  static String get primaryControl =>
  _instance.proxy.getString('PrimaryControl') ?? 'Left Finger';
  static set primaryControl(String value) {
    _instance.proxy.setString('PrimaryControl',value);
    _instance.notifyListeners();
  }

  static String get mouseControl =>
      _instance.proxy.getString('MouseControl') ?? 'Press mouse button to move';
  static set mouseControl(String value) {
    _instance.proxy.setString('MouseControl',value);
    _instance.notifyListeners();
  }

  static String get startingFormation =>
      _instance.proxy.getString('Starting Formation') ?? 'Squared Set';
  static set startingFormation(String value) {
    _instance.proxy.setString('Starting Formation',value);
    _instance.notifyListeners();
  }

  static bool get dancerShapes =>
      _instance.proxy.getBool('Dancer Shapes') ?? true;
  static set dancerShapes(bool value) {
    _instance.proxy.setBool('Dancer Shapes', value);
    _instance.notifyListeners();
  }

  static String get dancerIdentification =>
      _instance.proxy.getString('Dancer Identification') ?? 'None';
  static set dancerIdentification(String value) {
    _instance.proxy.setString('Dancer Identification',value);
    _instance.notifyListeners();
  }

  static String get showDancerColors =>
      _instance.proxy.getString('Dancer Colors') ?? 'By Couple';
  static set showDancerColors(String value) {
    _instance.proxy.setString('Dancer Colors',value);
    _instance.notifyListeners();
  }

  static String get joinCallsWith =>
      _instance.proxy.getString('Join Calls With') ?? 'New Line';
  static set joinCallsWith(String value) {
    _instance.proxy.setString('Join Calls With', value);
    _instance.notifyListeners();
  }

  //  Window dimensions are internal, set when user resizes the window
  static String get windowRect =>
      _instance.proxy.getString('Window Rect') ?? '';
  static set windowRect(String value) {
    _instance.proxy.setString('Window Rect', value);
    //  no need to notify listeners
  }

}