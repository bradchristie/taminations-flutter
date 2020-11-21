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

import 'package:taminations/extensions.dart';
import 'package:taminations/sequencer/calls/b1/boys.dart';
import 'package:taminations/sequencer/calls/b1/courtesy_turn.dart';
import 'package:taminations/sequencer/calls/b1/girls.dart';
import 'package:taminations/sequencer/calls/b1/heads.dart';
import 'package:taminations/sequencer/calls/b1/sides.dart';
import 'package:taminations/sequencer/calls/b1/turn_back.dart';
import 'package:taminations/sequencer/calls/b1/circulate.dart';
import 'package:taminations/sequencer/calls/call.dart';
import 'package:taminations/tam_utils.dart';

abstract class CodedCall extends Call {

  CodedCall(String name) : super(name.capWords());

  static Map<RegExp, CodedCall Function(String norm)> normCallMap = {
    "boy".r: (_) => Boys(),
    "circulate".r: (_) => Circulate(),
    "courtesyturn".r: (_) => CourtesyTurn(),
    "girl".r: (_) => Girls(),
    "head".r: (name) => Heads(name),
    "side".r: (name) => Sides(name),
    "u?turnback".r: (_) => TurnBack()
  };

  factory CodedCall.fromName(String name) {
    var norm = TamUtils.normalizeCall(name);
    for (var r in normCallMap.keys) {
      if (norm.matches(r)) {
        return normCallMap[r].call(name);
      }
    }
    return null;
  }
}
