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

//  Also handles Change the Wave
class ChangeTheCenters extends ActivesOnlyAction with CallWithParts {

  @override var level = LevelData.C3B;
  @override var numberOfParts = 4;
  @override var help = 'Change the Centers is a 4-part call';
  @override var helplink = 'c3b/change_the_centers';
  ChangeTheCenters(String name) : super(name);

  @override
  Future<void> performPart1(CallContext ctx) async {
    if (ctx.dancers.where((d) => !ctx.isInWave(d)).isNotEmpty) {
      try {
        await ctx.applyCalls('Wave Dancers Nothing While Others Step to a Wave');
      } on CallError catch(_) { }
      ctx.analyze();
    }
    await ctx.applyCalls('Trade');
  }

  @override
  Future<void> performPart2(CallContext ctx) async {
    await ctx.applyCalls('Slip');
  }

  @override
  Future<void> performPart3(CallContext ctx) async {
    await ctx.applyCalls('Centers Cross Run');
  }

  @override
  Future<void> performPart4(CallContext ctx) async {
    if (name.contains('Centers'.ri))
      await ctx.applyCalls('Slip');
    else
      await ctx.applyCalls('Swing');
  }

}