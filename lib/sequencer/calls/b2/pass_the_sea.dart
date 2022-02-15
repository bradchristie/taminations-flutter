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

//  All the common cases are covered by explicit animations.
//  This is used mainly for its individual parts.
class PassTheSea extends ActivesOnlyAction with CallWithParts {

  @override var level = LevelData.A1;
  @override int numberOfParts = 3;
  PassTheSea() : super('Pass the Sea');

  @override
  Future<void> performPart1(CallContext ctx) async {
    await ctx.applyCalls('Pass Thru');
  }

  @override
  Future<void> performPart2(CallContext ctx) async {
    await ctx.applyCalls('Quarter In');
  }

  @override
  Future<void> performPart3(CallContext ctx) async {
    await ctx.applyCalls('Step to a Left-Hand Wave');
  }

}