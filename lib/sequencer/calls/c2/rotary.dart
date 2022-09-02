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

class Rotary extends Action {

  @override final level = LevelData.C2;
  @override var helplink = 'c2/rotary';
  Rotary(String name) : super(name);

  @override
  Future<void> perform(CallContext ctx) async {
    await ctx.applyCalls('Pull By');
    ctx.analyze();
    await ctx.subContext(ctx.outer(4), (ctx2) async {
      await ctx2.applyCalls('Courtesy Turn and Roll');
    });
    await ctx.subContext(ctx.center(4), (ctx2) async {
      await ctx2.applyCalls('Step to a Left Hand Wave');
      final otherCallctx = ctx.nextActionContext(this,dancers: ctx2.dancers, greedy: true)
          ?? thrower(CallError('Not able to find call for Rotary'))!;
      await otherCallctx.performCall();
      otherCallctx.appendToSource();
    });
  }

}