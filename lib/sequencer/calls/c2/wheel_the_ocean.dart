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

//  This class includes 1/4, 3/4 Wheel the Ocean / Seabtl
class WheelTheOcean extends ActivesOnlyAction with CallWithParts {

  @override var numberOfParts = 2;
  WheelTheOcean(String name) : super(name) {
    final norm = TamUtils.normalizeCall(name);
    if (norm.startsWith('14') || norm.startsWith('34'))
      level = LevelData.C3A;
    else
      level = LevelData.C2;
  }

  @override
  Future<void> performPart1(CallContext ctx) async {
    final norm = TamUtils.normalizeCall(name);
    if (norm.startsWith('14'))
      await ctx.applyCalls('1/2 Wheel Around');
    else if (norm.startsWith('34'))
      await ctx.applyCalls('Wheel Around Once and a Half');
    else
      await ctx.applyCalls('Wheel Around');
  }

  @override
  Future<void> performPart2(CallContext ctx) async {
    if (name.endsWith('Sea'))
      await ctx.applyCalls('Belles Walk Beaus Dodge');
    else
      await ctx.applyCalls('Belles Cross');
  }

}