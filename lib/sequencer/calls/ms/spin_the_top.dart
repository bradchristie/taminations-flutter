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

class SpinTheTop extends ActivesOnlyAction with CallWithParts {

  @override int numberOfParts = 2;
  @override var level = LevelData.MS;
  @override var help = '''Spin the Top is a 2-part call:
  1.  Swing
  2.  Fan the Top''';
  @override var helplink = 'ms/spin_the_top';
  SpinTheTop(name) : super(name);

  @override
  Future<void> performPart1(CallContext ctx) async {
    var left = name.contains('left'.ri) ? 'Left-Hand' : '';
    if (ctx.dancers.any((d) => ctx.dancerFacing(d) != null))
      await ctx.applyCalls('Facing Dancers Step to a $left Wave');
    if (ctx.actives.every((it) => ctx.isInWave(it)))
      await ctx.applyCalls('Swing');
    else
      throw CallError('Unable to Spin the Top from this formation');
  }

  @override
  Future<void> performPart2(CallContext ctx) async {
    await ctx.applyCalls('Fan the Top');
  }

}