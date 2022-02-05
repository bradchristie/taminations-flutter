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

class Sidetrack extends ActivesOnlyAction with CallWithParts {

  @override var level = LevelData.C3B;
  @override var numberOfParts = 3;
  Sidetrack(String name) : super(name);

  @override
  Future<void> performPart1(CallContext ctx) async {
    await ctx.applyCalls('Zig Zag');
    ctx.matchStandardFormation();
  }

  @override
  Future<void> performPart2(CallContext ctx) async {
    if (name.contains('single'.ri))
      await ctx.applyCalls('Lockit');
    else if (name.contains('split'.ri))
      await ctx.applyCalls('Split Counter Rotate');
    else
      await ctx.applyCalls('Counter Rotate');
  }

  @override
  Future<void> performPart3(CallContext ctx) async {
    await ctx.applyCalls('Roll');
  }

}