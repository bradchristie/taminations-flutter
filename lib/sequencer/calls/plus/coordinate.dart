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

class Coordinate extends Action with CallWithParts {

  @override int numberOfParts = 4;
  @override var level = LevelData.PLUS;
  @override var help = '''Coordinate is a 4-part call:
  1.  Circulate
  2.  1/2 Circulate
  3.  Center 6 Trade
  4.  Center 2 and Outer 2 move up''';
  @override var helplink = 'plus/coordinate';

  Coordinate(super.name);

  @override
   void performPart1(CallContext ctx) {
    ctx.applyCalls('Circulate');
  }

  @override
   void performPart2(CallContext ctx) {
    ctx.applyCalls('1/2 Circulate');
  }

  @override
   void performPart3(CallContext ctx) {
    ctx.applyCalls('Center 6 Trade');
  }

  @override
   void performPart4(CallContext ctx) {
    ctx.applyCalls('Very Centers Do Your Part Hourglass Circulate');
    ctx.contractPaths();
    ctx.applyCalls('Outer 2 Do Your Part Hourglass Circulate');
  }

}