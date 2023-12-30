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
import '../common/left.dart';

class SpinTheTop extends Action with ActivesOnly, CallWithParts, IsLeft {

  @override int numberOfParts = 2;
  @override var level = LevelData.MS;
  @override var help = '''Spin the Top is a 2-part call:
  1.  Swing
  2.  Fan the Top''';
  @override var helplink = 'ms/spin_the_top';
  SpinTheTop(name) : super(name);

  @override
   void performPart1(CallContext ctx) {
    if (ctx.dancers.any((d) => ctx.dancerFacing(d) != null))
      ctx.applyCalls('Facing Dancers Step to a $leftHand Wave');
    else if (isLeft)
      throw CallError('Left Spin the Top only applies to facing dancers');
    ctx.analyze();
    if (ctx.actives.every((it) => ctx.isInWave(it)))
      ctx.applyCalls('Swing');
    else
      throw CallError('Unable to Spin the Top from this formation');
  }

  @override
   void performPart2(CallContext ctx) {
    ctx.applyCalls('Fan the Top');
  }

}