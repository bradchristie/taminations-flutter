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

import '../../call_context.dart';
import '../action.dart';

//  Convenience mixin for calls that have no affect on inactive dancers
//  Don't use this with performCall, just performOne
//  For performCall use ctx.activesContext()
//
//  Put this after CallWithParts if you are mixing both

mixin ActivesOnly on Action {

  @override
   void performCall(CallContext ctx) {
    if (ctx.actives.length < ctx.dancers.length) {
      ctx.subContext(ctx.actives, (ctx2) {
        ctx2.analyze();
        performCall(ctx2);
      });
    } else
      super.performCall(ctx);
  }

}
