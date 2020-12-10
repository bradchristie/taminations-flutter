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

import '../common.dart';

class Rotary extends Action {

  @override final level = LevelData.C2;
  Rotary(String name) : super(name);

  @override
  Future<void> perform(CallContext ctx, [int stackIndex = 0]) async {
    final anyCall = name.replaceFirst('rotary\\s*'.ri,'');
    await ctx.applyCalls('Pull By');
    ctx.analyze();
    await ctx.subContext(ctx.outer(4), (ctx2) async {
      await ctx2.applyCalls('Courtesy Turn and Roll');
    });
    await ctx.subContext(ctx.center(4), (ctx2) async {
      await ctx2.applyCalls('Step to a Left Hand Wave',anyCall);
    });
  }



}