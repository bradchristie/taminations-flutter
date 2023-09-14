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

class ToAWave extends Action {

  @override final level = LevelData.C1;
  @override var helplink = 'c1/anything_to_a_wave';
  ToAWave(String name) : super(name);

  @override
  void perform(CallContext ctx) {
    if (ctx.callstack.length < 2)
      throw CallError('What to a Wave?');
    //  Remember the angle each dancer is facing
    var endAngles = {
      for (var d in ctx.actives)
        d : d.angleFacing
    };
    //  Assume the last move is an Extend from a wave
    ctx.contractPaths();
    for (final d in ctx.actives)
      d.path.pop();
    ctx.animateToEnd();
    //  Check that they are all facing the final direction
    for (var d in ctx.actives) {
      if (d.angleFacing != endAngles[d])
        throw CallError('Last part of call must be like Extend or Step Thru');
    }
    //  Now let's see if they are in waves
    ctx.analyze();
    for (final d in ctx.actives) {
      if (!ctx.isInWave(d))
        throw CallError('Unable to end in Wave');
    }
  }

}