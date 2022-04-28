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

class Breaker extends Action with CallWithParts {

  @override var level = LevelData.C3A;
  @override var numberOfParts = 2;
  Breaker(String name) : super(name);

  @override
  Future<void> performPart1(CallContext ctx) async {
    await ctx.applyCalls(
        'Outer 4 Cast Off 3/4 While '
        'Center 4 Box Counter Rotate and 1/2 Box Circulate');
  }

  @override
  Future<void> performPart2(CallContext ctx) async {
    print(ctx.dancers.show());
    var cast = 'Cast Off 3/4';
    if (norm.contains('1'))
      cast = 'Hinge';
    else if (norm.contains('2'))
      cast = 'Trade';
    await ctx.applyCalls('Center Wave of 4 $cast '
        'While Others Do Your Part Hourglass Circulate');
  }

}