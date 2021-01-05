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

class TurnThru extends Action {

  @override
  var level = LevelData.MS;
  TurnThru(String name) : super(name);

  @override
  Path performOne(Dancer d, CallContext ctx) {
    var dir1 = 'Left';
    var dir2 = 'Right';
    if (name.startsWith('Left')) {
      dir1 = 'Right';
      dir2 = 'Left';
    }
    //  Check for dancers in mini-wave
    if (ctx.isInWave(d)) {
      //  If in waves, Turn Thru has to be right-handed,
      //  Left Turn Thru left-handed
      var d2 = (name.startsWith('Left')) ? ctx.dancerToLeft(d) : ctx.dancerToRight(d);
      if (d2 != null && d2.data.active) {
        var dist = d.distanceTo(d2);
        return TamUtils.getMove('Swing $dir2',scale:[dist / 2, 0.5].v) +
               TamUtils.getMove('Extend $dir2',scale:[1.0, 0.5].v);
      }
    }
    //  Otherwise has to be facing dancers
    var d2 = ctx.dancerFacing(d);
    if (d2 == null || !d2.data.active || ctx.dancerInFront(d2) != d)
      return ctx.dancerCannotPerform(d,name);
    var dist = d.distanceTo(d2);
    return TamUtils.getMove('Extend $dir1',scale:[dist / 2, 0.5].v) +
           TamUtils.getMove('Swing $dir2',scale:[0.5, 0.5].v) +
           TamUtils.getMove('Extend $dir2',scale:[dist / 2, 0.5].v);
  }

}