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

import 'package:taminations/sequencer/calls/ms/hinge.dart';

import '../common.dart';

class SwingTheFractions extends Action with CallWithParts, IsLeft {

  @override int numberOfParts = 5;
  @override var level = LevelData.C1;
  @override var help = '''Swing the Fractions is a 5-part call:
  1.  Right Hinge
  2.  Left Swing
  3.  Cast Off 3/4 with the Right Hand
  4.  Left Swing
  5.  Right Hinge
The hands can be swapped with Left Swing the Fractions''';
  @override var helplink = 'c1/swing_the_fractions';

  List<DancerModel>? part1dancers;
  List<DancerModel>? part2dancers;
  List<DancerModel>? part3dancers;
  List<DancerModel>? part4dancers;

  SwingTheFractions(super.name);

  @override
   void performPart1(CallContext ctx) {
    ctx.analyze();
    ctx.subContext(ctx.dancersHoldingSameHands(isRight: !isLeft), (ctx2) {
      part1dancers = ctx2.dancers;
      Hinge('Hinge').performCall(ctx2);
    });
  }

  @override
   void performPart2(CallContext ctx) {
    ctx.analyze();
    ctx.subContext(ctx.dancersHoldingSameHands(isRight: isLeft), (ctx2) {
      if (part1dancers != null && !part1dancers!.any((d) => ctx2.actives.contains(d)))
        throw CallError('No dancers doing both Parts 1 and 2 of Swing the Fractions');
      part2dancers = ctx2.dancers;
      ctx2.applyCalls('Trade');
    }
    );
  }


  @override
   void performPart3(CallContext ctx) {
    ctx.analyze();
    ctx.subContext(ctx.dancersHoldingSameHands(isRight: !isLeft), (ctx2) {
      if (part2dancers != null && !part2dancers!.any((d) => ctx2.actives.contains(d)))
        throw CallError('No dancers doing both Parts 2 and 3 of Swing the Fractions');
      part3dancers = ctx2.dancers;
      ctx2.applyCalls('Cast Off 3/4');
    }
    );
  }

  @override
   void performPart4(CallContext ctx) {
    ctx.analyze();
    ctx.subContext(ctx.dancersHoldingSameHands(isRight: isLeft), (ctx2) {
      if (part3dancers != null && !part3dancers!.any((d) => ctx2.actives.contains(d)))
        throw CallError('No dancers doing both Parts 3 and 4 of Swing the Fractions');
      part4dancers = ctx2.dancers;
      ctx2.applyCalls('Trade');
    }
    );
  }

  @override
   void performPart5(CallContext ctx) {
    ctx.analyze();
    ctx.subContext(ctx.dancersHoldingSameHands(isRight: !isLeft), (ctx2) {
      if (part4dancers != null && !part4dancers!.any((d) => ctx2.actives.contains(d)))
        throw CallError('No dancers doing both Parts 4 and 5 of Swing the Fractions');
      ctx2.applyCalls('Hinge');
    }
    );
  }

}