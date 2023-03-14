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

class TurnThru extends Action {

  @override var level = LevelData.MS;
  @override var helplink = 'ms/turn_thru';
  TurnThru(String name) : super(name);

  @override
  Path performOne(DancerModel d, CallContext ctx) {
    var move1 = ExtendLeft;
    var move2 = SwingRight;
    var move3 = ExtendRight;
    if (name.startsWith('Left')) {
      move1 = ExtendRight;
      move2 = SwingLeft;
      move3 = ExtendLeft;
    }
    //  Check for dancers in mini-wave
    if (ctx.isInWave(d)) {
      //  If in waves, Turn Thru has to be right-handed,
      //  Left Turn Thru left-handed
      var d2 = (name.startsWith('Left')) ? ctx.dancerToLeft(d) : ctx.dancerToRight(d);
      if (d2 != null && d2.data.active) {
        var dist = d.distanceTo(d2);
        return move2.scale(0.5,dist/4+0.25) +
               move3.scale(1.0, 0.5);
      }
    }
    //  Otherwise has to be facing dancers
    var d2 = ctx.dancerFacing(d);
    if (d2 == null || !d2.data.active || ctx.dancerInFront(d2) != d)
      return ctx.dancerCannotPerform(d,name);
    var dist = d.distanceTo(d2);
    return move1.scale(dist / 2, 0.5) +
           move2.scale(0.5, 0.5) +
           move3.scale(dist / 2, 0.5);
  }

}