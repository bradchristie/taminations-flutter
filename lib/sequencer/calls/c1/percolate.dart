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

class Percolate extends Action with CallWithParts, ButCall {

  @override int numberOfParts = 3;
  @override final level = LevelData.C1;
  @override var butCall = 'Hinge and Cross';
  Percolate() : super('Percolate');

  @override
  Future<void> performPart1(CallContext ctx) async {
    await ctx.applyCalls('Circulate');
  }

  @override
  Future<void> performPart2(CallContext ctx) async {
    await ctx.applyCalls('Half Circulate');
  }

  @override
  Future<void> performPart3(CallContext ctx) async {
    ctx.analyze();
    final turnCall = ctx.outer(4).every((d) => d.data.belle)
        ? 'Left Turn Thru' : 'Turn Thru';
    await ctx.applyCalls('Center Wave of 4 $butCall While Others $turnCall');
  }

}