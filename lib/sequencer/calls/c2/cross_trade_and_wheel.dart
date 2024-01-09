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

class CrossTradeAndWheel extends Action with CallWithParts {

  @override final level = LevelData.C2;
  @override int numberOfParts = 3;
  @override var help = '''Cross Trade and Wheel is a 3-part call:
  1.  As Couples Hinge
  2.  Very Centers Trade
  3.  As Couples Step and Fold''';
  @override var helplink = 'c2/cross_and_wheel';
  CrossTradeAndWheel(String name) : super(name);

  @override
   void performPart1(CallContext ctx) {
    final left = name.startsWith('Left') ? 'Left' : '';
    ctx.applyCalls('As Couples $left Hinge');
  }

  @override
   void performPart2(CallContext ctx) {
    ctx.applyCalls('Very Centers Trade');
  }

  @override
   void performPart3(CallContext ctx) {
    ctx.applyCalls('As Couples Step and Fold');
  }

}