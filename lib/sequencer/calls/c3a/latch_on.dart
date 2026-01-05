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

class LatchOn extends Action with CallWithParts, IsLeft {

  @override var level = LevelData.C3A;
  @override var numberOfParts = 2;

  LatchOn(super.name);

  @override
  void performPart1(CallContext ctx) {
    ctx.applyCalls('$whichWay Roll to a Wave');
    ctx.checkCenters();
    ctx.matchStandardFormation();
  }

  @override
  void performPart2(CallContext ctx) {
    if (norm.endsWith('12'))
      ctx.applyCalls('Trade');
    else if (norm.endsWith('34'))
      ctx.applyCalls('Cast Off 3/4');
    else
      ctx.applyCalls('Hinge');
  }

}