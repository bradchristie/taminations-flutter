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

class LinearCycle extends Action {

  //  All the legal Plus formations have XML animations
  //  so we can assume that anything here is A-1
  @override var level = LevelData.A1;
  @override var help = '';
  @override var helplink = 'plus/linear_cycle';
  LinearCycle(String name) : super(name);

  @override
  Future<void> perform(CallContext ctx) async {
    final left = name.startsWith('Left') ? 'Left' : '';
    await ctx.applyCalls('$left Hinge','Finish Linear Cycle');
    //  Undo C-1 level set by Finish
    ctx.level = LevelData.A1;
  }

}