/*

  Taminations Square Dance Animations
  Copyright (C) 2025 Brad Christie

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

class Delight_Dilemma extends Action with IsLeft {

  @override var level = LevelData.C3A;

  Delight_Dilemma(super.name);

  // TODO break centers into 4 parts
  @override
  void performCall(CallContext ctx) {
    var dir = name == 'Delight' ? 'Right' : 'Left';
    ctx.subContext(ctx.outer(4), (ctx2) {
      ctx2.applyCalls('Face $dir Circulate Twice');
    });
    ctx.subContext(ctx.center(4), (ctx2) {
      ctx2.applyFacingCouplesRule(isLeft: isLeft);
      ctx2.applyCalls('Swing Slip Slip Cast Off 3/4');
    });
  }

}