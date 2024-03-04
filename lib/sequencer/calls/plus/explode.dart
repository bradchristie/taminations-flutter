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

//  This is for Explode applied to a mini-wave,
//  e.g. to take a thar to a 1/4 tag
class Explode extends Action {

  @override var level = LevelData.PLUS;
  @override var help = 'You can use Explode for Explode and Nothing';
  @override var helplink = 'plus/explode_and_anything';

  Explode(super.name);

  @override
  Path performOne(DancerModel d, CallContext ctx) {
    var d2 = d.data.partner;
    if (d2 != null) {
      var dist = d.distanceTo(d2);
      if (d2.location.length.isLessThan(d.location.length)) {
        if (d.data.beau)
          return LeadRight.scale(1.0, dist / 2.0);
        else if (d.data.belle)
          return LeadLeft.scale(1.0, dist / 2.0);
      } else if (d2.location.length.isGreaterThan(d.location.length)) {
        if (d.data.beau)
          return QuarterLeft.skew(1.0, -dist / 2.0);
        else if (d.data.belle)
          return QuarterRight.skew(1.0, dist / 2.0);
      }
    }
    throw CallError('Unable to Explode from this formation.');
  }

}