/*

  Taminations Square Dance Animations
  Copyright (C) 2024 Brad Christie

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

class Recycle extends Action with ActivesOnly, CallWithParts {

  @override int numberOfParts = 3;
  @override final level = LevelData.C1;
  @override var help = '''Recycle is defined at C-1 as a 3-part call:
  1.  Centers Fold and all adjust to a box
  2.  Box Counter Rotate
  3.  Roll
  ''';
  @override var helplink = 'c1/recycle';

  Recycle(super.name);

  @override
  void performPart1(CallContext ctx) {
    try {
      ctx.applyAnimatedCall('1/3 Recycle');
    } on CallError {
      throw CallError('Unable to Recycle from this formation');
    }
  }

  @override
  void performPart2(CallContext ctx) {
    if (ctx.dancers.length == 8)
      ctx.applyCalls('Split Counter Rotate');
    else
      ctx.applyCalls('Box Counter Rotate');
  }

  @override
  void performPart3(CallContext ctx) {
    //  I think Quarter In should be the same as Roll for all cases
    //  That way we don't need to save rolling direction
    //  from Part 2
    ctx.applyCalls('Quarter In');
  }


}