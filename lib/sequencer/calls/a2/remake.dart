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

class Remake extends ActivesOnlyAction with CallWithParts {

  @override int numberOfParts = 3;
  @override final level = LevelData.A2;
  bool isGrand;
  bool isLeft;
  List<Dancer>? part1dancers;
  List<Dancer>? part2dancers;
  @override var help = '''Remake is a 3-part call:
  1.  Right-hand Hinge
  2.  Left-hand Trade
  3.  Right-hand Cast Off 3/4
Switch hands with Left Remake
Allow very centers to work with each other with Grand Remake''';
  @override var helplink = 'a2/remake';
  Remake(String name) :
        isGrand=name.contains('Grand'),
        isLeft=name.contains('Left'),
        super(name);

  @override
  Future<void> performPart1(CallContext ctx) async {
    ctx.analyze();
    await ctx.subContext(ctx.dancersHoldingSameHands(isRight: !isLeft, isGrand: isGrand), (ctx2) async {
      if (ctx2.dancers.isEmpty)
        throw CallError('No dancers able to do Part 1 of Remake');
      part1dancers = ctx2.dancers;
      await ctx2.applyCalls('Hinge');
    }
    );
  }

  @override
  Future<void> performPart2(CallContext ctx) async {
    ctx.analyze();
    await ctx.subContext(ctx.dancersHoldingSameHands(isRight: isLeft, isGrand: isGrand), (ctx2) async {
      if (ctx2.dancers.isEmpty)
        throw CallError('No dancers able to do Part 2 of Remake');
      if (part1dancers != null && !part1dancers!.any((d) => ctx2.actives.contains(d)))
        throw CallError('No dancers doing both Parts 1 and 2 of Remake');
      part2dancers = ctx2.dancers;
      await ctx2.applyCalls('Trade');
    }
    );
  }

  @override
  Future<void> performPart3(CallContext ctx) async {
    ctx.analyze();
    await ctx.subContext(ctx.dancersHoldingSameHands(isRight: !isLeft, isGrand: isGrand), (ctx2) async {
      if (ctx2.dancers.isEmpty)
        throw CallError('No dancers able to do Part 3 of Remake');
      if (part2dancers != null && !part2dancers!.any((d) => ctx2.actives.contains(d)))
        throw CallError('No dancers doing both Parts 2 and 3 of Remake');
      await ctx2.applyCalls('Cast Off 3/4');
    }
    );
  }

}