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

class SplitCirculate extends Action {

  @override var helplink = 'b1/circulate';

  SplitCirculate(super.name);

  @override
  void performCall(CallContext ctx) {
    if (!ctx.isTBone())
      throw CallError('Only 2 boxes of 4 can Split Circulate.' );
    super.performCall(ctx);
  }

  @override
  Path performOne(DancerModel d, CallContext ctx) {
    if (d.data.trailer)
      return Forward_2.changeBeats(3.0);
    else if (d.data.leader) {
      if (ctx.dancerInFront(d) != null) {
        if (ctx.dancersToLeft(d).length % 2 == 1)
          return FlipLeft;
        else if (ctx.dancersToRight(d).length % 2 == 1)
          return FlipRight;
      } else {
        if (ctx.dancersToLeft(d).length % 2 == 1)
          return RunLeft;
        else if (ctx.dancersToRight(d).length % 2 == 1)
          return RunRight;
      }
    }
    throw CallError('Unable to calculate Split Circulate for dancer $d.' );
  }

}