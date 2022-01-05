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

class SwingTheFractions extends FivePartCall {

  @override var level = LevelData.C1;
  bool isLeft;
  SwingTheFractions(String name) :
        isLeft=name.contains('Left'),
        super(name);

  @override
  Future<void> performPart1(CallContext ctx) async {
    ctx.analyze();
    await ctx.subContext(ctx.dancersHoldingSameHands(isRight: !isLeft),
            (ctx2) async => await ctx2.applyCalls('Trade')
    );
  }

  @override
  Future<void> performPart2(CallContext ctx) async {
    ctx.analyze();
    await ctx.subContext(ctx.dancersHoldingSameHands(isRight: isLeft),
            (ctx2) async => await ctx2.applyCalls('Trade')
    );
  }


  @override
  Future<void> performPart3(CallContext ctx) async {
    ctx.analyze();
    await ctx.subContext(ctx.dancersHoldingSameHands(isRight: !isLeft),
            (ctx2) async => await ctx2.applyCalls('Cast Off 3/4')
    );
  }

  @override
  Future<void> performPart4(CallContext ctx) async {
    ctx.analyze();
    await ctx.subContext(ctx.dancersHoldingSameHands(isRight: isLeft),
            (ctx2) async => await ctx2.applyCalls('Trade')
    );
  }

  @override
  Future<void> performPart5(CallContext ctx) async {
    ctx.analyze();
    await ctx.subContext(ctx.dancersHoldingSameHands(isRight: !isLeft),
            (ctx2) async => await ctx2.applyCalls('Trade')
    );
  }

}