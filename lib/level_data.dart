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

import 'package:flutter/material.dart';

import 'color.dart';
import 'extensions.dart';

class LevelData implements Comparable<LevelData> {
  final String name;
  final String dir;
  final Color color;
  final  RegExp selectorString;
  const LevelData(this.name,this.dir,this.color,this.selectorString);

  bool selector(String text) => text.startsWith(selectorString);

  static final BMS = LevelData('Basic and Mainstream', 'bms', Color.BMS, '(b|ms)'.r);
  static final B1 = LevelData('Basic 1', 'b1', Color.B1,'b1'.r);
  static final B2 = LevelData('Basic 2', 'b2', Color.B2,'b2'.r);
  static final MS = LevelData('Mainstream', 'ms', Color.MS,'ms'.r);
  static final SSD = LevelData('SSD', 'ssd', Color.MS,'ssd'.r);
  static final PLUS = LevelData('Plus', 'plus', Color.PLUS,'plus'.r);
  static final ADV = LevelData('Advanced', 'adv', Color.ADV,'a'.r);
  static final A1 = LevelData('A-1', 'a1', Color.A1,'a1'.r);
  static final A2 = LevelData('A-2', 'a2', Color.A2,'a2'.r);
  static final CHALLENGE = LevelData('Challenge', 'cha', Color.CHALLENGE,'c'.r);
  static final C1 = LevelData('C-1', 'c1', Color.C1,'c1'.r);
  static final C2 = LevelData('C-2', 'c2', Color.C2,'c2'.r);
  static final C3A = LevelData('C-3A', 'c3a', Color.C3A, 'c3a'.r);
  static final C3B = LevelData('C-3B', 'c3b', Color.C3B,'c3b'.r);
  static final INDEX = LevelData('Index of All Calls', 'all', Color.LIGHTGREY,'[^s]'.r);

  static final List<LevelData> _data = [
    LevelData.BMS,
    LevelData.B1,
    LevelData.B2,
    LevelData.MS,
    LevelData.SSD,
    LevelData.PLUS,
    LevelData.ADV,
    LevelData.A1,
    LevelData.A2,
    LevelData.CHALLENGE,
    LevelData.C1,
    LevelData.C2,
    LevelData.C3A,
    LevelData.C3B,
    LevelData.INDEX
  ];

  static LevelData? find(String s) {
    try {
      return _data.firstWhere((element) =>
      element.name.toLowerCase() == s.toLowerCase() ||
          s.startsWith(element.dir));
    } on Error {
      //  not found
      return null;
    }
  }

  //  Comparison of levels - Basic 1 is smallest, C-3A is largest
  @override
  int compareTo(LevelData other) =>
      LevelData._data.indexOf(this) - LevelData._data.indexOf(other);

  bool operator <(Object other) {
    if (other is LevelData)
      return compareTo(other) < 0;
    return false;
  }
  bool operator >(Object other) {
    if (other is LevelData)
      return compareTo(other) > 0;
    return false;
  }

}
