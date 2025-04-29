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

import '../common.dart';

class While extends Action {

  While(super.name);

  @override
   void performCall(CallContext ctx, [int i = 0]) {

    //  First strip off extra beats added to the inactive dancers
    ctx.contractPaths();
    //  Often the two groups are centers and ends
    //  Make sure they don't overlap
    //  First we find out if the first group are centers
    var firstGroupCenters = false;
    if (ctx.actives.length == 4) {
      ctx.animate(0);
      if (ctx.center(4).containsAll(ctx.actives) ||
          (ctx.centerWaveOf4()??[]).containsAll(ctx.actives) ||
          (ctx.centerDiamond()??[]).containsAll(ctx.actives))
        firstGroupCenters = true;
    }
    var saveActives = ctx.actives;

    //  Use another context to do the rest of the call
    var ctx2 = CallContext.fromContext(ctx,beat: 0)..noSnap(recurse: false);
    if (name.toLowerCase().contains('others')) {
      for (var d in ctx2.dancers) {
        d.data.active = !d.data.active;
      }
    }
    else {
      for (var d in ctx2.dancers) {
        d.data.active = true;
      }
    }
    var whilecall = name.toLowerCase()
        .replaceAll('while (the )?'.r,'')
        .replaceAll('(the )?others? '.r,'');
    ctx2.applyCalls(whilecall);
    //ctx2.checkCenters();
    //  Check that nobody is active on both sides of while
    if (ctx.movingDancers().toSet().intersection(ctx2.movingDancers().toSet()).isNotEmpty)
      throw CallError('Cannot have dancers active on both sides of While');
    ctx2.appendToSource();
    if (firstGroupCenters)
      ctx.checkCenters(centersToCheck: saveActives);

    //  Mark all the dancers active so post-processing doesn't
    //  think just the non-while dancers are moving
    ctx.allActive();
  }

}