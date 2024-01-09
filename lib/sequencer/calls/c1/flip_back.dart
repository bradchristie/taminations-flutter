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

class FlipBack extends Action with CallWithParts {

  @override final level = LevelData.C1;
  @override var help = '''Flip Back is a 2-part call:
  1.  Flip the Line 1/2
  2.  Scoot Back''';
  @override var helplink = 'c1/tagging_calls_back_to_a_wave';
  @override var numberOfParts = 2;
  FlipBack() : super('Flip Back');

  @override
   void performPart1(CallContext ctx) {
    ctx.applyCalls('Flip the Line 1/2');
  }

  @override
   void performPart2(CallContext ctx) {
    ctx.applyCalls('Scoot Back');
  }

}