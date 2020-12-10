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

class Rotate extends Action {

  @override final level = LevelData.C2;
  Rotate(String name) : super(name);

  @override
  Future<void> perform(CallContext ctx, [int stackIndex = 0]) async {
    if (!ctx.isLines() || !ctx.dancers.every((d) => ctx.isInCouple(d)))
      throw CallError('Unable to Rotate from this formation');
    final leaders = ctx.dancers.where((d) => d.data.leader);
    final trailers = ctx.dancers.where((d) => d.data.trailer);
    if (leaders.isNotEmpty) {
      await ctx.subContext(leaders, (ctx2) async {
        await ctx2.applyCalls('Half Wheel Around');
      });
    }
    if (trailers.isNotEmpty) {
      await ctx.subContext(trailers, (ctx2) async {
        await ctx2.applyCalls('Half Reverse Wheel Around');
      });
    }
    final norm = TamUtils.normalizeCall(name);
    await ctx.applyCalls('Couples Hinge');
    if (norm.endsWith('12'))
      await ctx.applyCalls('Couples Hinge');
    if (norm.endsWith('34'))
      await ctx.applyCalls('Couples Hinge','Couples Hinge');
  }

}