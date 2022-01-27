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

class Start extends Action {

  @override final level = LevelData.C1;
  Start(String name) : super(name);

  @override
  Future<void> perform(CallContext ctx) async {
    final finishCall = name.replaceFirst('^start\\s+'.ri,'');
    //  There has to be a subset of dancers selected to Start
    if (ctx.actives.length >= ctx.dancers.length)
      throw CallError('Who is supposed to start?');
    //  If the actives are facing, assume that the first part is Pass Thru
    final startCall = ctx.actives.every((d) => ctx.dancerFacing(d)?.isActive ?? false)
    //  Otherwise for now we will try a Trade
        ? 'Pass Thru' : 'Trade';
    await ctx.applyCalls(startCall);
    for (final d in ctx.dancers)
      d.data.active = true;
    await ctx.applyCalls('Finish $finishCall');
  }

}