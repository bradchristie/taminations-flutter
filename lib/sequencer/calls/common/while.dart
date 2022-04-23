/*

  Taminations Square Dance Animations
  Copyright (C) 2021 Brad Christie

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

  While(String name) : super(name);

  @override
  Future<void> perform(CallContext ctx, [int i = 0]) async {

    //  First strip off extra beats added to the inactive dancers
    ctx.contractPaths();

    //  Use another context to do the rest of the call
    var ctx2 = CallContext.fromContext(ctx,beat:0.0)..noSnap(recurse: false);
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
    await ctx2.applyCalls(whilecall);
    ctx2.appendToSource();

    //  Mark all the dancers active so post-processing doesn't
    //  think just the non-while dancers are moving
    for (var d in ctx.dancers)
      d.data.active = true;
  }

}