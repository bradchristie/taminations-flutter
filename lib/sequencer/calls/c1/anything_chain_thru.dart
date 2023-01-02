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

class AnythingChainThru extends Action with CallWithParts, ButCall {

  @override int numberOfParts = 3;
  @override final level = LevelData.C1;
  @override var help = '''(anything) Chain Thru is a 3-part call:
  1.  Do the (anything) call.  If the call is a Circulate you can omit the word Circulate.
  2.  Very Centers Trade
  3.  Center 4 Cast Off 3/4 - can be replaced with But''';
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
   void performPart1(CallContext ctx) {
    ctx.applyCalls(firstCall);
  }

  @override
   void performPart2(CallContext ctx) {
    ctx.applyCalls('Very Centers Trade');
  }

  @override
   void performPart3(CallContext ctx) {
    ctx.applyCalls('Center 4 $butCall');
  }


}