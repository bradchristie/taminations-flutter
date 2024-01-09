/*

  Taminations Square Dance Animations
  Copyright (C) 2024 Brad Christie

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

class SqueezeTheHourglass extends Action {

  @override final level = LevelData.C1;
  SqueezeTheHourglass(String name) : super(name);

  @override
  void perform(CallContext ctx) {
    //  Match to any hourglass
    final hourglass = CallContext.fromFormation(Formation('Hourglass RH BP'));
    final mm = hourglass.matchFormations(ctx,rotate:180);
    if (mm == null)
      throw CallError('Not an Hourglass formation');
    //  All but two of the dancers squeeze
    ctx.dancers[mm.map[2]].data.active = false;
    ctx.dancers[mm.map[3]].data.active = false;
    ctx.applyCalls('Squeeze');
    ctx.adjustToFormation(Formation('Galaxy RH GP'));
  }

}