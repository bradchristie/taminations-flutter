/*

  Taminations Square Dance Animations
  Copyright (C) 2026 Brad Christie

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
import '../../../moves.dart';

class Hop extends Action with CallWithParts {

  @override var level = LevelData.C3A;
  @override var numberOfParts = 2;

  Hop(super.name);

  @override
  void performPart1(CallContext ctx) {
    var hop1 = _Hop1();
    hop1.performCall(ctx);
  }

  @override
  void performPart2(CallContext ctx) {
    ctx.applyCalls('Hinge');
  }

}

class _Hop1 extends Action {

  _Hop1() : super('');

  @override var level = LevelData.C3A;
  var walkers = <Dancer>[];
  var dodgers = <Dancer>[];

  @override
  void performCall(CallContext ctx) {
    //  Special handling for Everybody Hop and Nobody Hop
    if (ctx.actives.length == ctx.dancers.length) {
      //  Everybody Hop
      ctx.applyCalls('Pass Thru');
    } else if (ctx.actives.isEmpty) {
      //  Nobody Hop
      ctx.actives = ctx.dancers.copy();
      ctx.applyCalls('Half Sashay');
    } else {
      //  Figure out who is Walking (Hop) and who is Dodging
      walkers = ctx.actives;
      for (var d in walkers) {
        var p = d.data.partner;
        if (p != null && !walkers.contains(p))
          dodgers.add(p);
      }
      ctx.actives = walkers + dodgers;
      super.performCall(ctx);
    }
  }

  //  Only used for Part1
  @override
  Path performOne(Dancer d, CallContext ctx) {
    //  Code for walkers (Hoppers)
    //  Only works and checks for another dancer in front where it can "Hop" to
    if (walkers.contains(d)) {
      var d2 = ctx.dancerInFront(d)
          ?? thrower<Dancer>(CallError('Dancer $d cannot Hop'));
      var dist = d.distanceTo(d2);
      if (ctx.dancerInFront(d2) == d && walkers.contains(d2))
        return (ExtendLeft.scale(dist/2, 0.5) +
                ExtendRight.scale(dist/2, 0.5)).changeBeats(3.0);
      else
        return Forward.scale(dist, 1).changeBeats(3);

      //  Code for dodgers (usually partner of Hopper)
      //  Must have a partner that is either hopping or dodging
    } else if (dodgers.contains(d)) {
      var d2 = d.data.partner
          ?? thrower<Dancer>(CallError('Dancer $d cannot Dodge'));
      var dist = d.distanceTo(d2);
      if (ctx.dancerToRight(d) == d2) {
        if (dodgers.contains(d2))
          return BackSashayRight.scale(1,dist/2);
        else
          return DodgeRight.scale(1,dist/2);
      }
      else if (ctx.dancerToLeft(d) == d2) {
        if (dodgers.contains(d2))
          return SashayLeft.scale(1,dist/2);
        else
          return DodgeLeft.scale(1,dist/2);
      } else
        throw CallError('Error computing Hop for $d');
    }

    else
      return Path();
  }

}