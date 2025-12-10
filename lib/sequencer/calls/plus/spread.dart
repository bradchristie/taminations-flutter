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

  Spread(super.name);


  @override
  void performCall(CallContext ctx) {
    //  Is this spread from waves, tandem, actives?
    Action spreader;
    //  As a convenience check that we are not trying to Spread from CDPT
    var cdpt = CallContext.fromFormation(Formation('Completed Double Pass Thru'));
    if (ctx.matchFormations(cdpt) != null)
      throw CallError('Do not Spread from this formation - use Centers In instead');
    if (ctx.actives.length < ctx.dancers.length) {
      //  If the centers are told to spread, could be two cases
      if (ctx.actives.every((d) => d.data.center)) {
        //  Maybe the centers are in a line or wave, and spread among themselves
        if (CallContext.fromDancers(ctx.actives).isLines())
          spreader = _SpreadFromLines();
        //  Or it's just a hint for them to slide out as the ends move in
        //  e.g. Heads Slide Thru and Spread
        else
          spreader = _SpreadFromBoxes();
      }
      //  Not the centers told to spread - must be C-1 spread
      else
        spreader = _Case4();
    }
    else if (ctx.isLines() || ctx.isTidal())
      //  Lines - Centers slide out, ends slide in
      spreader = _SpreadFromLines();
    else if (ctx.isColumns())
      //  Boxes - Centers slide out, ends move in
      spreader = _SpreadFromBoxes();
    else
      throw CallError('Unable to find case for Spread');
    level = spreader.level;
    spreader.performCall(ctx);
  }

}

class _SpreadFromBoxes extends Action {
  _SpreadFromBoxes() : super('and Spread');

  @override
  void performCall(CallContext ctx) {
    ctx.extendPaths();
    for (var d in ctx.dancers) {
      if (d.data.center) {
        //  Center dancers spread apart
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
        else
          throw CallError('Unable to Spread from this formation');
      }
    }
  }

}

class _SpreadFromLines extends Action {
  _SpreadFromLines() : super('and Spread');

  @override
  void performCall(CallContext ctx) {
    ctx.extendPaths();
    super.performCall(ctx);
  }

  @override
  Path performOne(DancerModel d, CallContext ctx) {
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
