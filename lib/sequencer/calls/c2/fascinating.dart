/*
 *     Copyright 2022 Brad Christie
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

class Fascinating extends Action {

  @override var level = LevelData.C2;
  Fascinating(String name) : super(name);

  @override
  Future<void> perform(CallContext ctx) async {
    var what = name.replaceFirst('Fascinating', '').trim();
    await ctx.applyCalls('Centers Cast Off 3/4 While Ends Circulate 1.5');
    ctx.analyze();
    var w6 = ctx.waveOf6() ?? thrower('Unable to find Wave of 6')!;
    var vc = ctx.dancers.where((d) => d.data.verycenter).toList();
    await ctx.subContext(vc, (ctx2) async {
      await ctx2.applyCalls('Trade');
    });
    var other2 = ctx.dancers.where((d) => !w6.contains(d)).toList();
    await ctx.subContext(other2, (ctx2) async {
      await ctx2.applyCalls('Counter Rotate');
    });
    await ctx.subContext(w6, (ctx2) async {
      await ctx2.subContext(ctx2.outer(4), (ctx3) async {
        await ctx3.applyCalls('Concentric $what');
      });
    });

  }

}