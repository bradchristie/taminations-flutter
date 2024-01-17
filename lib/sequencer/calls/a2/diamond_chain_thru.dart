/*

  Taminations Square Dance Animations
  Copyright (C) 2024 Brad Christie

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

class DiamondChainThru extends Action with CallWithParts, ButCall {

  @override var level = LevelData.A2;
  @override var numberOfParts = 3;
  @override var helplink = 'a2/diamond_chain_thru';
  @override var help = '''Diamond Chain Tnru is a 3-part call:
  1.  Diamond Circulate
  2.  Very Centers Trade
  3.  Centers Cast Off 3/4
  Part 3 can be replaced with But (another call)''';

  DiamondChainThru(super.name);

  @override
  void performPart1(CallContext ctx) {
    ctx.applyCalls('Diamond Circulate');
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