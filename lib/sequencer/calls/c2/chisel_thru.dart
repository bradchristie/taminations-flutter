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

class ChiselThru extends Action with CallWithParts {

  @override int numberOfParts = 3;
  @override final level = LevelData.C2;
  @override var help = '''Chisel Thru is a 3-Part call:
  1.  Concentric Pass In
  2.  Pass Thru and 1/4 In
  3.  Pass In''';
  @override var helplink = 'c2/chisel_thru';

  ChiselThru(super.name);

  @override
   void performPart1(CallContext ctx) {
    ctx.applyCalls('Concentric Pass In');
  }

  @override
   void performPart2(CallContext ctx) {
    ctx.analyze();
    ctx.applyCalls('Pass Thru and 1/4 In');
  }

  @override
   void performPart3(CallContext ctx) {
    ctx.applyCalls('Pass In');
  }

}