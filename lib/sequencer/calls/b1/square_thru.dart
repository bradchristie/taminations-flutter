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

import '../action.dart';
import '../../call_context.dart';
import '../../../extensions.dart';
import '../../call_error.dart';
import '../../../level_data.dart';
import '../../../math/path.dart';
import '../../../dancer.dart';
import '../../../tam_utils.dart';

class SquareThru extends Action {

  SquareThru(String name) : super(name);

  @override
  Future<void> perform(CallContext ctx, [int i=0]) async {
    //  Set up alternating hands
    var left = "Left-Hand";
    var right = "";
    if (name.toLowerCase().startsWith("left")) {
      left = "";
      right = "Left-Hand";
    }
    //  Find out how many hands
    var count = name.toLowerCase().replaceAll("to a wave", "")
        .last.toIntOrNull() ?? 4;
    //  First hand is step to a wave if not already there
    if (ctx.actives.any((d) => ctx.isInCouple(d))) {
      await  ctx.applyCalls(["Facing Dancers Step to a Compact $right Wave"]);
      ctx.analyze();
    }
    //  Check that wave is the correct hand
    if (ctx.actives.any((d) =>
        (!d.data.belle && left == "") ||
        (!d.data.beau && right == "") ||
        !ctx.isInWave(d)))
      throw CallError("Cannot $name from this formation");
    //  Square thru remaining hands
    for (var c=1; c<count; c++) {
      var hand = (c % 2 == 0) ? right : left;
      ctx.applyCalls(["Explode and Step to a Compact $hand Wave"]);
      ctx.level = LevelData.B1;  // override Explode (Plus)
    }
    //  Finish back-to-back unless C-1 concept "to a Wave" added
    if (name.toLowerCase().endsWith("to a wave"))
      level = LevelData.C1;
    else
      await ctx.applyCalls(["Step Thru"]);
  }

}

class StepToACompactWave extends Action {

  StepToACompactWave() : super("Step to a Compact Wave");

  @override
  Path performOne(Dancer d, CallContext ctx) {
    var d2 = ctx.dancerFacing(d) ??
    thrower(CallError("Cannot find dancer facing $d"));
    var dist = d.distanceTo(d2);
    var dir = (name.toLowerCase().contains("left")) ? "Right" : "Left";
    return TamUtils.getMove("Extend $dir")..scale(dist/2,0.5);
  }

}