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

class ZipCode extends Action with CallWithParts {

  @override final level = LevelData.C2;
  ZipCode(String name) : super(name) {
    final count = TamUtils.normalizeCall(name).last.toIntOrNull();
    if (count == null)
      throw CallError('Zip Code how much?');
    if (count >= 1 && count <= 6)
      numberOfParts = count;
    else
      throw CallError('Cannot handle Zip Code $count');
  }

  @override
  Future<void> performPart1(CallContext ctx) async {
    await ctx.applyCalls('Centers Face Out');
    ctx.analyze();
    await ctx.applyCalls('Centers Run');
  }

  @override
  Future<void> performPart2(CallContext ctx) async {
    ctx.analyze();
    await ctx.applyCalls('Ends Pass Thru');
  }

  @override
  Future<void> performPart3(CallContext ctx) async {
    ctx.analyze();
    await ctx.applyCalls('Ends Bend');
  }

  @override
  Future<void> performPart4(CallContext ctx) async {
    await ctx.applyCalls('Ends Pass Thru');
  }

  @override
  Future<void> performPart5(CallContext ctx) async {
    await ctx.applyCalls('Ends Bend');
  }

  @override
  Future<void> performPart6(CallContext ctx) async {
    await ctx.applyCalls('Ends Pass Thru');
  }

}