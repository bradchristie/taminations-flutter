/*

  Taminations Square Dance Animations
  Copyright (C) 2026 Brad Christie

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

class PassToTheCenter extends Action with CallWithParts {

  @override var level = LevelData.PLUS;
  @override int numberOfParts = 2;
  @override var help = '''Pass to the Center has 2 parts:
  1.  Pass Thru
  2.  Outer 4 Trade''';
  @override var helplink = 'plus/pass_to_the_center';

  PassToTheCenter(super.name);

  @override
   void performPart1(CallContext ctx) {
    //  Check that Pass Thru is with dancers facing in passing dancers facing out
    //  Otherwise it will accept incorrect starting formations
    if (ctx.dancers.where((d) => d.isFacingIn).length !=
        ctx.dancers.where((d) => d.isFacingOut).length)
      throw FormationNotFoundError(name);
    ctx.applyCalls('Pass Thru');
  }

  @override
   void performPart2(CallContext ctx) {
    ctx.applyCalls('Outer 4 Trade');
  }

}