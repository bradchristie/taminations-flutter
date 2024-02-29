/*

  Taminations Square Dance Animations
  Copyright (C) 2024 Brad Christie

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

import '../../../moves.dart';
import '../common.dart';
import '../common/reverse.dart';

class WheelAround extends Action with ActivesOnly, IsReverse {

  @override var level = LevelData.B2;
  @override var helplink = 'b2/wheel_around';

  WheelAround(super.name);

  @override
  Path performOne(DancerModel d, CallContext ctx) {
    var d2 = d.data.partner.throwIfNull(CallError('Dancer $d must Wheel Around with partner'));
    if (!ctx.isInCouple(d,d2))
      throw CallError('Only Couples can Wheel Around.');
    var dist = d.distanceTo(d2);
    Path move;
    if (isReverse)
      move = d2.isRightOf(d) ? BeauReverseWheel : BelleReverseWheel;
    else
      move = d2.isRightOf(d) ? BeauWheel : BelleWheel;
    return move.scale(dist/2,dist/2);
  }

}