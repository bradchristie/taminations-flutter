/*

  Taminations Square Dance Animations
  Copyright (C) 2020 Brad Christie

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

class Ramble extends Action {

  @override final level = LevelData.C1;
  Ramble() : super('Ramble');

  @override
  Future<void> perform(CallContext ctx, [int stackIndex = 0]) async {
    final ctx2 = CallContext.fromContext(ctx,beat:0.0);
    ctx2.noSnap();
    await ctx2.applyCalls('Center 4 Single Wheel and Slide Thru');
    await ctx2.applyCalls('Outer 4 Separate and Slide Thru');
    ctx2.appendToSource();
  }

}