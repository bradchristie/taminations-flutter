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

import '../../../moves.dart';
import '../common.dart';

class Separate extends Action {

  @override var helplink = 'b1/separate';
  Separate(name) : super(name);

  //  We need to look at all the dancers, not just actives
  //  because sometimes the inactives need to move in
  @override
   void perform(CallContext ctx, [int i = 0]) {
    if (ctx.actives.length != 4)
      throw CallError('Who is going to Separate?' );

    //  Case 1 - Outer 4 Separate
    if (!ctx.isSquare() && ctx.outer(4).every((it) => it.data.active)) {
      for (var d in ctx.actives) {
        var d2 = ctx.dancerClosest(d, (it) => it.data.active)!;
        if (d2.isRightOf(d) && d.isFacingIn)
          d.path += QuarterLeft +
              LeadRight.changeBeats(2.0).scale(2.0, 2.0);
        else if (d2.isRightOf(d) && d.isFacingOut)
          d.path += QuarterLeft +
              LeadLeft.changeBeats(2.0).scale(2.0, 2.0);
        else if (d2.isLeftOf(d) && d.isFacingIn)
          d.path += QuarterRight +
              LeadLeft.changeBeats(2.0).scale(2.0, 2.0);
        else if (d2.isLeftOf(d) && d.isFacingOut)
          d.path += QuarterRight +
              LeadRight.changeBeats(2.0).scale(2.0, 2.0);
        else
          throw CallError('Unable to figure out how to Separate' );
      }
    }

    //  Case 2 - Centers facing out Separate
    else if (ctx.actives.every((it) => it.isFacingOut)) {
      for (var d in ctx.actives) {
        var d2 = ctx.dancerClosest(d, (it) =>
        it.data.active && (it.isRightOf(d) || it.isLeftOf(d))
        ) ?? thrower(CallError('Unable to figure out how to Separate' ));
        if (d2!.isRightOf(d))
          d.path += RunLeft;
        else
          d.path += RunRight;
        //  Adjust to make sure dancers finish face-to-face
        //  without a big gap between them
        var d3 = ctx.dancerInBack(d);
        var dist3 = d3?.distanceTo(d) ?? 1.0;
        if (!dist3.isLessThan(2.0))
          d.path += Forward.scale((dist3-2)/2,1.0);
      }
      //  Other dancers need to move in
      for (var d in ctx.inActives) {
        //  Find the other inactive dancer that this dancer will face
        var d2 = ctx.dancerClosest(
            d, (it) => !it.data.active && it.isInFrontOf(d));
        //  Space the dancers 2 units apart
        var dist = d.distanceTo(d2!) / 2 - 1;
        d.path += Forward.changeBeats(3.0).scale(dist, 1.0);
      }
    }

    //  Did not match Case 1 or Case 2
    else
      throw CallError('Cannot figure out how to Separate' );

  }


}