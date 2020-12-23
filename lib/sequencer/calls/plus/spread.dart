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

class Spread extends Action {

  @override
  var level = LevelData.PLUS;
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
   */

  @override
  Future<void> perform(CallContext ctx, [int stackIndex = 0]) async {
    //  Is this spread from waves, tandem, actives?
    Action spreader;
    if (ctx.actives.length == ctx.dancers.length / 2) {
      spreader = CallContext.fromContext(ctx,dancers:ctx.actives).isLines()
          ? _Case2()   //  Case 2: Active dancers in line or wave spread among themselves
          : _Case1();  //  Case 1: Active dancers spread and let in the others
    } else if (ctx.isLines() || ctx.isTidal()) {
      spreader = _Case2();
    } else if (ctx.dancers.every((d) => ctx.isInTandem(d))) {
      spreader = _Case3();
    }
    if (spreader != null)
      await spreader.perform(ctx);
    else
      throw CallError('Can not figure out how to Spread');

  }

}

class _Case1 extends Action {
  _Case1() : super('and Spread');

  @override
  Future<void> perform(CallContext ctx, [int stackIndex = 0]) async {
    ctx.extendPaths();
    for (var d in ctx.dancers) {
      if (d.isActive) {
        //  Active dancers sxpread apart
        String m;
        if (ctx.dancersToRight(d).isEmpty)
          m = 'Dodge Right';
        else if (ctx.dancersToLeft(d).isEmpty)
          m = 'Dodge Left';
        else
          throw CallError('Can not figure out how to Spread');
        d.path += TamUtils.getMove(m,beats: 2.0);
      } else {
        //  Inactive dancers move forward
        var d2 = ctx.dancerInFront(d);
        if (d2 != null) {
          var dist = d.distanceTo(d2);
          d.path += TamUtils.getMove('Forward',scale:[dist,1.0].v,beats: 2.0);
        }
      }
    }
  }

}

class _Case2 extends Action {
  _Case2() : super('and Spread');

  @override
  Path performOne(Dancer d, CallContext ctx) {
    var p = d.path;
    //  This is for waves only
    //  Compute offset for spread
    var v = Vector();
    if (d.data.belle)
      v = Vector(0.0, ctx.dancerToLeft(d).distanceTo(d));
    else if (d.data.beau)
      v = Vector(0.0, -ctx.dancerToRight(d).distanceTo(d));
    //  Pop off the last movement and shift it by that offset
    var m = (p.movelist.isNotEmpty)
        ? p.pop()
        : TamUtils.getMove('Stand').pop();
    var tx = m.rotate();
    v = tx * v;
    p.add(m.skew(v.x,v.y).useHands(Hands.NOHANDS));
    //  Return dummy path
    return Path();
  }
}

class _Case3 extends _Case1 {

  @override
  Future<void> perform(CallContext ctx, [int stackIndex = 0]) async {
    //  Mark the leaders as active
    for (var d in ctx.dancers)
      d.data.active = d.data.leader;
    //  And forward to Case1, actives spread
    await super.perform(ctx,stackIndex);
  }

}