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

class StarThru extends ActivesOnlyAction {

  @override var help = 'Star Thru is limited to a boy and girl facing.';
  @override var helplink = 'b1/star_thru';
  StarThru(name) : super(name);

  @override
  Path performOne(Dancer d, CallContext ctx) {
    //  Must be facing dancers, opposite gender
    var d2 = ctx.dancerFacing(d);
    if (d2 == null)
      return ctx.dancerCannotPerform(d, name);
    if (d2.gender == d.gender)
      throw CallError('Cannot Star Thru with same gender.' );
    var dist = d.distanceTo(d2);
    var move = ExtendLeft.scale(dist/2,0.5);
    move += d.gender == Gender.BOY
        ? LeadRight.scale(1.0,0.5)
        : QuarterLeft.skew(1.0,-.5);
    //  Double and Triple Star Thru use "Left Star Thru"
    if (name.toLowerCase().contains('left' ))
      move = move.reflect();
    return move.changeBeats(4.0);
  }

}

//  This class is a hack since 'Centers' 'Star Thru'
//  parses as 'Centers Star' which fails
class CentersStarThru extends StarThru {

  CentersStarThru(String name) : super(name);

  @override
  void perform(CallContext ctx) {
    ctx.dancers.forEach((d) {
      if (!d.data.center)
        d.data.active = false;
    });
    super.perform(ctx);
  }

}