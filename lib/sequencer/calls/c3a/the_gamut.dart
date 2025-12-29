/*
 * *     Copyright 2026 Brad Christie
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