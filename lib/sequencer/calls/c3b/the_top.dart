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

class TheTop extends Action
    with UsesTaggingCall, CallWithParts {

  @override var numberOfParts = 2;
  TheTop(super.name);

  @override
  void performPart1(CallContext ctx) {
    getTaggingCall().performTag(ctx);
    ctx.applyCalls('Extend');  // to 3/4 tag
  }

  @override
  void performPart2(CallContext ctx) {
    var centers = ctx.centerWaveOf4() ??
        thrower<List<Dancer>>(CallError('Error calculating The Top'));
    var outers = ctx.dancers - centers;
    ctx.subContext(centers, (ctx2) {
      ctx2.applyCalls('Spin the Top');
    });
    ctx.subContext(outers, (ctx2) {
      ctx2.applyCalls('Hinge and Trade');
    });
    ctx.checkCenters(centersToCheck: centers);
  }

}