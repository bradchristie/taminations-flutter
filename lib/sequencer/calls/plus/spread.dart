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

import '../../../moves.dart';
import '../common.dart';

class Spread extends Action {

  @override
  var level = LevelData.PLUS;
  @override var helplink = 'plus/anything_and_spread';
  Spread(String name) : super(name);

  /*
   * 1. If only some of the dancers are directed to Spread (e.g., from a
   * static square, Heads Star Thru & Spread), they slide apart sideways to
   * become ends, as the inactive dancers step forward between them.
   *
   * 2. If the (Anything) call finishes in lines or waves (e.g., Follow Your Neighbor),
   * the centers anticipate the Spread action by sliding apart sideways to
   * become the new ends, while the original ends anticipate the Spread action
   * by moving into the nearest center position.
   *
   * 3. If the (Anything) call finishes in tandem couples
   *  (e.g., Wheel & Deal from a line of four), the lead dancers slide apart sideways,
   *  while the trailing dancers step forward between them.
   *
   * 4. (C-1) If specific dancers are directed to Spread (e.g., Everyone Trade, Boys
   *  Spread), they slide away from the adjacent dancer one position. The inactive
   *  dancers do not move.
   */

  @override
  void performCall(CallContext ctx) {
    //  Is this spread from waves, tandem, actives?
    Action spreader;
    ctx.analyze();
    if (ctx.actives.length == ctx.dancers.length / 2) {
      if (CallContext.fromContext(ctx,dancers:ctx.actives).isLines())
        //  Case 2: Active dancers in line or wave spread among themselves
        spreader = _Case2();
      else if (ctx.actives.every((d) => d.data.partner?.isActive ?? false) &&
          ctx.dancers.every((d) =>
              d.isActive || (ctx.dancerInFront(d)?.isActive ?? false)))
        //  Case 1: Active dancers spread and let in the others
        spreader = _Case1();
      else
        spreader = _Case4();
    } else if (ctx.isLines() || ctx.isTidal()) {
      spreader = _Case2();
    } else if (ctx.dancers.every((d) => ctx.isInTandem(d))) {
      spreader = _Case3();
    } else
      throw CallError('Unable to find case for Spread');
    level = spreader.level;
    spreader.performCall(ctx);
  }

}

class _Case1 extends Action {
  _Case1() : super('and Spread');

  @override
  void performCall(CallContext ctx) {
    ctx.extendPaths();
    for (var d in ctx.dancers) {
      if (d.isActive) {
        //  Active dancers spread apart
        Path m;
        if (ctx.dancersToRight(d).isEmpty)
          m = DodgeRight;
        else if (ctx.dancersToLeft(d).isEmpty)
          m = DodgeLeft;
        else
          throw CallError('Cannot figure out how to Spread');
        d.path += m.changeBeats(2.0);
      } else {
        //  Inactive dancers move forward
        var d2 = ctx.dancerInFront(d);
        if (d2 != null) {
          var dist = min(d.distanceTo(d2),2.0);
          d.path += Forward.scale(dist,1.0).changeBeats(2.0);
        }
      }
    }
  }

}

class _Case2 extends Action {
  _Case2() : super('and Spread');

  @override
  void performCall(CallContext ctx) {
    ctx.extendPaths();
    super.performCall(ctx);
  }

  @override
  Path performOne(DancerModel d, CallContext ctx) {
    //  This is for waves only
    //  Compute offset for spread
    var v = Vector();
    if (d.data.belle)
      v = Vector(0.0, ctx.dancerToLeft(d)!.distanceTo(d));
    else if (d.data.beau)
      v = Vector(0.0, -ctx.dancerToRight(d)!.distanceTo(d));
    //  Pop off the last movement and shift it by that offset
    var m = (d.path.movelist.isNotEmpty)
        ? d.path.pop()
        : Stand.clone().pop();
    var tx = m.rotate();
    v = tx * v;
    d.path += m.skew(v.x,v.y).useHands(Hands.NOHANDS);
    //  Return dummy path
    return Path();
  }
}

class _Case3 extends _Case1 {

  @override
  void performCall(CallContext ctx) {
    //  Must be tandem couples
    if (ctx.dancers.any((d) => !ctx.isInTandem(d) || !ctx.isInCouple(d)))
      throw CallError('Invalid formation for Spread');
    //  Mark the leaders as active
    for (var d in ctx.dancers)
      d.data.active = d.data.leader;
    //  And forward to Case1, actives spread
    super.performCall(ctx);
  }

}

class _Case4 extends Action {

  @override
  var level = LevelData.C1;
  _Case4() : super('and Spread');

  @override
  void performCall(CallContext ctx) {
    ctx.extendPaths();
    for (var d in ctx.dancers) {
      if (d.isActive) {
        //  Active dancers spread apart
        Path m;
        if (ctx.dancersToRight(d).isEmpty)
          m = DodgeRight;
        else if (ctx.dancersToLeft(d).isEmpty)
          m = DodgeLeft;
        else
          throw CallError('Cannot figure out how to Spread');
        d.path += m.changeBeats(2.0);
      }
      //  Inactive dancers do not move
    }
  }

}
