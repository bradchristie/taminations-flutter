/*

  Taminations Square Dance Animations
  Copyright (C) 2021 Brad Christie

  This program is free software: you can redistribute it and/or modify
  it under the terms of the GNU General Public License as published by
  the Free Software Foundation, either version 3 of the License, or
  (at your option) any later version.

  This program is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  GNU General Public License for more details.

  You should have received a copy of the GNU General Public License
  along with this program.  If not, see <http://www.gnu.org/licenses/>.

*/

import '../common.dart';

class TheK extends Action {

  @override final level = LevelData.C2;
  TheK() : super('The K');

  @override
  Future<void> perform(CallContext ctx, [int stackIndex = 0]) async {
    if (ctx.dancers.where((d) => d.data.center).length == 4 &&
        ctx.dancers.where((d) => d.data.end).length == 4)
      await ctx.applyCalls('Centers Trade While Ends Quarter Out and Roll');
    else
      await ctx.applyCalls('Center 4 Trade while Outer 4 1/4 Out and Roll');
  }

}