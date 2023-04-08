/*
 *     Copyright 2021 Brad Christie
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

import '../../../moves.dart';
import '../common.dart';

class Rollaway extends Action {

  @override var helplink = 'b1/sashay';
  Rollaway(name) : super(name);

  @override
  Path performOne(DancerModel d, CallContext ctx) {
    final d2 = d.data.partner ?? thrower<DancerModel>('Cannot find partner of $d');
    final dist = d.distanceTo(d2);
    if (name.toLowerCase().startsWith('reverse')) {
      if (d.data.beau) {
        return FoldRight.changeBeats(1.5)
            .scale(0.6, dist/4).changehands(Hands.GRIPRIGHT) +
            UmTurnRight.changeBeats(1.5)
                .skew(1.2, dist/2.0).changehands(Hands.GRIPRIGHT);
      } else if (d.data.belle) {
        return DodgeLeft.scale(1.0, dist/2.0).changehands(Hands.GRIPLEFT);
      } else
        throw CallError('Dancer $d does not know how to Rollaway');
    }
    if (d.data.beau) {
      return DodgeRight.scale(1.0, dist/2.0).changehands(Hands.GRIPRIGHT);
    } else if (d.data.belle) {
      return FoldLeft.changeBeats(1.5)
          .scale(0.6, dist/4).changehands(Hands.GRIPLEFT) +
          UmTurnLeft.changeBeats(1.5)
          .skew(1.2, -dist/2.0).changehands(Hands.GRIPLEFT);
    } else
      throw CallError('Dancer $d does not know how to Rollaway');
  }

}