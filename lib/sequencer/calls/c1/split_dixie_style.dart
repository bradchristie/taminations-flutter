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

class SplitDixieStyle extends Action with CallWithParts {

  @override var level = LevelData.C1;
  @override var numberOfParts = 2;
  @override var help = '''Split Dixie Style to a Wave has 2 parts:
  1.  Facing dancers Pull By and 1/4 In
  2.  Left Touch 1/4''';
  @override var helplink = 'c1/split_square_thru_variations';
  SplitDixieStyle(String name) : super(name);

  @override
   void performPart1(CallContext ctx) {
    if (ctx.dancers.any((d) => ctx.isInWave(d))) {
      final face = ctx.dancers.where((d) => ctx.isInWave(d)).every((d) => d.data.center)
      ? 'Face Out' : 'Face In';
      ctx.applyCalls('Wave Dancers Pull By and $face');
    } else {
      final face = ctx.dancers.where((d) => ctx.dancerFacing(d)!=null).every((d) => d.data.center)
          ? 'Face Out' : 'Face In';
      ctx.applyCalls('Facing Dancers Pull By and $face');
    }
  }

  @override
   void performPart2(CallContext ctx) {
    var stretch = name.contains('Sashay') ? 'Stretch' : '';
    ctx.applyCalls('$stretch Left Touch 1/4');
  }

}