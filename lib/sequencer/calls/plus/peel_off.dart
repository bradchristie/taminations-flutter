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

import 'package:taminations/moves.dart';

import '../common.dart';

class PeelOff extends ActivesOnlyAction {

  @override var level = LevelData.PLUS;
  PeelOff(String name) : super(name);

  @override
  Path performOne(DancerModel d, CallContext ctx) {
    var isLeft = false;
    if (norm == 'PeelLeft')
      isLeft = true;
    else if (norm == 'PeelOff' && d.isCenterRight)
      isLeft = true;
    else if (!d.isCenterLeft && norm != 'PeelRight')
      throw CallError('Dancer $d cannot Peel Off as it is on an axis');
    if (d.data.leader) {
      var d2 = ctx.dancerInBack(d) ?? thrower(CallError('Error finding trailer of $d'))!;
      var dist = d.distanceTo(d2);
      if (isLeft)
        return RunLeft.skew(-dist/2, 0);
      else
        return RunRight.skew(-dist/2, 0);
    } else if (d.data.trailer) {
      var d2 = ctx.dancerInFront(d) ?? thrower(CallError('Error finding leader of $d'))!;
      var dist = d.distanceTo(d2);
      if (isLeft)
        return UmTurnLeft.skew(dist/2, 0);
      else
        return UmTurnRight.skew(dist/2, 0);
    }
    throw CallError('Dancer $d cannot Peel Off');
  }


}