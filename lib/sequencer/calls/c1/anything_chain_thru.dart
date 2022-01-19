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

class AnythingChainThru extends Action with CallWithParts {

  @override int numberOfParts = 3;
  @override final level = LevelData.C1;
  String firstCall;
  AnythingChainThru(String name) :
        firstCall = name.replaceFirst('Chain\\s*Thru'.ri,'').trim(),
        super(name) {
    if (firstCall.endsWith('Triangle') ||
        firstCall == 'Ping Pong' ||
        firstCall == 'Diamond' ||
        firstCall == 'Interlocked Diamond')
      firstCall += ' Circulate';
  }

  @override
  Future<void> performPart1(CallContext ctx) async {
    await ctx.applyCalls(firstCall);
  }

  @override
  Future<void> performPart2(CallContext ctx) async {
    await ctx.applyCalls('Very Centers Trade');
  }

  @override
  Future<void> performPart3(CallContext ctx) async {
    await ctx.applyCalls('Center 4 Cast Off 3/4');
  }


}