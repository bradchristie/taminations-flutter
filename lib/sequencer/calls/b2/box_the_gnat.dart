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

import '../../../math/bezier.dart';
import '../../../moves.dart';
import '../common.dart';

class BoxTheGnat extends Action with ActivesOnly {

  @override var level = LevelData.B2;
  @override var help = 'Box the Gnat works with facing dancers and'
  ' right-hand waves. Must be opposite genders.';
  @override var helplink  = 'b2/box_the_gnat';

  BoxTheGnat(super.name);

  DancerModel? _checkOtherDancer(DancerModel d, DancerModel? d2) {
    if (d2 == null)
      return null;
    if (!d2.data.active)
      return null;
    if (d2.gender == d.gender)
      return null;
    return d2;
  }

  @override
  Path performOne(DancerModel d, CallContext ctx) {
    //  First try facing dancers
    var d2 = _checkOtherDancer(d, ctx.dancerFacing(d));
    if (d2 != null) {
      var dist = d.distanceTo(d2);
      var cy1 = (d.gender == Gender.BOY) ? 1.0 : 0.1;
      var y4 = (d.gender == Gender.BOY) ? -2.0 : 2.0;
      var hands = (d.gender == Gender.BOY) ? Hands.GRIPLEFT : Hands.GRIPRIGHT;
      var m = Movement(
          4.0, hands,
          Bezier([Vector(0.0, 0.0), Vector(1.0, cy1),
            Vector(dist / 2, cy1), Vector(dist / 2 + 1, 0.0)]),
          Bezier([Vector(0.0, 0.0), Vector(1.3, 0.0),
            Vector(1.3, y4), Vector(0.0, y4)]
          ));
      return Path([m]);
    }

    //  Next look for Ocean Wave Rule
    if (ctx.isInWave(d)) {
      var d2  = _checkOtherDancer(d, ctx.dancerToRight(d));
      if (d2 == null)
        return ctx.dancerCannotPerform(d, name);
      var dist = d.distanceTo(d2);
      var offset = -dist/2.0;
      if (dist > 1.5 && d.data.end)
        offset = -dist;
      else if (dist > 1.5 && d.data.center)
        offset = 0.0;
      return (d.gender==Gender.BOY ? UmTurnRight : UmTurnLeft)
        .skew(1.0,offset)
        .changehands(Hands.GRIPRIGHT);
    }
    return ctx.dancerCannotPerform(d, name);
  }

}