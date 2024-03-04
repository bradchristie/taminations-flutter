/*

  Taminations Square Dance Animations
  Copyright (C) 2024 Brad Christie

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

import 'package:taminations/moves.dart';

import '../common.dart';

class InRollCirculate extends Action with IsPrefer {

  @override var level = LevelData.A2;

  InRollCirculate(super.name);

  @override
  void performCall(CallContext ctx) {
    //  Figure out who is in-rolling
    var sa = ctx.saveActives();
    ctx.applySpecifier(prefer.isNotBlank ? prefer : 'Trailing Ends');
    var inRollers = ctx.actives;
    ctx.restoreActives(sa);

    //  Compute paths for the in-rollers
    for (var d in inRollers) {
      var d2 = ctx.dancerInFront(d)
          ?? thrower(CallError('Unable to compute path for $d'))!;
      d.path += Forward.changeBeats(4).scale(d.distanceTo(d2), 0);
    }

    //  Compute paths for others
    for (var d in ctx.actives) {
      if (inRollers.contains(d))
        continue;
      //  Direction to roll must be unambiguous
      var isLeft = ctx.dancersToLeft(d).any((d2) => inRollers.contains(d2));
      var isRight = ctx.dancersToRight(d).any((d2) => inRollers.contains(d2));
      if (!(isLeft ^ isRight))
        throw CallError('Dancer $d cannot figure out which way to roll');
      if (isLeft) {
        var dist = d.distanceTo(ctx.dancerToLeft(d)!);
        d.path += FlipLeft.changeBeats(4).scale(1,dist/2);
      } else {
        var dist = d.distanceTo(ctx.dancerToRight(d)!);
        d.path += FlipRight.changeBeats(4).scale(1,dist/2);
      }
    }

  }

}