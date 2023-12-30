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

import '../../../moves.dart';
import '../common.dart';

class SlideThru extends Action with ActivesOnly {

  @override var level = LevelData.MS;
  @override var help = 'Unlike Star Thru, you can do Slide Thru with '
      'the same gender facing.';
  @override var helplink = 'ms/slide_thru';
  SlideThru(name) : super(name);

  @override
  Path performOne(DancerModel d, CallContext ctx) {
    //  Check if in wave, slide thru with adj dancer
    var d2 = ctx.dancerFacing(d);
    if (d2 == null && ctx.isInWave(d) && d.data.beau && ctx.dancerToRight(d)!.data.active) {
      var dist = d.distanceTo(ctx.dancerToRight(d)!);
      if (d.gender == Gender.BOY)
        return LeadRight.scale(1.0,dist/2.0);
      else
        return QuarterLeft.skew(1.0, -dist/2.0);
    } else {
      //  Not in wave
      //  Must be facing dancers
      if (d2 == null)
          return ctx.dancerCannotPerform(d,name);
      var dist = d.distanceTo(d2);
      return ExtendLeft.scale(dist / 2, 0.5) +
          (d.gender == Gender.BOY
              ? LeadRight.scale(1.0, 0.5)
              : QuarterLeft.skew(1.0, -0.5));
    }

  }


}