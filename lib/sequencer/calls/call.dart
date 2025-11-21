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

import 'common.dart';

abstract class Call {

  final String name;
  String get help => 'No specific help for $name';
  String get helplink => 'info/sequencer';
  String get norm => normalizeCall(name);
  bool nextCallCoded = false;
  var level = LevelData.B1;
  Rolling roll = Rolling.ANY;

  Call(String s) : name=s.capWords();

  void addToStack(CallContext ctx) {
    ctx.callstack.add(this);
  }

  void performCall(CallContext ctx);

  void raiseLevel(LevelData newLevel) {
    if (newLevel > level)
      level = newLevel;
  }

}