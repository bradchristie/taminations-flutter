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

//  Tidal waves of 8 dancers are covered by xml animations.
//  This class handles formations of 6 dancers, with 2 others inactive.
class GrandSwingThru extends Action {

  @override
  var level = LevelData.PLUS;
  GrandSwingThru(String name) : super(name);

  @override
  Future<void> perform(CallContext ctx, [int stackIndex = 0]) async {
    //  Check that we have 6 dancers in a tidal wave
    for (var d in ctx.actives) {
      if (ctx.dancersToLeft(d).length+ctx.dancersToRight(d).length == 5) {
        [ctx.dancerToLeft(d),ctx.dancerToRight(d)]
            .where((d2) => d2!=null)
            .forEach((d2) {
          if (!ctx.isInWave(d,d2))
            throw CallError('Dancers are not in a tidal wave.');
        });
      }
      else
        d.data.active = false;
    }
    if (ctx.actives.length != 6)
      throw CallError('Unable to Grand Swing Thru from this formation.');

    //  All ok, do each part
    if (name.startsWith('Left'))
      await ctx.applyCalls('_Grand Swing Left','_Grand Swing Right');
    else
      await ctx.applyCalls('_Grand Swing Right','_Grand Swing Left');
  }

}

class GrandSwingX extends Action {

  GrandSwingX(String name) : super(name);

  @override
  Path performOne(Dancer d, CallContext ctx) {
    var d2 = ctx.dancerToLeft(d);
    var dir = 'Left';
    if (name.endsWith('Right')) {
      d2 = ctx.dancerToRight(d);
      dir = 'Right';
    }
    if (d2 != null) {
      //  Distance is likely 1.0 (shoulder to shoulder)
      var dist = d.distanceTo(d2);
      return TamUtils.getMove('Swing $dir',scale:[dist/2.0,dist/2.0].v);
    }
    //  d2 is null - must be dancer at end not moving for this part
    return TamUtils.getMove('Stand');
  }

}