/*
 * *     Copyright 2024 Brad Christie
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

class SplitCounterRotate extends SplitCall {

  @override final level = LevelData.A2;
  @override var helplink = 'a2/box_counter_rotate';

  SplitCounterRotate(super.name);

  @override
  void performCall(CallContext ctx) {
    final boxes = ctx.boxes();
    if (boxes != null) {
      for (final boxDancers in boxes) {
        ctx.subContext(boxDancers..center(), (ctx2) {
          ctx2.applyCalls('Box Counter Rotate');
        });
      }
    } else {
      super.performCall(ctx);
    }
  }
}

class SplitCounterRotateFraction extends Action {

  @override final level = LevelData.A2;

  SplitCounterRotateFraction(super.name);

  @override
  void performCall(CallContext ctx) {
    var oneRotate = ctx.isTidal() ? 'Lockit' : 'Split Counter Rotate';
    if (norm.contains('14'))
      ctx.applyCalls('$oneRotate');
    else if (norm.contains('12'))
      ctx.applyCalls('$oneRotate $oneRotate');
    else if (norm.contains('34'))
      ctx.applyCalls('$oneRotate $oneRotate $oneRotate');
    else
      throw CallError('Bad fraction for Split Counter Rotate');
  }

}

class BoxCounterRotateFraction extends Action {

  BoxCounterRotateFraction(super.name);

  @override
  void performCall(CallContext ctx) {
    if (norm.contains('14'))
      ctx.applyCalls('Box Counter Rotate');
    else if (norm.contains('12'))
      ctx.applyCalls('Box Counter Rotate','Box Counter Rotate');
    else if (norm.contains('34'))
      ctx.applyCalls('Box Counter Rotate','Box Counter Rotate','Box Counter Rotate');
    else
      throw CallError('Bad fraction for Box Counter Rotate');
  }

}