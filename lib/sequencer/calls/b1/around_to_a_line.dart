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

class AroundToALine extends Action {

  AroundToALine(String name) : super(name);

  @override
  Future<void> perform(CallContext ctx) async {
    if (ctx.actives.length < ctx.dancers.length) {
      ctx.matchStandardFormation();
      for (var d in ctx.dancers)
        d.data.active = true;
      final norm = TamUtils.normalizeCall(name).toLowerCase();
      if (norm.contains('1andcomeintothemiddle' ))
        await ctx.applyCalls('Around One and Come Into the Middle' );
      else if (norm.contains('1toaline' ))
        await  ctx.applyCalls('Around One To A Line' );
      else if (norm.contains('2toaline' ))
        await  ctx.applyCalls('Around Two To A Line' );
      else
        throw CallError('Go Around What?' );
    }
    else
      throw CallError('Cannot Go Around to a Line' );
  }

}