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

class SpinThePulley extends Action with CallWithParts, ButCall {

  @override var level = LevelData.C3A;
  @override var numberOfParts = 3;
  @override var butCall = 'Peel Off';
  SpinThePulley(String name) : super(name);

  @override
  Future<void> performPart1(CallContext ctx) async {
    if (ctx.dancers.none((d) => ctx.isInWave(d))) {
      if (ctx.actives.length < ctx.dancers.length)
        await ctx.applyCalls('Step to a Wave');
      else
        await ctx.applyCalls('Centers Step to a Wave');
    }
    ctx.matchStandardFormation();
    ctx.analyze();
    await ctx.applyCalls('Centers Cast Off 3/4');
  }

  @override
  Future<void> performPart2(CallContext ctx) async {
    await ctx.applyCalls('Everyone Triple Cross');
  }

  @override
  Future<void> performPart3(CallContext ctx) async {
    await ctx.applyCalls(butCall);
  }

}