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

class RelayTheTop extends Action with CallWithParts, CallWithStars, ButCall {

  @override int numberOfParts = 4;
  @override final level = LevelData.C1;
  @override var help = '''Relay the Top is a 4-part call:
  1.  Swing
  2.  Centers Cast Off 3/4, others Hourglass Circulate
  3.  Center 4 Turn the Star 1/4, others Trade
  4.  Center 4 in the wave Cast Off 3/4, others Hourglass Circulate
The star can be modified with Turn the Star (fraction)
Cast Off 3/4 in Part 4 can be replaced with But (another call)''';
  @override var helplink = 'c1/relay_the_top';

  RelayTheTop(super.name);

  @override
   void performPart1(CallContext ctx) {
    ctx.applyCalls('Swing');
  }

  @override
   void performPart2(CallContext ctx) {
    ctx.applyCalls('Centers Cast Off 3/4 '
        'While Ends Do Your Part Big Hourglass Circulate');

  }

  @override
   void performPart3(CallContext ctx) {
    ctx.applyCalls('Outer 4 Trade While Center Star $starTurns');
  }

  @override
   void performPart4(CallContext ctx) {
    ctx.applyCalls('Center Wave $butCall '
        'While Others Do Your Part Hourglass Circulate');
  }

}