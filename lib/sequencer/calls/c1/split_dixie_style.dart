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

class SplitDixieStyle extends Action with CallWithParts {

  @override var level = LevelData.C1;
  @override var numberOfParts = 2;
  SplitDixieStyle(String name) : super(name);

  @override
  Future<void> performPart1(CallContext ctx) async {
    if (ctx.dancers.any((d) => ctx.isInWave(d))) {
      final face = ctx.dancers.where((d) => ctx.isInWave(d)).every((d) => d.data.center)
      ? 'Face Out' : 'Face In';
      await ctx.applyCalls('Wave Dancers Pull By and $face');
    } else {
      await ctx.applyCalls('Facing Dancers Pull By and 1/4 In');
    }
  }

  @override
  Future<void> performPart2(CallContext ctx) async {
    await ctx.applyCalls('Left Touch 1/4');
  }


}