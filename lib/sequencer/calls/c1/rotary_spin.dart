/*
 * *     Copyright 2024 Brad Christie
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

class RotarySpin extends Action with CallWithParts {

  @override int numberOfParts = 2;
  @override final level = LevelData.C1;
  @override var help = '''Rotary Spin is a 2-part call:
  1.  Right Pull By
  2.  Centers Step to a Left-Hand Wave and Cast Off 3/4, others Courtesy Turn and Roll
You can switch the hands with Left Rotary Spin''';
  @override var helplink = 'c1/rotary_spin';
  final bool isLeft;
  RotarySpin(String name) : isLeft=name.startsWith('Left'), super(name);

  @override
   void performPart1(CallContext ctx) {
    var left = isLeft ? 'Left' : '';
    ctx.applyCalls('$left Pass Thru');
  }

  @override
   void performPart2(CallContext ctx) {
    var wave = isLeft ? 'Wave' : 'Left-Hand Wave';
    //  Fake Courtesy Turn with a Wheel Around so we can do the left version
    var wheel = isLeft ? 'Reverse Wheel Around' : 'Wheel Around';
    ctx.applyCalls('Centers Step to a $wave and Cast Off 3/4 '
        'While Ends $wheel and Roll');
  }

}