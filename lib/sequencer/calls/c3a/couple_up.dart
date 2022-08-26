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

class CoupleUp extends ActivesOnlyAction with CallWithParts {

  @override final level = LevelData.C3A;
  @override var numberOfParts = 2;
  @override var help = '''Couple Up is a 2-part call:
  1.  Box or Split Circulate
  2.  Leaders Turn Back
(anything) Like a Couple Up: Do the (anything) call, then leaders Turn Back.''';
  @override var helplink = 'c3a/couple_up';
  CoupleUp() : super('Couple Up');

  @override
  Future<void> performPart1(CallContext ctx) async {
    if (ctx.dancers.length == 8)
      await ctx.applyCalls('Split Circulate');
    else
      await ctx.applyCalls('Box Circulate');
  }

  @override
  Future<void> performPart2(CallContext ctx) async {
    ctx.analyze();
    await ctx.applyCalls('Leaders Turn Back');
  }

}

class LikeACoupleUp extends ActivesOnlyAction {

  @override final level = LevelData.C3A;
  LikeACoupleUp() : super('Like A Couple Up');

  @override
  Future<void> perform(CallContext ctx) async {
    await ctx.applyCalls('Finish Couple Up');
  }

}