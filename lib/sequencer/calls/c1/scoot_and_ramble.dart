/*

  Taminations Square Dance Animations
  Copyright (C) 2021 Brad Christie

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

class ScootAndRamble extends Action with CallWithParts {

  @override final level = LevelData.C1;
  @override int numberOfParts = 2;
  ScootAndRamble() : super('Scoot and Ramble');

  @override
  Future<void> performPart1(CallContext ctx) async {
    await ctx.applyCalls('Scoot Back');
  }

  @override
  Future<void> performPart2(CallContext ctx) async {
    await ctx.applyCalls('Ramble');
  }

}