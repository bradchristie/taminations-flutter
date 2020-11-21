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


import '../../extensions.dart';
import '../../tam_utils.dart';
import 'b1/around_to_a_line.dart';
import 'b1/bend_the_line.dart';
import 'b1/boys.dart';
import 'b1/california_twirl.dart';
import 'b1/centers.dart';
import 'b1/circulate.dart';
import 'b1/courtesy_turn.dart';
import 'b1/dosado.dart';
import 'b1/ends.dart';
import 'b1/girls.dart';
import 'b1/heads.dart';
import 'b1/sides.dart';
import 'b1/turn_back.dart';
import 'call.dart';

abstract class CodedCall extends Call {

  CodedCall(String name) : super(name.capWords());

  static Map<RegExp, CodedCall Function(String norm)> normCallMap = {

    "around1andcomeintothemiddle".r: (_) =>
        AroundToALine("Around One and Come Into the Middle"),
    "around1toaline".r: (_) => AroundToALine("Around One to a Line"),
    "around2toaline".r: (_) => AroundToALine("Around Two to a Line"),

    "bendtheline".r: (_) => BendTheLine(),
    "boy".r: (_) => Boys(),

    "californiatwirl".r: (_) => CaliforniaTwirl(),
    "center".r: (_) => Centers(),
    "circulate".r: (_) => Circulate(),
    "courtesyturn".r: (_) => CourtesyTurn(),

    "(left)?dosado".r: (name) => Dosado(name),

    "end".r: (_) => Ends(),

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
