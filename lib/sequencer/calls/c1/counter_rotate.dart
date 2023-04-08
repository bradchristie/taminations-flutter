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

import '../../../math/bezier.dart';
import '../../../moves.dart';
import '../common.dart';

class CounterRotate extends Action {

  @override var level = LevelData.C1;
  @override var help = 'Any dancer not facing directly towards or'
      ' away from the center can Counter Rotate';
  @override var helplink = 'c1/counter_rotate';
  CounterRotate() : super('Counter Rotate');

  @override
  void perform(CallContext ctx) {
    super.perform(ctx);
    //  Looks much better if dancers all take the same time
    var maxBeats = ctx.dancers.maxOf((d) => d.path.beats);
    for (var d in ctx.dancers) {
      d.path = d.path.changeBeats(maxBeats);
    }
  }

  @override
  Path performOne(DancerModel d, CallContext ctx) {
    var da = d.angleToOrigin;
    //  Counter Rotate not possible if dancer is looking
    //  directly at the center of the square
    if (da.isAround(0.0))
      throw CallError('Dancer $d cannot Counter Rotate');
    //  Compute points for Bezier
    var anginc = pi/6.0 * da.sign;
    var p1 = d.location.ds(d);
    var p2 = d.location.rotate(anginc).ds(d);
    var p3 = d.location.rotate(anginc*2.0).ds(d);
    var p4 = d.location.rotate(anginc*3.0).ds(d);
    var bz = Bezier.fromPoints(p1,p2,p3,p4);
    //  Get turn, which is 1/4 right or left
    var move = (da < 0) ? QuarterRight : QuarterLeft;
    var brot = move.movelist[0].brotate;
    var beats = d.location.length.ceil().toDouble();
    var move2 = Movement(beats,Hands.NOHANDS,bz,brot);
    return Path([move2]);
  }

}