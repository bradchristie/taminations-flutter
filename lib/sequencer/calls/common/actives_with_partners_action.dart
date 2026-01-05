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

abstract class ActivesWithPartnersAction extends Action {

  ActivesWithPartnersAction(String name) : super(name);

  @override
  void performCall(CallContext ctx) {
    if (ctx.actives.length*2 > ctx.dancers.length)
      throw CallError('Too many active dancers');
    else if (ctx.actives.length*2 == ctx.dancers.length)
      super.performCall(ctx);
    else {
      var partners = ctx.actives.map((d) => d.data.partner).nonNulls.toList();
      ctx.subContext(ctx.actives + partners, (ctx2) {
        for (var d in ctx2.dancers)
          d.data.active = ctx.actives.contains(d);
        ctx2.analyze();
        performCall(ctx2);
      });
    }
  }

}
