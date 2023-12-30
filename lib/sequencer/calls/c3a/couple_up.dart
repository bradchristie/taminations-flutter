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

class CoupleUp extends Action with ActivesOnly, CallWithParts {

  @override final level = LevelData.C3A;
  @override var numberOfParts = 2;
  @override var help = '''Couple Up is a 2-part call:
  1.  Box or Split Circulate
  2.  Leaders Turn Back
(anything) Like a Couple Up: Do the (anything) call, then leaders Turn Back.''';
  @override var helplink = 'c3a/couple_up';
  CoupleUp() : super('Couple Up');

  @override
   void performPart1(CallContext ctx) {
    if (ctx.dancers.length == 8)
      ctx.applyCalls('Split Circulate');
    else
      ctx.applyCalls('Box Circulate');
  }

  @override
   void performPart2(CallContext ctx) {
    ctx.analyze();
    ctx.applyCalls('Leaders Turn Back');
  }

}

class LikeACoupleUp extends Action with ActivesOnly {

  @override final level = LevelData.C3A;
  @override var help = CoupleUp().help;
  @override var helplink = CoupleUp().helplink;
  LikeACoupleUp() : super('Like A Couple Up');

  @override
  void perform(CallContext ctx) {
    ctx.applyCalls('Finish Couple Up');
  }

}