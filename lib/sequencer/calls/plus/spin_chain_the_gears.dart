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

class SpinChainTheGears extends Action with CallWithParts, CallWithStars,
    IsLeft, FacingCouplesRule {

  @override int numberOfParts = 6;
  @override final level = LevelData.PLUS;
  @override var turnStarAmount = 3;
  @override var help = '''Spin Chain the Gears is a 6-part call:
  1.  Swing
  2.  Centers Cast Off 3/4, others Flip In
  3.  Very Centers Trade
  4.  Turn the Stars 3/4
  5.  Very Centers Trade
  6.  Center Wave Cast Off 3/4, others Flip Out
You can change the star turn of Part 4 by adding Turn the Star (fraction).
Use "A Full Turn" to turn it all the way around.''';
  @override var helplink = 'plus/spin_chain_the_gears';

  SpinChainTheGears(super.name);

  @override
  int partNumberForName(String name) {
    if (name.contains('(turn(ing)? )?the stars?'.ri))
      return 4;
    return super.partNumberForName(name);
  }

  @override
   void performPart1(CallContext ctx) {
    applyFacingCouplesRule(ctx);
    ctx.applyCalls('Swing');
  }

  @override
   void performPart2(CallContext ctx) {
    ctx.applyCalls('Centers Cast Off 3/4 While Ends Flip In');
  }

  @override
   void performPart3(CallContext ctx) {
    ctx.applyCalls('Very Centers Trade');
  }

  @override
   void performPart4(CallContext ctx) {
    for (var i=0; i<turnStarAmount; i++)
      ctx.applyCalls('Turn the Stars');
  }

  @override
   void performPart5(CallContext ctx) {
    ctx.applyCalls('Very Centers Trade');
  }

  @override
   void performPart6(CallContext ctx) {
    ctx.applyCalls('Center Wave of 4 Cast Off 3/4 While Others Flip Out');
  }

}