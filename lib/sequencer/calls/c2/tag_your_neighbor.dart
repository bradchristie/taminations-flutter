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

//  This class covers all the variations of Tag Your Neighbor
class TagYourNeighbor extends Action {

  @override final level = LevelData.C2;
  TagYourNeighbor(String name) : super(name);

  @override
  Future<void> perform(CallContext ctx, [int stackIndex = 0]) async {
    final left = name.contains('Left') ? 'Left' : '';
    final vertical = name.contains('Vertical') ? 'Vertical' : '';
    final base = name.replaceFirst('Left ', '')
        .replaceFirst('Vertical ', '')
        .replaceFirst('Tag Your ', '');
    final baseCall = [
      if (base == 'Neighbor') 'Follow Your Neighbor'
      else if (base == 'Cross Neighbor') 'Cross Your Neighbor'
      else if (base == 'Criss Cross Neighbor') 'Criss Cross Your Neighbor'
    ].firstOrNull ?? thrower(CallError('Tag what?'));
    await ctx.applyCalls('$vertical $left Half Tag',baseCall);
  }


}