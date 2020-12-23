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

class StarThru extends Action {

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
    var move = TamUtils.getMove('Extend Left' )..scale(dist/2,0.5);
    move += d.gender == Gender.BOY
        ? (TamUtils.getMove('Lead Right' )..scale(1.0,0.5))
        : (TamUtils.getMove('Quarter Left' )..skew(1.0,-.5));
    //  Double and Triple Star Thru use "Left Star Thru"
    if (name.toLowerCase().contains('left' ))
      move.reflect();
    return move;
  }

}