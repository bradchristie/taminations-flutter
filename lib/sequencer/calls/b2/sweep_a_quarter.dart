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

import '../../../level_data.dart';
import '../../call_context.dart';
import '../../call_error.dart';
import '../action.dart';

class SweepAQuarter extends Action {

  @override var level = LevelData.B2;
  @override var helplink = 'b2/sweep_a_quarter';
  SweepAQuarter(String name) : super(name);

  @override
  void performCall(CallContext ctx) {
    ctx.analyze();
    if (ctx.actives.any((d) => !ctx.isInCouple(d)))
      throw CallError('Only couples can Sweep a Quarter' );
    var isLeft = true;
    var isRight = true;
    for (var d in ctx.actives) {
      var roll = ctx.roll(d);
      isLeft &= roll == Rolling.LEFT;
      isRight &= roll == Rolling.RIGHT;
    }
    if (!isRight && !isLeft)
      throw CallError(
          'All dancers must be moving the same direction to Sweep a Quarter');
    //  Sweeping direction is opposite rolling direction
    final dir = isLeft ? 'Right' : 'Left';
    try {
      ctx.applyCalls('_Sweep a Quarter $dir');
    } on CallError {
      throw CallError('Improper movement for Sweep 1/4');
    }
  }

}