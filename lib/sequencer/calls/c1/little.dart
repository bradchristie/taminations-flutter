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

import '../common.dart';

class Little extends Action {

  @override final level = LevelData.C1;
  Little(String name) : super(name);

  @override
  Future<void> perform(CallContext ctx, [int stackIndex = 0]) async {

    //  Do the Scoot Back of Scoot and Little
    if (name.startsWith('Scoot and'))
      await ctx.applyCalls('Scoot Back');
    final namePart2 = name.replaceFirst('Scoot and','');

    //  Figure out which way the outside dancers turn
    var turn = 'Face Right';
    if (namePart2.startsWith('Left') || namePart2.endsWith('Left'))
      turn = 'Face Left';
    else if (namePart2.startsWith('Right') || namePart2.endsWith('Right'))
      turn = 'Face Right';
    else if (namePart2.startsWith('In') || namePart2.endsWith('In'))
      turn = 'Face In';
    else if (namePart2.startsWith('Out') || namePart2.endsWith('Out'))
      turn = 'Face Out';
    else if (namePart2.endsWith('Forward') || namePart2.endsWith('As You Are'))
      turn = '';

    //  Do the call, catch any errors triggered by bad counter rotates
    try {
      if (ctx.actives.length == 8)
        await ctx.applyCalls('Outer 4 $turn Counter Rotate While Center 4 Step and Fold');
      else if (ctx.actives.length==4 && ctx.actives.containsAll(ctx.outer(4)))
        await ctx.applyCalls('Outer 4 $turn Counter Rotate');
      else
        throw CallError("Don't know how to Little for these dancers.");
    } on CallError catch (_) {
      throw CallError('Unable to do Little from this formation.');
    }
  }

}