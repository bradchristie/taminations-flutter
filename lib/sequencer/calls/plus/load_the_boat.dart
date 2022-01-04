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

class LoadTheBoat extends FourPartCall {

  @override var level = LevelData.PLUS;
  LoadTheBoat() : super('Load the Boat');

  @override
  Future<void> performPart1(CallContext ctx) async {
    if (ctx.outer(4).every((d) => d.isFacingIn)) {
      await ctx.applyCalls('Pass Thru');
    } else if (ctx.outer(4).every((d) => d.isFacingOut)) {
      await ctx.applyCalls('Ends Bend and Pass Thru While Center 4 Pass Thru');
    } else
      throw CallError('Cannot Load the Boat from this formation');
  }

  @override
  Future<void> performPart2(CallContext ctx) async {
    ctx.analyze();
    await ctx.applyCalls('Ends Bend and Pass Thru While Center 4 Face Out');
  }

  @override
  Future<void> performPart3(CallContext ctx) async {
    //  Center 4 might be off a bit, snap to boxes so Ends Bend works
    ctx.adjustToFormation('Eight Chain Thru',rotate: 90);
    ctx.analyze();
    await ctx.applyCalls('Ends Bend and Pass Thru While Center 4 Trade');
  }

  @override
  Future<void> performPart4(CallContext ctx) async {
    ctx.analyze();
    await ctx.applyCalls('Ends Face In While Center 4 Pass Thru');
  }

}