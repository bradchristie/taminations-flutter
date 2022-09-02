/*
 *     Copyright 2021 Brad Christie
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

class SplitCounterRotate extends Action {

  @override final level = LevelData.A2;
  @override var helplink = 'a2/box_counter_rotate';
  SplitCounterRotate(name) : super(name);

  @override
  Future<void> perform(CallContext ctx) async {
    //  TODO diamonds, etc
    final boxes = ctx.boxes() ??
        thrower(CallError('Must have boxes for Split Counter Rotate'))!;
    for (final boxDancers in boxes) {
      await ctx.subContext(boxDancers, (ctx2) async {
        await ctx2.applyCalls('Box Counter Rotate');
      });
    }
  }
}