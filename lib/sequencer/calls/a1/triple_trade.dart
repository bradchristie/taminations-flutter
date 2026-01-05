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

class TripleTrade extends Action {

  @override final level = LevelData.A1;
  @override var helplink = 'a1/triple_trade';

  TripleTrade(super.name);

  @override
  void performCall(CallContext ctx) {
    //  Check to see if there's a line of 6
    //  If so, do it with those dancers
    final lineOf6 = ctx.dancers.where((d) =>
    ctx.dancersToRight(d).length + ctx.dancersToLeft(d).length == 5).toList();
    if (lineOf6.length == 6) {
      ctx.subContext(lineOf6, (ctx2) =>
          ctx2.applyCalls('Trade')
      );
    } else {
      //  Otherwise just try with center 6 however they are arranged
      ctx.applyCalls('Center 6 Trade');
    }

  }


}