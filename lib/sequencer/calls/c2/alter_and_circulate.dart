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

class AlterAndCirculate extends Action with CallWithParts, CallWithStars, IsLeft {

  @override final level = LevelData.C2;
  @override var help = '''Alter and Circulate is a 5-part call. Parts can be changed with Skip and Replace.
  1.  Swing
  2.  Centers Cast Off 3/4 While Ends Turn Back
  3.  Outer 4 Circulate While Very Centers Trade
  4.  Turn the Star Twice - amount can be changed
  5.  Flip the Diamond''';
  @override var helplink = 'c2/alter_and_circulate';
  @override int numberOfParts = 5;
  @override var turnStarAmount = 2;
  @override var turnStarCall = 'Split Counter Rotate';

  AlterAndCirculate(super.name);

  @override
   void performPart1(CallContext ctx) {
    ctx.applyFacingCouplesRule(isLeft: isLeft);
    ctx.applyCalls('Swing');
  }

  @override
   void performPart2(CallContext ctx) {
    ctx.applyCalls('Centers Cast Off 3/4 While Ends Turn Back');
  }

  @override
   void performPart3(CallContext ctx) {
    ctx.applyCalls('Outer 4 Circulate While Very Centers Trade');
  }

  @override
   void performPart4(CallContext ctx) {
    ctx.applyCalls(starTurns);
  }

  @override
   void performPart5(CallContext ctx) {
    ctx.applyCalls('Flip the Diamond');
  }

}