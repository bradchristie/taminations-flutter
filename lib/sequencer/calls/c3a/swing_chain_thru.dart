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

class SwingChainThru extends Action
    with CallWithParts, ButCall, IsLeft, FacingCouplesRule {

  @override var level = LevelData.C3A;
  @override var numberOfParts = 4;
  @override var butCall = 'Hinge';
  @override var help = '''Swing Chain Thru is a 4-part call:
  1.  Arm Turn 1/2
  2.  Centers Cast Off 1/4
  3.  Very Centers Trade
  4.  Centers Cast Off 1/4''';
  @override var helplink = 'c3a/swing_chain_thru';

  SwingChainThru(super.name);

  @override
  void performPart1(CallContext ctx) {
    applyFacingCouplesRule(ctx);
    ctx.applyCalls('Swing');
  }

  @override
  void performPart2(CallContext ctx) {
    ctx.applyCalls('Centers Hinge');
  }

  @override
  void performPart3(CallContext ctx) {
    ctx.applyCalls('Very Centers Trade');
  }

  @override
  void performPart4(CallContext ctx) {
    ctx.applyCalls('Centers $butCall');
  }

}

