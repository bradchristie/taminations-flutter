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

class QuarterInOut extends Action {

  @override final level = LevelData.A1;
  QuarterInOut(String name) : super(name);

  @override
  Future<void> perform(CallContext ctx) async {
    if (ctx.dancers.length == 4)
      return await super.perform(ctx);
    final boxes = ctx.boxes();
    if (boxes != null) {
      for (final box in boxes) {
        await ctx.subContext(box, (ctx2) async {
          await super.perform(ctx2);
        });
      }
    } else {
      await super.perform(ctx);
    }
  }

  @override
  Path performOne(Dancer d, CallContext ctx) {
    final isOut = name.matches('.*out'.ri);
    if (ctx.isBox()) {
      if (d.isCenterLeft)
        return TamUtils.getMove(isOut ? 'Quarter Right' : 'Quarter Left');
      else if (d.isCenterRight)
        return TamUtils.getMove(isOut ? 'Quarter Left' : 'Quarter Right');
      else
        //  should never happen because we know dancer is in a box
        throw CallError('Unable to calculate $name for dancer $d');
    }
    String move;
    if (!d.data.beau && !d.data.belle) {
      //  No partner - Face In
      move = ((d.angleToOrigin < 0) ^ name.matches('.*out'.ri))
          ? 'Quarter Right' : 'Quarter Left';
    } else
      move = (d.data.beau ^ name.matches('.*out'.ri))
          ? 'Quarter Right' : 'Quarter Left';
    return TamUtils.getMove(move);
  }

}