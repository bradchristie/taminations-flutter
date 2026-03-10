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

class YourNeighbor extends Action
    with UsesTaggingCall, CallWithParts {

  @override var numberOfParts = 2;
  YourNeighbor(super.name);

  @override
  void performPart1(CallContext ctx) {
    getTaggingCall().performTag(ctx);
  }

  @override
  void performPart2(CallContext ctx) {
    if (name.contains('Criss'))
      ctx.applyCalls('Criss Cross Your Neighbor');
    else if (name.contains('Cross'))
      ctx.applyCalls('Cross Your Neighbor');
    else
      ctx.applyCalls('Follow Your Neighbor');
  }

}

class Flip extends TaggingCall {

  Flip(super.name);

  @override
  void performTag(CallContext ctx) {
    ctx.applyCalls('Flip the Line 1/2');
  }

}
