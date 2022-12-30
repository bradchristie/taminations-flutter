/*
 *     Copyright 2022 Brad Christie
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

class ChainReaction extends Action with CallWithParts, CallWithStars, ButCall {

  @override int numberOfParts = 4;
  @override final level = LevelData.A1;
  @override var helplink = 'a1/chain_reaction';
  @override var help = '''Chain Reaction is a 4-part call:
  1.  Facing Dancers Pass Thru, Ends of wave Counter Rotate
  2.  Middle 4 dancers Hinge
  3.  Center 4 Turn the Star, Outer 4 Trade
  4.  Center 4 of wave Cast Off 3/4, others Hourglass Circulate
The star turn amount can be changed with Turn the Star (fraction).
The centers part of Part 4 can be changed with But (another call).  
  ''';
  ChainReaction() : super('Chain Reaction');

  @override
   void performPart1(CallContext ctx) {
    final level = ctx.outer(4).every((d) => ctx.isInCouple(d)) &&
        ctx.center(4).every((d) => ctx.isInWave(d))
        ? LevelData.A1 : LevelData.C1;
    ctx.applyCalls('Facing Dancers Pass Thru While Ends Counter Rotate');
    ctx.adjustToFormation('Sausage RH');
    ctx.level = level;
  }

  @override
   void performPart2(CallContext ctx) {
    ctx.applyCalls('Center 6 Except the Very Centers Hinge');
  }

  @override
   void performPart3(CallContext ctx) {
    ctx.applyCalls('Outer 4 Trade While Center Diamond $starTurns');
  }

  @override
   void performPart4(CallContext ctx) {
    ctx.applyCalls('Center Wave $butCall '
        'While Others Do Your Part Hourglass Circulate');
  }

}