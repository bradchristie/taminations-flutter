/*

  Taminations Square Dance Animations
  Copyright (C) 2026 Brad Christie

  This program is free software: you can redistribute it and/or modify
  it under the terms of the GNU General Public License as published by
  the Free Software Foundation, either version 3 of the License, or
  (at your option) any later version.

  This program is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  GNU General Public License for more details.

  You should have received a copy of the GNU General Public License
  along with this program.  If not, see <http://www.gnu.org/licenses/>.

*/

import '../common.dart';

class QuarterMix extends Action with CallWithParts, IsLeft, IsGrand {

  @override var level = LevelData.C3A;
  @override var numberOfParts = 3;
  bool is34;
  @override var help = '''1/4 Mix is a 3-part call:
  1.  Hinge
  2.  Centers Cross Run
  3.  New Centers Trade''';
  @override var helplink = 'c3a/1_4_mix';

  QuarterMix(super.name) : is34=normalizeCall(name).contains('34');

  @override
  void performPart1(CallContext ctx) {
    ctx.subContext(ctx.dancersHoldingSameHands(isRight: !isLeft, isGrand: isGrand), (ctx2) {
      if (ctx2.dancers.isEmpty)
        throw CallError('No dancers able to do Part 1 of $name');
      ctx2.applyCalls(is34 ? 'Cast Off 3/4' : 'Hinge');
    }
    );
  }

  @override
  void performPart2(CallContext ctx) {
    ctx.applyCalls('Centers Cross Run');
  }

  @override
  void performPart3(CallContext ctx) {
    ctx.applyCalls('Centers Trade');
  }

}