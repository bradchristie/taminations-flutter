/*
 *     Copyright 2022 Brad Christie
 *
 *     This file is part of Taminations.
 *
 *     Taminations is free software: you can redistribute it and/or modify
 *     it under the terms of the GNU Affero General Public License as published
 *     by the Free Software Foundation, either version 3 of the License, or
 *     (at your option) any later version.
 *
 *     Taminations is distributed in the hope that it will be useful,
 *     but WITHOUT ANY WARRANTY; without even the implied warranty of
 *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *     GNU Affero General Public License for more details.
 *
 *     You should have received a copy of the GNU Affero General Public License
 *     along with Taminations.  If not, see <http://www.gnu.org/licenses/>.
 */

import '../../../moves.g.dart';
import '../common.dart';

//  See plus/explode.dart
class ReverseExplode extends Action {

  @override var level = LevelData.C1;
  @override var helplink = 'c1/reverse_explode';
  ReverseExplode(name) : super(name);

  @override
  Path performOne(DancerModel d, CallContext ctx) {
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