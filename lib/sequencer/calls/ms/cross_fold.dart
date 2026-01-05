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

class CrossFold extends Action {

  @override var level = LevelData.MS;
  @override var helplink = 'ms/fold';

  CrossFold(super.name);

  @override
  void performCall(CallContext ctx) {
    //  Centers and ends cannot both cross fold
    if (ctx.actives.any((d) => d.data.center) &&
        ctx.actives.any((d) => d.data.end))
      throw CallError('Centers and ends cannot both Cross Fold');
    for (var d in ctx.actives) {
      //  Must be in a 4-dancer wave or line
      if (!d.data.center && !d.data.end)
        throw CallError('General line required for Cross Fold');

      //  Determine direction of Cross Fold
      var dleft = ctx.dancersToLeft(d);
      var dright = ctx.dancersToRight(d);
      DancerModel d2;
      var isRight = true;
      if (dright.length < 2)
        isRight = false;
      if (dright.length >= 4 && dright.length-4 < 2)
        isRight = false;
      if (isRight && dright.length > 1) {
        d2 = dright.second;
      } else if (dleft.length > 1)
        d2 = dleft.second;
      else
        throw CallError('Unaable to calculate Cross Fold');
      if (d2.isActive)
        throw CallError('Invalid Cross Fold');

      var m = (isRight) ? FoldRight : FoldLeft;
      var dist = d.distanceTo(d2);
      var dxscale = 0.75;

      //  The y-distance of Fold is 2.0, here we adjust that value
      //  for various formations.  The dyoffset value computed is
      //  subtracted from the default 2.0 to get the final y offset.
      /*
      var dyoffset = 0.0;
      if (ctx.isTidal() && d.data.end)
        dyoffset = -0.5;
      else if (ctx.isTidal() && d.data.center)
        dyoffset = 0.5;
      else if (d.data.end)
        dyoffset = 2.0 - dist*2;  // which wll generally be -2.0
      if (!isRight)
        dyoffset = -dyoffset;
       */
      d.path = m.scale(dxscale,dist/2); // .skew(0.0,dyoffset);

      //  Also set path for partner
      //  This is an adjustment to shift the dancers into a standard formation
      /*
      var m2 = Stand;
      if (d.isRightOf(d2))
        m2 = DodgeRight;
      else if (d.isLeftOf(d2))
        m2 = DodgeLeft;
      var myScale = 0.25;
      if (ctx.isTidal())
        myScale = 0.25;
      else if (d2.data.end)
        myScale = 0.5;
      else if (d2.data.center)
        myScale = 0.0;
      d2.path = m2.scale(1.0,dist*myScale);
       */
    }
  }

}