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

class Coordinate extends FourPartCall {

  @override var level = LevelData.PLUS;
  Coordinate() : super('Coordinate');

  @override
  Future<void> performPart1(CallContext ctx) async {
    await ctx.applyCalls('Circulate');
  }

  @override
  Future<void> performPart2(CallContext ctx) async {
    await ctx.applyCalls('1/2 Circulate');
  }

  @override
  Future<void> performPart3(CallContext ctx) async {
    await ctx.applyCalls('Center 6 Trade');
  }

  @override
  Future<void> performPart4(CallContext ctx) async {
    await ctx.applyCalls('Very Centers Do Your Part Hourglass Circulate');
    ctx.contractPaths();
    await ctx.applyCalls('Outer 2 Do Your Part Hourglass Circulate');
  }

}