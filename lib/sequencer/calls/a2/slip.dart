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

import '../common.dart';

class Slip extends Action {

  @override final level = LevelData.A2;
  @override var helplink = 'a2/slip';

  Slip(super.name);

  @override
  void performCall(CallContext ctx) {
    //  If single wave in center, then very centers trade
    final ctx4 = CallContext.fromContext(ctx,dancers: ctx.center(4));
    ctx4.analyze();
    if (ctx.dancers.length == 8 && ctx4.isLines() && !ctx.isTidal())
      ctx.applyCalls('Very Centers Trade');
    else {
      //  Otherwise, all centers trade
      //  Check that it's not a partner trade
      final ctxc = CallContext.fromContext(ctx,dancers:ctx.dancers.where((it) => it.data.center).toList());
      if (!ctxc.isWaves())
        throw CallError('Centers must be in a mini-wave.');
      ctx.applyCalls('Centers Trade');
    }
  }

}