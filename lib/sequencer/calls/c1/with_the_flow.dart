/*

  Taminations Square Dance Animations
  Copyright (C) 2023 Brad Christie

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

class WithTheFlow extends ActivesOnlyAction {

  @override final level = LevelData.C1;
  @override var helplink = 'c1/with_the_flow';
  WithTheFlow(String name) : super(name);

  @override
  void perform(CallContext ctx) {
    if (ctx.dancers.any((d) => !ctx.isInCouple(d)))
      throw CallError('Only couples can do With the Flow');
    var isLeft = true;
    var isRight = true;
    for (final d in ctx.actives) {
      final roll = ctx.roll(d);
      if (roll != Rolling.LEFT)
        isLeft = false;
      if (roll != Rolling.RIGHT)
        isRight = false;
    }
    //  Rolling direction determines who walks and who dodges
    if (isRight)
      ctx.applyCalls('Beau Walk Belle Dodge');
    else if (isLeft)
      ctx.applyCalls('Belle Walk Beau Dodge');
    else
      throw CallError('All dancers must be moving the same direction for With the Flow');
  }

}