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

class WithTheFlow extends Action {

  @override final level = LevelData.C1;
  WithTheFlow() : super('With the Flow');

  @override
  Future<void> perform(CallContext ctx, [int stackIndex = 0]) async {
    if (ctx.actives.any((d) => !ctx.isInCouple(d)))
      throw CallError('Only couples can do With the Flow');
    var isLeft = true;
    var isRight = true;
    for (final d in ctx.actives) {
      final roll = ctx.roll(d);
      if (roll != 'Left')
        isLeft = false;
      if (roll != 'Right')
        isRight = false;
    }
    //  Rolling direction determines who walks and who dodges
    if (isRight)
      await ctx.applyCalls('Beau Walk Belle Dodge');
    else if (isLeft)
      await ctx.applyCalls('Belle Walk Beau Dodge');
    else
      throw CallError('All dancers must be moving the same direction for With the Flow');
  }

}