/*

  Taminations Square Dance Animations
  Copyright (C) 2023 Brad Christie

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


import 'package:taminations/moves.dart';

import '../common.dart';
import '../common/reverse.dart';

class SwapAround extends Action with ActivesOnly, IsReverse {

  SwapAround(super.name);

  @override
  Path performOne(DancerModel d, CallContext ctx) {
    var d1 = ctx.dancerInFront(d);
    if (d1 == null)
      throw CallError('All dancers must be trailers');
    if (isReverse) {
      var d2 = ctx.dancerToLeft(d);
      if (d2 != null)
        return FlipLeft.scale(1, d.distanceTo(d2)/2);
      else
        return Forward_2.scale(d.distanceTo(d1)/2, 1);
    } else {
      var d2 = ctx.dancerToRight(d);
      if (d2 != null)
        return FlipRight.scale(1, d.distanceTo(d2)/2);
      else
        return Forward_2.scale(d.distanceTo(d1)/2, 1);
    }
  }

  @override
  void perform(CallContext ctx) {
    if (ctx.dancers.length == 4)
      super.perform(ctx);
    else {
      var boxes = ctx.boxes()
          ?? thrower(CallError('Cannot Swap Around from this formation'));
      for (var box in boxes!) {
        ctx.subContext(box, (ctx2) {
          super.perform(ctx2);
        });
      }
    }
  }

}