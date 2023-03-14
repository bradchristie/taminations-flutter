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

import '../../../moves.g.dart';
import '../common.dart';

class CaliforniaTwirl extends Action {

  @override var help = 'Must be a couple of opposite gender';
  @override var helplink = 'b1/california_twirl';
  CaliforniaTwirl() : super('California Twirl' );

  @override
  Path performOne(DancerModel d, CallContext ctx) {
    if (d.gender == Gender.BOY) {
      var d2 = ctx.dancerToRight(d);
      if (d2 == null || d2.gender != Gender.GIRL || !d2.data.active)
        throw CallError('DancerModel $d cannot California Twirl' );
      var dist = d.distanceTo(d2);
      return RunRight
          .changehands(Hands.GRIPRIGHT)
          .scale(dist/2,dist/2)
          .changeBeats(4.0);
    }
    else if (d.gender == Gender.GIRL) {
      var d2 = ctx.dancerToLeft(d);
      if (d2 == null || d2.gender != Gender.BOY || !d2.data.active)
        throw CallError('DancerModel $d cannot California Twirl' );
      var dist = d.distanceTo(d2);
      return FlipLeft
          .changehands(Hands.GRIPLEFT)
          .scale(dist/2,dist/2)
          .changeBeats(4.0);
    }
    else
      throw CallError('Phantoms cannot Twirl' );
  }

}