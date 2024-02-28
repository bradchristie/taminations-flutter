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

class SwingAndMix extends Action with CallWithParts {

  @override var level = LevelData.A2;
  @override var numberOfParts = 3;
  @override var help = '''Swing and Mix is a 3-part call:
  1.  Swing
  2.  Centers Cross Run
  3.  New Centers Trade''';
  @override var helplink = 'a2/swing_and_mix';

  SwingAndMix(super.name);

  @override
   void performPart1(CallContext ctx) {
    ctx.applyCalls('Swing');
  }

  @override
   void performPart2(CallContext ctx) {
    ctx.applyCalls('Centers Cross Run');
  }

  @override
   void performPart3(CallContext ctx) {
    ctx.analyze();
    ctx.applyCalls('Centers Trade');
  }

}