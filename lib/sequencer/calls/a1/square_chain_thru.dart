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

class SquareChainThru extends ActivesOnlyAction with CallWithParts {

  @override var level = LevelData.A1;
  @override var numberOfParts = 3;
  SquareChainThru(String name) : super(name);

  @override
  Future<void> performPart1(CallContext ctx) async {
    final pullBy = name.contains('Left') ? 'Left Pull By' : 'Pull By';
    await ctx.applyCalls(pullBy,'Quarter In');
  }

  @override
  Future<void> performPart2(CallContext ctx) async {
    final left = name.contains('Left') ? '' : 'Left';
    await ctx.applyCalls('$left Swing Thru');
  }

  @override
  Future<void> performPart3(CallContext ctx) async {
    final left = name.contains('Left') ? '' : 'Left';
    await ctx.applyCalls('$left Turn Thru');
  }

}