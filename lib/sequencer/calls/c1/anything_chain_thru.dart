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

class AnythingChainThru extends Action {

  @override final level = LevelData.C1;
  AnythingChainThru(String name) : super(name);

  @override
  Future<void> perform(CallContext ctx, [int stackIndex = 0]) async {
    final firstCall = name.replaceFirst('Chain\\s*Thru'.ri,'')
        .replaceFirst('Triangle'.ri,'Triangle Circulate')
        .replaceFirst('Interlocked\\s*Diamond'.ri,'Interlocked Diamond Circulate');
    print('firstCall: $firstCall');
    await ctx.applyCalls(firstCall,'very centers trade','center 4 cast off 34');
  }

}