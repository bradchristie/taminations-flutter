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


import 'package:taminations/sequencer/calls/b1/facing_dancers.dart';

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
import 'b1/face.dart';
import 'b1/girls.dart';
import 'b1/half_sashay.dart';
import 'b1/heads.dart';
import 'b1/insides.dart';
import 'b1/leaders.dart';
import 'b1/outsides.dart';
import 'b1/pass_thru.dart';
import 'b1/pull_by.dart';
import 'b1/separate.dart';
import 'b1/sides.dart';
import 'b1/split_circulate.dart';
import 'b1/square_thru.dart';
import 'b1/trailers.dart';
import 'b1/turn_back.dart';
import 'b1/very_centers.dart';
import 'b1/very_ends.dart';
import 'b2/box_the_gnat.dart';
import 'b2/cross_run.dart';
import 'b2/run.dart';
import 'b2/sweep_a_quarter.dart';
import 'b2/touch_a_quarter.dart';
import 'b2/trade.dart';
import 'b2/wheel_around.dart';
import 'b2/zoom.dart';
import 'while.dart';
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
    "boxthegnat".r: (_) => BoxTheGnat(),

    "californiatwirl".r: (_) => CaliforniaTwirl(),
    "center".r: (_) => Centers(),
    "circulate".r: (_) => Circulate(),
    "courtesyturn".r: (_) => CourtesyTurn(),
    ".*crossrun".r: (name) => CrossRun(name),

    "(left)?dosado".r: (name) => Dosado(name),

    "end".r: (_) => Ends(),

    "face(in|out|left|right)".r: (name) => Face(name),
    "facing".r: (_) => FacingDancers(),

    "girl".r: (_) => Girls(),

    "(reverse)?12sashay".r: (name) => HalfSashay(name),
    "head".r: (name) => Heads(name),

    "center(2|4|6)".r: (name) => Insides(name),
    "in(ner|sides?)(2|4|6)?".r: (name) => Insides(name),

    "lead".r: (name) => Leaders(name),

    "out(er|sides?)(2|4|6)?".r: (name) => Outsides(name),

    "(left)?passthru".r: (name) => PassThru(name),
    "(left)?pullby".r: (name) => PullBy(name),

    "run(left|right)?".r: (name) => Run(name),

    "separate".r: (_) => Separate(),
    "side".r: (name) => Sides(name),
    "splitcirculate".r: (_) => SplitCirculate(),
    "(left)?squarethru(1|2|3|4|5|6|7)?(toawave)?".r: (name) => SquareThru(name),
    "sweep14".r: (_) => SweepAQuarter(),

    "(left)?touch14".r: (name) => TouchAQuarter(name),
    "trade".r: (_) => Trade(),
    "trail".r: (name) => Trailers(name),

    "u?turnback".r: (_) => TurnBack(),

    "verycenters".r: (_) => VeryCenters(),
    "veryends".r: (_) => VeryEnds(),

    "(reverse)?wheelaround".r: (name) => WheelAround(name),
    "(and)?(the)?other?.+".r: (name) => While(name),
    "while(the)?(others?)?.+".r: (name) => While(name),

    "zing|zoom".r:(name) => Zoom(name)

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
