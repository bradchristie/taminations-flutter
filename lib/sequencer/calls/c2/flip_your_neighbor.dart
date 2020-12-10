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

//  This class handles all the variations of Flip Your Neighbor
class FlipYourNeighbor extends Action {

  @override final level = LevelData.C2;
  FlipYourNeighbor(String name) : super(name);

  static const flipTypes = {
    'Flip Your Neighbor' : 'Follow Your Neighbor',
    'Flip Your Cross Neighbor' : 'Cross Your Neighbor',
    'Flip Your Criss Cross Neighbor' : 'Criss Cross Your Neighbor'
  };

  @override
  Future<void> perform(CallContext ctx, [int stackIndex = 0]) async {
    final secondCall = flipTypes[name] ?? thrower(CallError('Incorrect Flip call'));
    await ctx.applyCalls('Flip the Line 1/2',secondCall);
  }

}