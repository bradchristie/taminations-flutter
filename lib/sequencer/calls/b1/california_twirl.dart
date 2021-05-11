/*

  Taminations Square Dance Animations
  Copyright (C) 2021 Brad Christie

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

class CaliforniaTwirl extends Action {

  CaliforniaTwirl() : super('California Twirl' );

  @override
  Path performOne(Dancer d, CallContext ctx) {
    if (d.gender == Gender.BOY) {
      var d2 = ctx.dancerToRight(d);
      if (d2 == null || d2.gender != Gender.GIRL || !d2.data.active)
        throw CallError('Dancer $d cannot California Twirl' );
      var dist = d.distanceTo(d2);
      return TamUtils.getMove('Run Right' )
          ..changehands(Hands.GRIPRIGHT)
          ..scale(dist/2,dist/2)
          ..changebeats(4.0);
    }
    else if (d.gender == Gender.GIRL) {
      var d2 = ctx.dancerToLeft(d);
      if (d2 == null || d2.gender != Gender.BOY || !d2.data.active)
        throw CallError('Dancer $d cannot California Twirl' );
      var dist = d.distanceTo(d2);
      return TamUtils.getMove('Flip Left' )
          ..changehands(Hands.GRIPLEFT)
          ..scale(dist/2,dist/2)
          ..changebeats(4.0);
    }
    else
      throw CallError('Phantoms cannot Twirl' );
  }

}