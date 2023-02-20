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

import '../../../moves.g.dart';
import '../common.dart';

class SplitTwo extends Action {

  @override var helplink = 'b1/split_the_outside_couple';
  SplitTwo(String name) : super(name);
  var _activesAreCouples = true;

  @override
  void perform(CallContext ctx) {
    _activesAreCouples = ctx.actives.every((d) => ctx.isInCouple(d));
    for (var d in ctx.dancers) {
      var path = performOne(d, ctx);
      d.path += path;
    }
  }

  @override
  Path performOne(Dancer d, CallContext ctx) {
    if (d.isActive) {
      if (_activesAreCouples) {
        final d2 = ctx.dancerInFront(d) ??
            thrower(CallError('Cannot find who to Split'))!;
        if (d.data.beau)
          return ExtendRight
              .scale(d.distanceTo(d2)/2.0,0.5)
              .changehands(Hands.RIGHT)
              .changeBeats(1.0) +
             ExtendLeft
               .scale(1.0,0.5)
               .changehands(Hands.RIGHT)
               .changeBeats(1.0);
        else
          return ExtendLeft
              .scale(d.distanceTo(d2)/2.0,0.5)
              .changehands(Hands.LEFT)
              .changeBeats(1.0) +
            ExtendRight
              .scale(1.0,0.5)
              .changehands(Hands.LEFT)
              .changeBeats(1.0);
      } else {
        //  Actives not couples, must be tandems
        return Forward_2;
      }

    } else {
      //  Inactive dancer
      final dx = (_activesAreCouples ? 1.0 : 1.25) *
      (ctx.outer(4).contains(d) ^ d.isFacingIn ? -1.0 : 1.0);
      if (d.isCenterLeft)
        return DodgeRight.scale(1.0, 0.25).skew(dx, 0.0).changeBeats(1.0) +
               DodgeLeft.scale(1.0, 0.25).skew(dx, 0.0).changeBeats(1.0);
      else
        return DodgeLeft.scale(1.0, 0.25).skew(dx, 0.0).changeBeats(1.0) +
               DodgeRight.scale(1.0, 0.25).skew(dx, 0.0).changeBeats(1.0);
    }
  }

}
