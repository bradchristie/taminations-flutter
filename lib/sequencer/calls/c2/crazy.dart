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

class Crazy extends Action {

  @override final level = LevelData.C2;
  Crazy(String name) : super(name);

  @override
  Future<void> perform(CallContext ctx, [int stackIndex = 0]) async {
    final crazyCall = name.replaceFirst('.*Crazy '.r, '');
    var crazy8 = crazyCall;
    if (crazyCall.matches('counter rotate.*'.ri) ||
        crazyCall.matches('circulate.*'.ri))
      crazy8 = 'Split $crazyCall';
    final crazy4 = crazyCall.matches('counter rotate.*'.ri)
        ? 'Center 4 Box $crazyCall'
        : 'Center 4 $crazyCall';
    final isReverse = name.contains('Reverse Crazy');
    final norm = TamUtils.normalizeCall(name);
    await ctx.applyCalls(isReverse ? crazy4 : crazy8);
    ctx.matchStandardFormation();
    await ctx.applyCalls(isReverse ? crazy8 : crazy4);
    if (!norm.startsWith('12')) {
      ctx.matchStandardFormation();
      await ctx.applyCalls(isReverse ? crazy4 : crazy8);
      if (!norm.startsWith('34')) {
        ctx.matchStandardFormation();
        await ctx.applyCalls(isReverse ? crazy8 : crazy4);
      }
    }
  }

}