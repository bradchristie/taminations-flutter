/*

  Taminations Square Dance Animations
  Copyright (C) 2023 Brad Christie

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

class SingleCrossTradeAndWheel extends Action with CallWithParts {

  @override final level = LevelData.C2;
  @override int numberOfParts = 3;
  @override var help = '''Single Cross Trade and Wheel has 3 parts:
  1.  Hinge
  2.  Centers Trade
  3.  Step and Fold
You can make couples do a Left Hinge with Left Single Cross and Wheel''';
  @override var helplink = 'c2/cross_and_wheel';
  SingleCrossTradeAndWheel(name) : super(name);

  @override
   void performPart1(CallContext ctx) {
    final left = name.startsWith('Left') ? 'Left' : '';
    ctx.applyCalls('$left Hinge');
  }

  @override
   void performPart2(CallContext ctx) {
    ctx.analyze();
    ctx.applyCalls('Centers Trade');
  }

  @override
   void performPart3(CallContext ctx) {
    ctx.applyCalls('Step and Fold');
  }

}