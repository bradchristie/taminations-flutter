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

class TallyHo extends Action with CallWithParts, ButCall {

  @override int numberOfParts = 3;
  @override final level = LevelData.C1;
  @override var help = '''Tally Ho is a 3-part call:
  1.  1/2 Circulate
  2.  Center wave of 4 Hinge and 1/2 Circulate, others Trade
  3.  Center wave of 4 Cast Off 3/4, others Hourglass Circulate
The final Cast Off 3/4 can be replaced with But (another call)''';
  @override var helplink = 'c1/tally_ho';

  TallyHo(super.name);

  @override
   void performPart1(CallContext ctx) {
    ctx.applyCalls('1/2 Circulate');
    ctx.matchStandardFormation();
  }

  @override
   void performPart2(CallContext ctx) {
    ctx.applyCalls('Center Wave Of Four Hinge and 1/2 Circulate While Others Trade');
  }

  @override
   void performPart3(CallContext ctx) {
    ctx.applyCalls('Center Wave Of Four $butCall '
        'While Others Do Your Part Hourglass Circulate');
  }

}