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

class Hinge extends Action {

  @override var level = LevelData.MS;
  @override var help = 'Hinge can be either from a mini-wave (Mainstream)'
      ' or from a couple (A-1)';
  @override var helplink = 'ms/hinge';
  Hinge(String name) : super(name);

  @override
  Path performOne(Dancer d, CallContext ctx) {
    //  Find the dancer to hinge with
    var leftCount = ctx.dancersToLeft(d).where((it) => it.isActive).length;
    var rightCount = ctx.dancersToRight(d).where((it) => it.isActive).length;
    Dancer d2;
    if (leftCount.isOdd && rightCount.isEven)
      d2 = ctx.dancerToLeft(d)!;
    else if (leftCount.isEven && rightCount.isOdd)
      d2 = ctx.dancerToRight(d)!;
    else
      return ctx.dancerCannotPerform(d, name);

    if (d2.isNotActive)
      return ctx.dancerCannotPerform(d, name);
    if (!ctx.isInWave(d,d2))
      level = LevelData.A1;
    var dist = d.distanceTo(d2);

    //  Hinge from mini-wave, left or right handed
    var xScale = 1.0;
    final df = ctx.dancerInFront(d);
    if (df != null && !df.distanceTo(d).isGreaterThan(2.0))
      xScale = 0.5;
    final db = ctx.dancerInBack(d);
    if (db != null && !db.distanceTo(d).isGreaterThan(2.0))
      xScale = 0.5;
    if (ctx.isInWave(d,d2)) {
      if (name.startsWith('Left') && d2.isRightOf(d))
        throw CallError('Cannot Left Hinge with right hands');
      return TamUtils.getMove(d2.isRightOf(d) ? 'Hinge Right' : 'Hinge Left',
          scale: [xScale, dist/2].v);
    }
    //  Left Partner Hinge
    else if (ctx.isInCouple(d,d2) && d2.isRightOf(d) && name.startsWith('Left'))
      return TamUtils.getMove('Quarter Right', skew: [-xScale,-dist/2].v);
    else if (ctx.isInCouple(d,d2) && d2.isLeftOf(d) && name.startsWith('Left'))
      return TamUtils.getMove('Lead Left',scale:[xScale,dist/2].v);
    //  Partner Hinge
    else if (ctx.isInCouple(d,d2) && d2.isRightOf(d))
      return TamUtils.getMove('Lead Right',scale: [xScale,dist/2].v);
    else if (ctx.isInCouple(d,d2) && d2.isLeftOf(d))
      return TamUtils.getMove('Quarter Left',skew: [-xScale,dist/2].v);
    else
      return ctx.dancerCannotPerform(d, name);
  }

}