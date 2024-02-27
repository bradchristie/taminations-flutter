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

class CastAndRelay extends Action with CallWithParts, ButCall, CallWithStars {

  @override var level = LevelData.C3B;
  @override var numberOfParts = 4;
  @override var turnStarAmount = 0;
  @override var help = '''(fraction) Cast and Relay is a 4-part call:
  1.  Turn (fraction)
  2.  Centers Cast Off 3/4, Ends Circulate 1/2
  3.  Centers Turn the Star (fraction), others Trade
  4.  Center Wave of 4 Cast Off 3/4, others Hourglass Circulate
The turn amount for Part 3 can be changed by appending Turn the Star (amount).
The centers part for Part 4 can be changed with But (another call).''';
  @override var helplink = 'c3b/fraction_cast_and_relay';

  String fraction;
  static final fractionCall = {
    '14' : 'Hinge',
    '12' : 'Trade',
    '34' : 'Cast Off 3/4'
  };
  static final fractionTurn = {
    '14' : 1,
    '12' : 2,
    '34' : 3
  };

  CastAndRelay(super.name) : fraction=normalizeCall(name).substring(0,2);

  @override
   void performPart1(CallContext ctx) {
    var amount = fractionCall[fraction] ??
        thrower(CallError('What fraction to Cast and Relay?'))!;
    ctx.applyCalls(amount);
  }

  @override
   void performPart2(CallContext ctx) {
    ctx.applyCalls('Centers Cast Off 3/4 '
        'While Ends Do Your Part Big Hourglass Circulate');
  }

  @override
   void performPart3(CallContext ctx) {
    if (turnStarAmount == 0)
      turnStarAmount = fractionTurn[fraction]!;
    ctx.applyCalls('Center Star $starTurns While Others Trade');
  }

  @override
   void performPart4(CallContext ctx) {
    ctx.applyCalls('Center Wave $butCall '
        'While Others Do Your Part Hourglass Circulate');
  }
}