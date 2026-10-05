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

import '../coded_call.dart';
import '../common.dart';

class Except extends CodedCall {

  Except(super.name);

  @override
   void performCall(CallContext ctx) {
    //  Get who we want to exclude
    final who = name.replaceFirst('except( the)?'.ri,'').trim();
    //  Make another context where those are the selected dancers
    final ctx2 = CallContext.fromDancers(ctx.dancers);
      //  Anyone selected in that context is now de-selected in the current context
    ctx2.analyze();
    CodedCall.fromName(who)?.performCall(ctx2);
    ctx.dancers.forEach((d) {
      if (ctx2.actives.contains(d)) {
        d.data.active = false;
      }
    });
  }

}