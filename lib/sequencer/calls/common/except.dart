/*
 *     Copyright 2022 Brad Christie
 *
 *     This file is part of Taminations.
 *
 *     Taminations is free software: you can redistribute it and/or modify
 *     it under the terms of the GNU Affero General Public License as published
 *     by the Free Software Foundation, either version 3 of the License, or
 *     (at your option) any later version.
 *
 *     Taminations is distributed in the hope that it will be useful,
 *     but WITHOUT ANY WARRANTY; without even the implied warranty of
 *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *     GNU Affero General Public License for more details.
 *
 *     You should have received a copy of the GNU Affero General Public License
 *     along with Taminations.  If not, see <http://www.gnu.org/licenses/>.
 */

import '../coded_call.dart';
import '../common.dart';

class Except extends CodedCall {

  Except(String name) : super(name);

  @override
  Future<void> performCall(CallContext ctx, [int stackIndex = 0]) async {
    //  Get who we want to exclude
    final who = name.replaceFirst('except( the)?'.ri,'').trim();
    //  Make another context where those are the selected dancers
    await ctx.subContext(ctx.dancers, (ctx2) async {
      //  Anyone selected in that context is now de-selected in the current context
      ctx2.analyze();
      await CodedCall.fromName(who)?.performCall(ctx2);
      ctx.dancers.forEach((d) {
        if (ctx2.actives.contains(d))
          d.data.active = false;
      });
    });
  }

}