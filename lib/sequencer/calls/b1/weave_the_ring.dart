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

class WeaveTheRing extends Action {

  WeaveTheRing(super.name);

  //  Weave the Ring is
  @override
  void performCall(CallContext ctx) {
    ctx.applyCalls('Right and Left Grand');
    for (var d in ctx.dancers) {
      d.path = d.path.changehands(Hands.NONE);
    }
  }

}