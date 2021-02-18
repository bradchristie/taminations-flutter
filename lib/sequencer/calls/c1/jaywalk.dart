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

class Jaywalk extends Action {

  @override final level = LevelData.C1;
  Jaywalk() : super('Jaywalk');

  //  Find dancer to Jaywalk with this dancer
  //  Only looks from this dancer's perspective
  //  Returns null if no dancer found or if
  //  cannot decide between two other dancers
  Dancer? _bestJay(CallContext ctx, Dancer d) {
    Dancer? bestDancer;
    var bestDistance = 10.0;
    ctx.actives.where((it) => it != d).forEach((d2) {
      final a1 = d.angleToDancer(d2);
      final a2 = d2.angleToDancer(d);
      //  Dancers must approx. face each other
      if (a1.abs().isLessThan(pi/2) && a2.abs().isLessThan(pi/2)) {
        final dist = d.distanceTo(d2);
        if (dist.isAbout(bestDistance)) {
          bestDancer = null;
        } else if (dist < bestDistance) {
          bestDancer = d2;
          bestDistance = dist;
        }
      }
    });
    return bestDancer;
  }

  @override
  Path performOne(Dancer d, CallContext ctx) {
    //  Find dancer to Jaywalk with
    final d2 = (_bestJay(ctx,d)
        ?? ctx.actives.where((d3) => _bestJay(ctx,d3) == d).firstOrNull)
        .throwIfNull(CallError('Cannot find dancer to Jaywalk with $d'));
    //   Calculate Jay path
    final v = d.vectorToDancer(d2);
    final da = d.angleFacing - d2.angleFacing;
    if (da.isAround(pi/2.0))
      return TamUtils.getMove('Lead Left Passing',scale:[v.x,v.y].v);
    else if (da.isAround(pi*3.0/2.0))
      return TamUtils.getMove('Lead Right Passing',scale:[v.x,-v.y].v);
    return (v.y > 0)
    //   Pass right shoulders
        ? TamUtils.getMove('Extend Left',
        scale:[v.x-1,v.y].v,
        beats:v.length.ceil()-1.0) +
        TamUtils.getMove('Forward')
        : TamUtils.getMove('Forward') +
        TamUtils.getMove('Extend Right',
            scale:[v.x-1,-v.y].v,
            beats:v.length.ceil()-1.0);
  }

}