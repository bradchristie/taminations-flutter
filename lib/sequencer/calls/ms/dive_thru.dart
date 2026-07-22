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

class DiveThru extends Action with CallWithParts {

  @override var numberOfParts = 2;

  DiveThru(super.name);

  @override
  void performPart1(CallContext ctx) {
    for (var d in ctx.actives) {
      var d2 = ctx.dancerFacing(d);
      var d3 = d.data.partner;
      if (d2 == null || d3 == null)
        throw CallError('Must be Facing Couples');
      if (!(d.isFacingOut ^ d2.isFacingOut))
        throw CallError('One couple of each pair must be facing out');
      var dist = d.distanceTo(d2);
      d.path += PullBy
          .scale(dist/2, d.isFacingOut ^ d.data.beau ? -1 : 1)
          .changehands(d.data.beau ? Hands.GRIPRIGHT : Hands.GRIPLEFT);
    }
  }

  @override
  void performPart2(CallContext ctx) {
    ctx.applyCalls('Dancers Facing Out California Twirl');
  }


}