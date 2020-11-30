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
import '../../../level_data.dart';
import '../../call_context.dart';
import '../../call_error.dart';

class SweepAQuarter extends Action {

  @override
  var level = LevelData.B2;
  SweepAQuarter() : super("and Sweep a Quarter");

  @override
  Future<void> perform(CallContext ctx, [int stackIndex=0]) async {
    if (ctx.actives.any((d) => !ctx.isInCouple(d)))
      throw CallError("Only couples can Sweep a Quarter");
    var isLeft = true;
    var isRight = true;
    for (var d in ctx.actives) {
      var roll = ctx.roll(d);
      isLeft &= roll == "Left";
      isRight &= roll == "Right";
    }
    //  Sweeping direction is opposite rolling direction
    if (isRight)
      await ctx.applyCalls("Sweep a Quarter Left");
    else if (isLeft)
      await ctx.applyCalls("Sweep a Quarter Right");
    else
      throw CallError("All dancers must be moving the same direction to Sweep a Quarter");
  }

}