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

class EightChain extends Action with CallWithParts {

  @override final level = LevelData.MS;
  @override var help = 'Eight Chain (n) has n parts.';
  @override var helplink = 'ms/eight_chain_thru';
  EightChain(String name) : super(name) {
    var howMuch = TamUtils.normalizeCall(name.replaceFirst('Eight Chain '.ri, ''));
    numberOfParts = howMuch == 'Thru' ? 8 : int.tryParse(howMuch) ?? 0;
    if (numberOfParts <= 0)
      throw CallError('Eight Chain how much?');
  }

  @override
  Future<void> performPart1(CallContext ctx) async {
    await ctx.applyCalls('Pass Thru');
  }

  @override
  Future<void> performPart2(CallContext ctx) async {
    await ctx.applyCalls('Center Pass Thru While Outsides Courtesy Turn');
  }

  @override
  Future<void> performPart3(CallContext ctx) async {
    await ctx.applyCalls('Pass Thru');
  }

  @override
  Future<void> performPart4(CallContext ctx) async {
    await ctx.applyCalls('Center Pass Thru While Outsides Courtesy Turn');
  }

  @override
  Future<void> performPart5(CallContext ctx) async {
    await ctx.applyCalls('Pass Thru');
  }

  @override
  Future<void> performPart6(CallContext ctx) async {
    await ctx.applyCalls('Center Pass Thru While Outsides Courtesy Turn');
  }

  @override
  Future<void> performPart7(CallContext ctx) async {
    await ctx.applyCalls('Pass Thru');
  }

  @override
  Future<void> performPart8(CallContext ctx) async {
    await ctx.applyCalls('Center Pass Thru While Outsides Courtesy Turn');
  }

}