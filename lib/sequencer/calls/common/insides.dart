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

class Insides extends Action {

  Insides(super.name);

  @override
   void performCall(CallContext ctx) {
    var norm = normalizeCall(name);
    var num = 4;
    if (norm.endsWith('2')) num = 2;
    if (norm.endsWith('6')) num = 6;
    var outerDancers = ctx.actives.sortedBy((d) => d.location.length).drop(num);
    //  Special check for Center 4
    if (num == 4) {
      var cw4 = ctx.centerWaveOf4();
      var cd4 = ctx.centerDiamond();
      if (cd4 != null && cw4 != null)
        throw CallError(
            'Center 4 is ambiguous. Use Center Wave/Line or Center Diamond/Star.');
      else if (cw4 != null)
        outerDancers = ctx.actives - cw4;
      else if (cd4 != null)
        outerDancers = ctx.actives - cd4;
    }
    outerDancers.forEach((d) {
      d.data.active = false;
    });
  }

}