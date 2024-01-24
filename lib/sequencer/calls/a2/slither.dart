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

import '../../../moves.dart';
import '../common.dart';

class Slither extends Action {

  @override final level = LevelData.A2;
  @override var helplink = 'a2/slip';
  Slither(name) : super(name);

  @override
  void performCall(CallContext ctx) {
    //  If single wave in center, then very centers slither
    final ctx4 = CallContext.fromContext(ctx,dancers: ctx.center(4));
    if (ctx.dancers.length == 8 && ctx4.isLines() && !ctx.isTidal())
      ctx.dancers.where((it) => !it.data.verycenter).forEach((it) { it.data.active = false; });
    else {
      //  Otherwise, all centers slither
      //  Check that it's not a partner trade
      final ctxc = CallContext.fromContext(ctx,dancers:ctx.dancers.where((it) => it.data.center).toList());
      if (!ctxc.isWaves())
        throw CallError('Centers must be in a mini-wave.');
      ctx.dancers.where((it) => !it.data.center).forEach((it) { it.data.active = false; });
    }
    super.performCall(ctx);
  }

  @override
  Path performOne(DancerModel d, CallContext ctx) {
    if (ctx.dancerToRight(d)?.isActive ?? false)
      return BackSashayRight
          .scale(1.0,d.distanceTo(ctx.dancerToRight(d)!)/2.0);
    else if (ctx.dancerToLeft(d)?.isActive ?? false)
      return BackSashayLeft
          .scale(1.0,d.distanceTo(ctx.dancerToLeft(d)!)/2.0);
    else
      throw CallError('Unable to calculate Sither.');
  }

}