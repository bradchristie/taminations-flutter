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

//  Add this to a class after adding IsLeft,
//  then call applyFacingCouplesRule at the start of performCall or performPart1
mixin FacingCouplesRule on IsLeft {

  void applyFacingCouplesRule(CallContext ctx) {
    if (ctx.dancers.any((d) => ctx.dancerFacing(d) != null))
      ctx.applyCalls('Facing Dancers Step to a $leftHand Wave');
    else if (isLeft)
      throw CallError('Left $name only applies to facing dancers');
  }

}

