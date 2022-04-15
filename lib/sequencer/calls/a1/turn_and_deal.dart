/*

  Taminations Square Dance Animations
  Copyright (C) 2022 Brad Christie

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

class TurnAndDeal extends Action {

  @override final level = LevelData.A1;
  TurnAndDeal(String name) : super(name);

  @override
  Path performOne(Dancer d, CallContext ctx) {
    final dir = ctx.tagDirection(d);
    if (dir.isBlank)
      throw CallError('Unable to calculate Turn and Deal');
    final amount = ctx.isTidal() ? 1.5 : 1.0;
    final dist = !ctx.isTidal() ? 2.0 :
    d.data.center ? 1.5 : 0.5;
    final sign = (dir=='Left') ? 1.0 : -1.0;
    return TamUtils.getMove('U-Turn $dir',
        skew:[sign*(name.startsWith('Left') ? amount : -amount),dist*sign].v);
  }

}

class BigLineTurnAndDeal extends ActivesOnlyAction {

  @override final level = LevelData.A1;
  BigLineTurnAndDeal(String name) : super(name);

  @override
  Future<void> perform(CallContext ctx) async {
    final left = name.contains('Left') ? 'Left' : '';
    final length = norm.contains('6') ? '6' : '8';
    if (length == '6' && ctx.dancers.length > 6)
      await ctx.applyCalls('Wave of 6 $name');
    else {
      await ctx.applyCalls('Line of $length $left Half Tag');
      await super.perform(ctx);
    }
  }

  @override
  Path performOne(Dancer d, CallContext ctx) {
    d.animate(0.0);
    if (d.isCenterRight)
      return TamUtils.getMove('Quarter Right');
    else
      return TamUtils.getMove('Quarter Left');
  }

}