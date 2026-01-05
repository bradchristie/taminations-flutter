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

class CrossTradeAndWheel extends Action with IsLeft, IsGrand, CallWithParts {

  @override final level = LevelData.C2;
  @override int numberOfParts = 3;
  @override var help = '''(Grand) Cross Trade and Wheel is a 3-part call:
  1.  As Couples Hinge
  2.  if Grand, Triple Trade, else Very Centers Trade
  3.  As Couples Step and Fold''';
  @override var helplink = 'c2/cross_and_wheel';

  CrossTradeAndWheel(super.name);

  @override
   void performPart1(CallContext ctx) {
    ctx.applyCalls('As Couples $left Hinge');
  }

  @override
   void performPart2(CallContext ctx) {
    ctx.applyCalls(isGrand ? 'Triple Trade' : 'Very Centers Trade');
  }

  @override
   void performPart3(CallContext ctx) {
    ctx.applyCalls('As Couples Step and Fold');
  }

}