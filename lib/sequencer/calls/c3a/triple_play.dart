/*

  Taminations Square Dance Animations
  Copyright (C) 2025 Brad Christie

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

class TriplePlay extends Action with ButCall {

  @override var level = LevelData.C3A;
  @override var butCall = '';
  TriplePlay(super.name);

  @override
  void performCall(CallContext ctx) {
    if (butCall.isEmpty)
      throw CallError('Unable to do Triple Play from this formation');
    ctx.applyAnimatedCall('_Triple Play But');
    ctx.subContext(ctx.center(4), (ctx2) {
      ctx2.applyCalls(butCall);
    });
  }


}