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

class QuarterTheDeucey extends Action
    with CallWithParts, CallWithStars, ButCall {

  @override var level = LevelData.C3A;
  @override var numberOfParts = 4;
  String cast;
  @override var help = '''1/4 (3/4) the Deucey is a 4-part call:
  1.  Turn 1/4 (3/4)
  2.  Centers Cast Off 1/4 (3/4), Lead Ends Circulate, Trailing Ends 1/2 Circulate
  3.  Center Star Turn 1/4 (3/4)
  4.  Centers Wave Cast Off 1/4 (3/4), lone centers Hourglass Circulate''';
  @override var helplink = 'c3a/1_4_the_deucey';

  QuarterTheDeucey(super.name) :
        cast = normalizeCall(name).contains('34')
            ? 'Cast Off 3/4'
            : 'Hinge' {
    turnStarAmount = cast == 'Hinge' ? 1 : 3;
  }

  @override
  void performPart1(CallContext ctx) {
    ctx.applyCalls(cast);
  }

  @override
  void performPart2(CallContext ctx) {
    ctx.applyCalls('Lead Ends Do Your Part Circulate While Centers Hinge While Trailing Ends Do Your Part Hourglass Circulate');
  }

  @override
  void performPart3(CallContext ctx) {
    ctx.applyCalls('Center Star $starTurns');
  }

  @override
  void performPart4(CallContext ctx) {
    ctx.applyCalls('Center Wave $butCall While Others Center 2 Do Your Part Hourglass Circulate');
  }

}