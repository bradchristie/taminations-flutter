/*
 * *     Copyright 2024 Brad Christie
 *
 *     This file is part of Taminations.
 *
 *     Taminations is free software: you can redistribute it and/or modify
 *     it under the terms of the GNU Affero General Public License as published
 *     by the Free Software Foundation, either version 3 of the License, or
 *     (at your option) any later version.
 *
 *     Taminations is distributed in the hope that it will be useful,
 *     but WITHOUT ANY WARRANTY; without even the implied warranty of
 *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *     GNU Affero General Public License for more details.
 *
 *     You should have received a copy of the GNU Affero General Public License
 *     along with Taminations.  If not, see <http://www.gnu.org/licenses/>.
 */

import '../common.dart';

class SpinChainAndExchangeTheGears extends Action with CallWithParts, CallWithStars {

  @override int numberOfParts = 5;
  @override final level = LevelData.PLUS;
  @override var help = '''Spin Chain and Exchange the Gears has 5 parts:
  1.  Swing
  2.  Centers Cast Off 3/4, others Flip In
  3.  Very Centers Trade
  4.  Turn the Stars 3/4
  5.  Very Centers lead their star to the other side where they form a wave.
You can change the star turn of Part 4 by adding Turn the Star (fraction).
Use "A Full Turn" to turn it all the way around.''';
  @override var helplink = 'plus/spin_chain_and_exchange_the_gears';
  var turnAmount = 3;
  SpinChainAndExchangeTheGears(String name) : super(name);

  @override
   void performPart1(CallContext ctx) {
    ctx.applyCalls('Swing');
  }

  @override
   void performPart2(CallContext ctx) {
    ctx.applyCalls('Spin Chain the Gears Part 2');
  }

  @override
   void performPart3(CallContext ctx) {
    ctx.applyCalls('Very Centers Trade');
  }

  @override
   void performPart4(CallContext ctx) {
    for (var i=0; i<turnAmount; i++)
      ctx.applyCalls('Turn the Stars');
  }


  @override
   void performPart5(CallContext ctx) {
    CallWithParts.performOnePart(ctx,'Spin Chain and Exchange the Gears',5);
  }

}