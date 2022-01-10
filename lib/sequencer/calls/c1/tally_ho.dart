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

class TallyHo extends ThreePartCall with ButCall {

  @override final level = LevelData.C1;
  @override var butCall = 'Cast Off 3/4';
  TallyHo() : super('Tally Ho');

  @override
  Future<void> performPart1(CallContext ctx) async {
    await ctx.applyCalls('1/2 Circulate');
    ctx.matchStandardFormation();
  }

  @override
  Future<void> performPart2(CallContext ctx) async {
    await ctx.applyCalls('Center Wave Of Four Hinge and 1/2 Circulate While Others Trade');
  }

  @override
  Future<void> performPart3(CallContext ctx) async {
    await ctx.applyCalls('Center Wave Of Four $butCall '
        'While Others Do Your Part Hourglass Circulate');
  }

}