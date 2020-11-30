/*

  Taminations Square Dance Animations
  Copyright (C) 2020 Brad Christie

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

import '../common.dart';

class SlideThru extends Action {

  @override
  var level = LevelData.MS;
  SlideThru() : super("Slide Thru");

  @override
  Path performOne(Dancer d, CallContext ctx) {
    //  Check if in wave, slide thru with adj dancer
    if (ctx.isInWave(d) && d.data.beau && ctx.dancerToRight(d).data.active) {
      var dist = d.distanceTo(ctx.dancerToRight(d));
      if (d.gender == Gender.BOY)
        return TamUtils.getMove("Lead Right",scale:[1.0,dist/2.0].v);
      else
        return TamUtils.getMove("Quarter Left",skew:[1.0, -dist/2.0].v);
    } else {
      //  Not in wave
      //  Must be facing dancers
      var d2 = ctx.dancerFacing(d);
      if (d2 == null)
          return ctx.dancerCannotPerform(d,name);
      var dist = d.distanceTo(d2);
      return TamUtils.getMove("Extend Left",scale:[dist / 2, 0.5].v) +
          ((d.gender == Gender.BOY)
              ? TamUtils.getMove("Lead Right",scale:[1.0, 0.5].v)
              :  TamUtils.getMove("Quarter Left",skew:[1.0, -0.5].v));
    }

  }


}