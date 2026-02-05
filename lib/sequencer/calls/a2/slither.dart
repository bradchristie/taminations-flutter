/*

  Taminations Square Dance Animations
  Copyright (C) 2026 Brad Christie

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

import '../../../moves.dart';
import '../common.dart';

class Slither extends Action {

  @override final level = LevelData.A2;
  @override var helplink = 'a2/slip';

  Slither(super.name);

  @override
  void performCall(CallContext ctx) {
    var slithers = ctx.dancers.where((d) => d.data.center).toList();
    //  If single wave in center, then very centers slither
    if (ctx.centerWaveOf4()!=null && !ctx.isTidal())
      slithers = ctx.center(2);
    //  Check that dancers are in mini-waves
    if (!CallContext.fromContext(ctx,dancers: slithers).isWaves())
      throw CallError('Centers must be in a mini-wave.');
    //  If only some dancers were selected, make sure they are
    //  the ones to slither
    if (ctx.actives.length < ctx.dancers.length &&
        ctx.actives.containsAll(slithers))
      throw CallError('Wrong dancers selected for Slither');
    //  Tell performOne which dancers to slither
    ctx.actives = slithers;
    super.performCall(ctx);
  }

  @override
  Path performOne(Dancer d, CallContext ctx) {
    if (ctx.dancerToRight(d)?.isActive ?? false)
      return BackSashayRight
          .scale(1.0,d.distanceTo(ctx.dancerToRight(d)!)/2.0);
    else if (ctx.dancerToLeft(d)?.isActive ?? false)
      return BackSashayLeft
          .scale(1.0,d.distanceTo(ctx.dancerToLeft(d)!)/2.0);
    else
      throw CallError('Unable to calculate Slither.');
  }

}