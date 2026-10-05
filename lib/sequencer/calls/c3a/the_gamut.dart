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

class TheGamut extends Action with ButCall, IsLeft {

  @override var level = LevelData.C3A;
  @override var butCall = 'Cut the Diamond';

  TheGamut(super.name);

  @override
  void performCall(CallContext ctx) {
    if (name.startsWith('Swing')) {
      ctx.applyFacingCouplesRule(isLeft: isLeft);
      ctx.applyCalls('Swing');
    }
    print(name);
    print(ctx.dancers.show());
    ctx.subContext(ctx.outer(4), (ctx2) {
      ctx2.applyCalls('Circulate Twice');
    });
    ctx.subContext(ctx.center(4), (ctx3) {
      ctx3.applyCalls('Cast Off 3/4','Centers Trade','Trade the Wave');
    });
    ctx.extendPaths();
    ctx.applyCalls(butCall);
  }


}