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

import 'dart:async' show Future;

import 'package:flutter/services.dart' show rootBundle;
import 'package:platform/platform.dart';

import 'animated_call.dart';
import 'common_flutter.dart';

class CallListDatum {
  final String title;
  final String norm;
  final String link;
  final String languages;
  final String audio;
  CallListDatum(this.title,this.norm,this.link,this.languages,this.audio);
}

//  Class of static methods and data, this class is not instantiated
class TamUtils {

  static Map<String,List<AnimatedCall>> normalizedCallIndex = {};

  //  Read an XML file or other from the assets
  static Future<String> getAsset(String filename) async {
    return rootBundle.loadString('assets/$filename');
  }

  static String platform() {
    try {
      final platform = Platform();
      return platform.nativePlatform!.operatingSystem;
      //  Currently web returns LocalPlatform but does not have
      //  an operating system so .operatingSystem throws UnsupportedError
    } on UnsupportedError catch (_) { }
    return 'web';
  }

  static bool get isTouchDevice => platform().matches('(android|ios)'.r);
  static bool get isWindowDevice =>
      platform().matches('(windows|macos)'.r);
  static bool get canListen => platform().matches('(android|ios)'.r);
  static bool get canSpeak => platform().matches('(android|ios|web|macos)'.r);

}