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

class CastAndRelay extends Action with CallWithParts, ButCall, CallWithStars {

  @override var level = LevelData.C3B;
  @override var numberOfParts = 4;
  @override var turnStarAmount = 0;
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
  CastAndRelay(String name) :
        fraction=TamUtils.normalizeCall(name).substring(0,2),
        super(name);

  @override
  Future<void> performPart1(CallContext ctx) async {
    await ctx.applyCalls(fractionCall[fraction]!);
  }

  @override
  Future<void> performPart2(CallContext ctx) async {
    await ctx.applyCalls('Centers Cast Off 3/4 '
        'While Ends Do Your Part Big Hourglass Circulate');
  }

  @override
  Future<void> performPart3(CallContext ctx) async {
    if (turnStarAmount == 0)
      turnStarAmount = fractionTurn[fraction]!;
    await ctx.applyCalls('Center 4 $starTurns While Others Trade');
  }

  @override
  Future<void> performPart4(CallContext ctx) async {
    await ctx.applyCalls('Wave of 6 Center 4 $butCall '
        'While Others Do Your Part Hourglass Circulate');
  }
}