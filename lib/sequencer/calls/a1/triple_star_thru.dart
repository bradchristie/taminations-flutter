/*

  Taminations Square Dance Animations
  Copyright (C) 2020 Brad Christie

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

class TripleStarThru extends Action {

  @override final level = LevelData.A1;
  TripleStarThru() : super('Triple Star Thru');

  @override
  Future<void> perform(CallContext ctx, [int stackIndex = 0]) async {
    await ctx.applyCalls('Facing Dancers Star Thru',
                         'Facing Dancers _Left Star Thru',
                         'Facing Dancers Star Thru');
  }

}