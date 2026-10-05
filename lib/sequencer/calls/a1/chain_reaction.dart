/*

  Taminations Square Dance Animations
  Copyright (C) 2026 Brad Christie

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

  ChainReaction(super.name);

  @override
   void performPart1(CallContext ctx) {
    final level = ctx.outer(4).every((d) => ctx.isInCouple(d)) &&
        ctx.center(4).every((d) => ctx.isInWave(d))
        ? LevelData.A1 : LevelData.C1;
    ctx.applyCalls('Facing Dancers Pass Thru '
        'While Center Wave Except the Very Centers Counter Rotate');
    ctx.adjustToFormation(Formation('Sausage RH'));
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