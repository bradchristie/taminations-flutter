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

class SqueezeTheHourglass extends Action {

  @override final level = LevelData.C1;
  SqueezeTheHourglass() : super('Squeeze the Hourglass');

  @override
  Future<void> perform(CallContext ctx) async {
    //  Match to any hourglass
    final hourglass = CallContext.fromXML(TamUtils.getFormation('Hourglass RH BP'));
    final mm = hourglass.matchFormations(ctx,rotate:180);
    if (mm == null)
      throw CallError('Not an Hourglass formation');
    //  All but two of the dancers squeeze
    ctx.dancers[mm.mapping[2]].data.active = false;
    ctx.dancers[mm.mapping[3]].data.active = false;
    await ctx.applyCalls('Squeeze');
  }

}