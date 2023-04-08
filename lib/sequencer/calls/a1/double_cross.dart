/*
 *     Copyright 2022 Brad Christie
 *
 *     This file is part of Taminations.
 *
 *     Taminations is free software: you can redistribute it and/or modify
 *     it under the terms of the GNU Affero General Public License as published
 *     by the Free Software Foundation, either version 3 of the License, or
 *     (at your option) any later version.
 *
 *     Taminations is distributed in the hope that it will be useful,
 *     but WITHOUT ANY WARRANTY; without even the implied warranty of
 *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *     GNU Affero General Public License for more details.
 *
 *     You should have received a copy of the GNU Affero General Public License
 *     along with Taminations.  If not, see <http://www.gnu.org/licenses/>.
 */

import '../../../moves.dart';
import '../common.dart';

class DoubleCross extends Action {

  @override var level = LevelData.A1;
  @override var help = '3 by 2 columns can Double Cross';
  @override var helplink = 'a1/triple_cross';
  DoubleCross() : super('Double Cross');

  @override
  void perform(CallContext ctx) {
    var crossCount  = 0;
    //  Ignore the outer 2 dancers
    ctx.subContext(ctx.center6(), (ctx2) {
      //  Now look for 4 dancers facing on a diagonal
      //  This is largely copied from cross.dart (so merge this code??)
      for (var d in ctx2.dancers) {
        var dcross = ctx2.dancerClosest(d, (d2) {
          final a = d.angleToDancer(d2).abs();
          return
          //  Dancers must be facing opposite directions
            d.tx.angle.angleDiff(d2.tx.angle).abs().isAbout(pi) &&
          //  Dancers must be on a diagonal
            !a.isAround(0.0) && !a.isAround(pi/2) && a < pi/2;
        });
        if (dcross != null) {
          crossCount += 1;
          //  Now compute the X and Y values to travel
          //  The standard has x distance = 2 and y distance = 2
          final a = d.angleToDancer(dcross);
          final dist = d.distanceTo(dcross);
          final x = dist * cos(a);
          final y = dist * sin(a.abs());
          d.path = (a > 0 ? CrossLeft : CrossRight).scale(x/2.0,y/2.0);
        }
      }
    });
    if (crossCount != 4)
      throw CallError('Cannot find dancers to Double Cross');
  }

}