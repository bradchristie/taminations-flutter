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

class QuarterThru extends Action with CallWithParts {

  @override var level = LevelData.A1;
  @override var numberOfParts = 2;
  List<Dancer>? part1dancers;
  bool isGrand;
  bool isLeft;
  bool isThree;
  @override var help = '''1/4 Thru is a 2-part call:
  1.  Hinge
  2.  Centers Trade''';
  @override var helplink = 'a1/quarter_thru';

  QuarterThru(String name) :
        isGrand=name.contains('Grand'),
        isLeft=name.contains('Left'),
        isThree=TamUtils.normalizeCall(name).contains('34'),
        super(name);

  @override
   void performPart1(CallContext ctx) {
    ctx.subContext(ctx.dancersHoldingSameHands(isRight: !isLeft, isGrand: isGrand), (ctx2) {
      if (ctx2.dancers.isEmpty)
        throw CallError('No dancers able to do Part 1 of $name');
      part1dancers = ctx2.dancers;
      ctx2.applyCalls(isThree ? 'Cast Off 3/4' : 'Hinge');
    }
    );
  }

  @override
   void performPart2(CallContext ctx) {
    ctx.subContext(ctx.dancersHoldingSameHands(isRight: isLeft, isGrand: isGrand), (ctx2) {
      if (ctx2.dancers.isEmpty)
        throw CallError('No dancers able to do Part 2 of $name');
      if (part1dancers != null && !part1dancers!.any((d) => ctx2.actives.contains(d)))
        throw CallError('No dancers doing both Parts 1 and 2 of $name');
      ctx2.applyCalls('Trade');
    }
    );
  }

}