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

class MiniBusy extends ThreePartCall with ButCall {


  @override final level = LevelData.A2;
  @override var butCall = 'Flip the Diamond';
  MiniBusy() : super('Mini-Busy');

  @override
  Future<void> performPart1(CallContext ctx) async {
    await performOnePart(ctx, 'Mini-Busy', 1);
  }

  @override
  Future<void> performPart2(CallContext ctx) async {
    await ctx.applyCalls('Very Centers Hinge While Outer 4 Step');
  }

  @override
  Future<void> performPart3(CallContext ctx) async {
    await ctx.applyCalls('Center 4 $butCall While Outer 4 Face In');
  }


}