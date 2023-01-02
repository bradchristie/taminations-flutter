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

import '../common.dart';

class PassThru extends Action {

  @override var helplink = 'b1/pass_thru';
  PassThru(String name) : super(name);

  @override
  Path performOne(Dancer d, CallContext ctx) {
    //  If in wave then maybe Ocean Wave rule applies
    var isFacing = ctx.dancerFacing(d)?.data.active ?? false;
    if (!isFacing && ctx.isInWave(d) && d.data.partner != null &&
        //  extra logic for Those Who Can Pass Thru
        !(ctx.dancerFacing(d.data.partner!)?.data.active ?? false)) {
      var d2 = d.data.partner!;
      if (!d2.data.active) {
        var d3 = (d2.isRightOf(d)) ? ctx.dancerToLeft(d) : ctx.dancerToRight(d);
        if (d3 != null)
          d2 = d3;
      }
      if (d2.data.active) {
        var dist = d.distanceTo(d2);
        if (name.toLowerCase().startsWith('left' )) {
          if (d2.isLeftOf(d))
            return TamUtils.getMove('Extend Left' ,scale:[1.0, dist/2.0].v);
        } else if (d2.isRightOf(d))
          return TamUtils.getMove('Extend Right' ,scale:[1.0, dist/2.0].v);
      }
    }
    //  Can only pass thru with another dancer
    //  in front of this dancer
    //  who is also facing this dancer
    var d2 = ctx.dancerFacing(d);
    if (d2 == null)
      return ctx.dancerCannotPerform(d,name);
    if (!d2.data.active)
      throw CallError('Dancers must Pass Thru with each other' );
    var dist = d.distanceTo(d2);
    //  If both dancers are on squared set spots, pass thru and stay in the center
    //if (d.isOnSSSpot && d2.isOnSSSpot)
    //  dist = 4.0;
    if (name.toLowerCase().startsWith('left' ))
      return TamUtils.getMove('Extend Right' ,scale:[dist/2,0.5].v) +
             TamUtils.getMove('Extend Left' ,scale:[dist/2,0.5].v);
    else
      return TamUtils.getMove('Extend Left' ,scale:[dist/2,0.5].v) +
             TamUtils.getMove('Extend Right' ,scale:[dist/2,0.5].v);
  }

}