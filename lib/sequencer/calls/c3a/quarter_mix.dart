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

class QuarterMix extends Action with CallWithParts {

  @override var level = LevelData.C3A;
  @override var numberOfParts = 3;
  bool isGrand;
  bool isLeft;
  bool isThree;
  QuarterMix(name) :
        isGrand=name.contains('Grand'),
        isLeft=name.contains('Left'),
        isThree=TamUtils.normalizeCall(name).contains('34'),
        super(name);

  @override
  Future<void> performPart1(CallContext ctx) async {
    await ctx.subContext(ctx.dancersHoldingSameHands(isRight: !isLeft, isGrand: isGrand), (ctx2) async {
      if (ctx2.dancers.isEmpty)
        throw CallError('No dancers able to do Part 1 of $name');
      await ctx2.applyCalls(isThree ? 'Cast Off 3/4' : 'Hinge');
    }
    );
  }

  @override
  Future<void> performPart2(CallContext ctx) async {
    await ctx.applyCalls('Centers Cross Run');
  }

  @override
  Future<void> performPart3(CallContext ctx) async {
    await ctx.applyCalls('Centers Trade');
  }

}