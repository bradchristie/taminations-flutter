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

import 'package:flutter/material.dart';
import 'package:taminations/color.dart';
import 'package:taminations/extensions.dart';

typedef _Selector = bool Function(String text);
class LevelDatum implements Comparable<LevelDatum> {
  final String name;
  final String dir;
  final Color color;
  final _Selector selector;
  LevelDatum(this.name,this.dir,this.color,this.selector);

  //  Comparison of levels - Basic 1 is smallest, C-3A is largest
  @override
  int compareTo(LevelDatum other) =>
      LevelData._data.indexOf(this) - LevelData._data.indexOf(other);

  bool operator <(Object other) {
    if (other is LevelDatum)
      return this.compareTo(other) < 0;
    return false;
  }
  bool operator >(Object other) {
    if (other is LevelDatum)
      return this.compareTo(other) > 0;
    return false;
  }

}

class LevelData {

  static List<LevelDatum> _data = [
    LevelDatum("Basic and Mainstream", "bms", Color.BMS,
            (link) => link.startsWith("(b|ms)".r)),
    LevelDatum("Basic 1", "b1", Color.B1,
            (link) => link.startsWith("b1")),
    LevelDatum("Basic 2", "b2", Color.B2,
            (link) => link.startsWith("b2")),
    LevelDatum("Mainstream", "ms", Color.MS,
            (link) => link.startsWith("ms")),
    LevelDatum("Plus", "plus", Color.PLUS,
            (link) => link.startsWith("plus")),
    LevelDatum("Advanced", "adv", Color.ADV,
            (link) => link.startsWith("a")),
    LevelDatum("A-1", "a1", Color.A1,
            (link) => link.startsWith("a1")),
    LevelDatum("A-2", "a2", Color.A2,
            (link) => link.startsWith("a2")),
    LevelDatum("Challenge", "cha", Color.CHALLENGE,
            (link) => link.startsWith("c")),
    LevelDatum("C-1", "c1", Color.C1,
            (link) => link.startsWith("c1")),
    LevelDatum("C-2", "c2", Color.C2,
            (link) => link.startsWith("c1")),
    LevelDatum("C-3A", "c3a", Color.C3A,
            (link) => link.startsWith("c1")),
    LevelDatum("C-3B", "c3b", Color.C3B,
            (link) => link.startsWith("c1")),
    LevelDatum("Index of All Calls", "all", Color.LIGHTGREY,
            (link) => true)

  ];

  static LevelDatum find(String s) {
    return _data.firstWhere((element) =>
        element.name.toLowerCase() == s.toLowerCase() ||
        s.startsWith(element.dir),
        orElse: () => null
    );
  }

}