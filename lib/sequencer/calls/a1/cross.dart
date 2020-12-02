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

class Cross extends Action {

  @override
  var level = LevelData.A1;
  Cross() : super('Cross');

  var crossCount  = 0;

  @override
  Future<void> perform(CallContext ctx, [int stackIndex = 0]) async {
    //  If dancers are not specified, then the trailers cross
    if (ctx.actives.length == ctx.actives.length) {
      for (var d in ctx.dancers)
        d.data.active = d.data.trailer;
    }
    if (ctx.actives.length == ctx.dancers.length || ctx.actives.isEmpty)
      throw CallError('You must specify which dancers Cross.');
    crossCount = 0;
    await super.perform(ctx,stackIndex);
    if (crossCount == 0)
      throw CallError('Cannot find dancers to Cross');
  }

  @override
  Path performOne(Dancer d, CallContext ctx) {
    //  Find the other dancer to cross with
    Dancer d2;
    for (var it in ctx.actives) {
      //  Dancers must be facing opposite directions
      //  and facing diagonal to each other
      var a = d.angleToDancer(it).abs();
      if (d.tx.angle.angleDiff(it.tx.angle).abs().isAbout(pi) &&
          !a.isAround(0.0) &&
          !a.isAround(pi/2) &&
          a < pi/2) {
        if (d2 == null)
          d2 = it;
        else if (d.distanceTo(d2).isAbout(d.distanceTo(it)))
          d2 = it;
        else if (d.distanceTo(it) < d.distanceTo(d2))
          d2 = it;
      }
    }
    //  OK if some dancers cannot cross
    if (d2 == null)
      return Path();
    //  Now compute the X and Y values to travel
    //  The standard has x distance = 2 and y distance = 2
    var a = d.angleToDancer(d2);
    var dist = d.distanceTo(d2);
    var x = dist * cos(a);
    var y = dist * sin(a.abs());
    crossCount += 1;
    return TamUtils.getMove((a > 0) ? 'Cross Left' : 'Cross Right',scale:[x/2.0,y/2.0].v);
  }

}