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

import '../common.dart';

class ScootAndPlenty extends Action with CallWithParts, CallWithStars {

  @override int numberOfParts = 4;
  @override final level = LevelData.C1;
  @override var turnStarAmount = 2;
  @override var turnStarCall = 'Split Circulate';
  @override var help = '''Scoot and Plenty is a 4-part call:
  1.  Scoot Back
  2.  Little, outsides in direction of the Scoot Back
  3.  Split Circulate twice
  4.  Center 4 1/2 Zoom, others Counter Rotate and Roll
The number of Split Circulates can be modified with "Split Circulate n" or "Turn the Star n"''';
  @override var helplink = 'c1/scoot_and_plenty';
  String dir = 'Right';

  ScootAndPlenty(super.name);

  @override
  int partNumberForName(String name) {
    if (name.matches('.*Stars?'.ri))
      return 3;
    return 0;
  }

  @override
   void performPart1(CallContext ctx) {
    if (ctx.dancersHoldingLeftHands(isGrand: false).length > 2)
      dir = 'Left';
    ctx.applyCalls('Scoot Back');
  }

  @override
   void performPart2(CallContext ctx) {
    ctx.applyCalls('Center 4 Step and Fold '
        'While Outer 4 Face $dir and Counter Rotate');
    ctx.adjustToFormation(Formation('Normal Lines Compact'));
  }

  @override
   void performPart3(CallContext ctx) {
    ctx.applyCalls(starTurns);
  }

  @override
   void performPart4(CallContext ctx) {
    ctx.applyCalls('Outer 4 Counter Rotate and Roll '
        'While Center 4 1/2 Zoom');
    ctx.adjustToFormation(Formation('Quarter Tag'));
  }

}