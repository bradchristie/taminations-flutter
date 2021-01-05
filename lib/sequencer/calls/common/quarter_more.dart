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

import '../../call_context.dart';
import '../../call_error.dart';
import '../action.dart';

class QuarterMore extends Action {

  QuarterMore() : super('and a Quarter More' );

  @override
  Future<void> performCall(CallContext ctx, [int stackIndex=0]) async {
    if (ctx.actives.any((d) => !ctx.isInCouple(d)))
      throw CallError('Only couples can go a Quarter More' );
    var isLeft = true;
    var isRight = true;
    for (var d in ctx.actives) {
      var roll = ctx.roll(d);
      if (roll != 'Left' )
        isLeft = false;
      if (roll != 'Right' )
        isRight = false;
    }
    //  Rolling direction determines rotation
    //  Usually belle forward beau backward
    if (isRight)
      await ctx.applyCalls('Half Reverse Wheel Around' );
    else if (isLeft)
      await ctx.applyCalls('Half Wheel Around' );
    else
      throw CallError('Unable to determine direction for A Quarter More' );
  }

}