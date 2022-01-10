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

class LinearAction extends ThreePartCall with ButCall {

  @override final level = LevelData.C1;
  @override var butCall = 'Cast Off 3/4';
  List<Dancer> centerDancers = [];
  List<Dancer> outerDancers = [];
  LinearAction() : super('Linear Cycle');

  @override
  Future<void> performPart1(CallContext ctx) async {
    centerDancers = ctx.center(4);
    outerDancers = ctx.outer(4);
    await ctx.applyCalls('Hinge');
  }

  @override
  Future<void> performPart2(CallContext ctx) async {
    await ctx.subContext(centerDancers, (ctx2)async {
      await ctx2.applyCalls('Box Circulate 1.5');
    });
    await ctx.subContext(outerDancers, (ctx2) async {
      await ctx2.applyCalls('Trade');
    });
  }

  @override
  Future<void> performPart3(CallContext ctx) async {
    await ctx.applyCalls('Center Wave of 4 $butCall '
        'While Others Do Your Part Hourglass Circulate');
  }



}