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

import '../../../moves.dart';
import '../common.dart';

//  See plus/explode.dart
class ReverseExplode extends Action {

  @override var level = LevelData.C1;
  @override var helplink = 'c1/reverse_explode';

  ReverseExplode(super.name);

  @override
  Path performOne(Dancer d, CallContext ctx) {
    var d2 = d.data.partner;
    if (d2 != null) {
      var dist = d.distanceTo(d2);
      if (d2.location.length.isGreaterThan(d.location.length)) {
        if (d.data.beau)
          return LeadRight.scale(1.0, dist / 2.0);
        else if (d.data.belle)
          return LeadLeft.scale(1.0, dist / 2.0);
      } else if (d2.location.length.isLessThan(d.location.length)) {
        if (d.data.beau)
          return QuarterLeft.skew(1.0, -dist / 2.0);
        else if (d.data.belle)
          return QuarterRight.skew(1.0, dist / 2.0);
      }
    }
    throw CallError('Unable to Reverse Explode from this formation.');
  }

}