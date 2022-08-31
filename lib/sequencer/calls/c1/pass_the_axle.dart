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

class PassTheAxle extends Action with CallWithParts, ButCall {

  @override int numberOfParts = 4;
  @override final level = LevelData.C1;
  @override var butCall = 'Trade';
  @override var help = '''Pass the Axle is a 4-part call:
  1.  Pass Thru
  2.  Centers Pass Thru, others Cross Cast Back
  3.  Swing
  4.  Centers Trade
Part 3 can be replaced with But (another call)''';
  @override var helplink = 'c1/pass_the_axle';
  PassTheAxle() : super('Pass the Axle');

  @override
  Future<void> performPart1(CallContext ctx) async {
    await ctx.applyCalls('Pass Thru');
  }

  @override
  Future<void> performPart2(CallContext ctx) async {
    await ctx.applyCalls('Centers Pass Thru While Ends Cross Cast Back');
    ctx.matchStandardFormation();
  }

  @override
  Future<void> performPart3(CallContext ctx) async {
    await ctx.applyCalls(butCall);
  }

  @override
  Future<void> performPart4(CallContext ctx) async {
    await ctx.applyCalls('Centers Trade');
  }

}