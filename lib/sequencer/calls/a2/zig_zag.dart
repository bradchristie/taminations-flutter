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

class ZigZag extends Action {

  @override final level = LevelData.A2;
  @override var helplink = 'a2/zig_and_zag';

  ZigZag(super.name);

  @override
  void performCall(CallContext ctx) {
    if (ctx.dancers.none((d) => d.data.trailer))
      throw CallError('No trailers in this formation');
    super.performCall(ctx);
  }

  @override
  Path performOne(DancerModel d, CallContext ctx) {
    var move = Stand;
    if (d.data.leader && name.matches('zig z[ai]g'.ri))
      move = QuarterRight;
    if (d.data.leader && name.matches('zag z[ai]g'.ri))
      move = QuarterLeft;
    if (d.data.trailer && name.matches('z[ai]g zig'.ri))
      move = QuarterRight;
    if (d.data.trailer && name.matches('z[ai]g zag'.ri))
      move = QuarterLeft;
    return move;
  }

}