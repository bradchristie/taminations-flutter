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

import '../../../moves.dart';
import '../common.dart';

class StepAndFold extends Action with ActivesOnly {

  @override var level = LevelData.C1;

  StepAndFold(super.name);

  @override
  Path performOne(DancerModel d, CallContext ctx) {
    if (d.data.center) {
      return Forward;
    } else if (d.data.end) {
      var d2 = ctx.dancerToRight(d);
      if (d2 != null && d2.data.center && ctx.isInWave(d,d2))
        return RunRight.scale(1,d.distanceTo(d2)/2).skew(1, 0);
      d2 = ctx.dancerToLeft(d);
      if (d2 != null && d2.data.center && ctx.isInWave(d,d2))
        return RunLeft.scale(1,d.distanceTo(d2)/2).skew(1, 0);
    }
    throw CallError('Unable to calculate Step and Fold for dancer $d');
  }

}

