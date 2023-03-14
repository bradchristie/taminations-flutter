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

class Cross extends Action {

  @override final level = LevelData.A1;
  @override var help = 'Either specify the dancers to Cross, or by default'
      ' the trailers Cross.';
  @override var helplink = 'a1/anything_and_cross';
  Cross() : super('Cross');

  var crossCount  = 0;

  @override
  void perform(CallContext ctx) {
    //  If dancers are not specified, then the trailers cross
    ctx.analyze();
    if (ctx.actives.length == ctx.dancers.length) {
      for (var d in ctx.dancers)
        d.data.active = d.data.trailer;
    }
    if (ctx.actives.length == ctx.dancers.length || ctx.actives.isEmpty)
      throw CallError('You must specify which dancers Cross.');
    crossCount = 0;
    super.perform(ctx);
    if (crossCount == 0)
      throw CallError('Cannot find dancers to Cross');
  }

  @override
  Path performOne(DancerModel d, CallContext ctx) {
    //  Find the other dancer to cross with
    DancerModel? d2;
    for (var it in ctx.actives) {
      //  Not too far away
      if (d.distanceTo(it) > 6.0)
        continue;
      //  Dancers must be facing opposite directions
      //  and facing diagonal to each other
      final a = d.angleToDancer(it).abs();
      if (d.tx.angle.angleDiff(it.tx.angle).abs().isAbout(pi) &&
          !a.isAround(0.0) &&
          !a.isAround(pi/2) &&
          a < pi/2) {
        if (d2 == null)
          d2 = it;
        //  Prefer closer dancer
        else if (d.distanceTo(it).isLessThan(d.distanceTo(d2)))
          d2 = it;
        //  Prefer not to cross across center
        else if (d.location.isAbout(-d2.location))
          d2 = it;
      }
    }
    //  OK if some dancers cannot cross
    if (d2 == null)
      return Path();
    //  Now compute the X and Y values to travel
    //  The standard has x distance = 2 and y distance = 2
    final a = d.angleToDancer(d2);
    final dist = d.distanceTo(d2);
    final x = dist * cos(a);
    final y = dist * sin(a.abs());
    crossCount += 1;
    return (a > 0 ? CrossLeft : CrossRight).scale(x/2.0,y/2.0);
  }

}