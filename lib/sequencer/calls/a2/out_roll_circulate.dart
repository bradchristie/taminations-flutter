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

class OutRollCirculate extends Action with IsPrefer {

  @override var level = LevelData.A2;

  OutRollCirculate(super.name);

  @override
  void performCall(CallContext ctx) {
    //  Figure out who is out-rolling
    var sa = ctx.saveActives();
    ctx.applySpecifier(prefer.isNotBlank ? prefer : 'Leading Ends');
    var outRollers = ctx.actives;
    ctx.restoreActives(sa);

    //  Compute paths for the out-rollers
    for (var d in outRollers) {
      var dleft = ctx.dancersToLeft(d);
      var dright = ctx.dancersToRight(d);
      var isLeft = dright.isEmpty || outRollers.contains(dright.first);
      var isRight = dleft.isEmpty || outRollers.contains(dleft.first);
      if (!(isLeft ^ isRight))
        throw CallError('Cannot figure out which way $d should go');
      if (isLeft) {
        d.path += RunLeft.changeBeats(4).scale(2, d.distanceTo(dleft.last) / 2);
      } else {
        d.path += RunRight.changeBeats(4).scale(2, d.distanceTo(dright.last) / 2);
      }
    }

    //  Compute paths for others
    for (var d in ctx.actives) {
      if (outRollers.contains(d))
        continue;
      //  Direction to roll must be unambiguous
      var isLeft = ctx.dancersToLeft(d).any((d2) => outRollers.contains(d2));
      var isRight = ctx.dancersToRight(d).any((d2) => outRollers.contains(d2));
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