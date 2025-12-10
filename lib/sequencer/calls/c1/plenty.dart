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

class Plenty extends Action with CallWithParts, CallWithStars {

  @override int numberOfParts = 3;
  @override final level = LevelData.C1;
  @override var turnStarCall = 'Split Circulate';
  @override var turnStarAmount = 2;
  @override var help = '''Plenty is a 3-part call:
  1.  Center 4 Step and Fold, others Face Right and Counter Rotate
  2.  Split Circulate twice
  3.  Center 4 1/2 Zoom, others Counter Rotate and Roll
The number of Split Circulates can be changed with Turn the Star (fraction)''';
  @override var helplink = 'c1/scoot_and_plenty';

  Plenty(super.name);

  @override
  int partNumberForName(String name) {
    if (name.matches('.*Stars?'.ri))
      return 2;
    return 0;
  }

  @override
   void performPart1(CallContext ctx) {
    ctx.applyCalls('Center 4 Step and Fold '
        'While Outer 4 Face Right and Counter Rotate');
    ctx.adjustToFormation(Formation('Normal Lines Compact'));
  }

  @override
   void performPart2(CallContext ctx) {
    ctx.applyCalls(starTurns);
  }

  @override
   void performPart3(CallContext ctx) {
    ctx.applyCalls('Outer 4 Counter Rotate and Roll '
        'While Center 4 1/2 Zoom');
    ctx.adjustToFormation(Formation('Quarter Tag'));
  }

}