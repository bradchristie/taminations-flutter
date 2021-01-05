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
import '../coded_call.dart';

//  This handles both generic Walk and Dodge
//  and directed (somebody) Walk (somebody else) Dodge

class WalkAndDodge extends ActivesOnlyAction {

  @override
  var level = LevelData.MS;
  WalkAndDodge(String name) : super(name);

  CallContext walkctx;
  CallContext dodgectx;

  bool isWalker(Dancer d) =>
      d != null && walkctx.actives.map((wd) => wd.number).contains(d.number);
  bool isDodger(Dancer d) =>
      d != null && dodgectx.actives.map((dd) => dd.number).contains(d.number);

  @override
  Future<void> perform(CallContext ctx, [int stackIndex = 0]) async {
    //  Figure out who is a walker and who is a dodger.
    //  Save the results in call contexts
    walkctx = CallContext.fromContext(ctx);
    walkctx.analyze();
    dodgectx = CallContext.fromContext(ctx);
    dodgectx.analyze();
    var walkers = 'trailers';
    var dodgers = 'leaders';
    if (name != 'Walk and Dodge') {
      var match = RegExp('(.+) walk(?: and)? (.+) dodge').firstMatch(name.toLowerCase());
      walkers = match.group(1);
      dodgers = match.group(2);
    }
    for (var call in walkers.split('\\s+'.r)) {
      await CodedCall.fromName(call).performCall(walkctx);
    }
    for (var call in dodgers.split('\\s+'.r)) {
      await CodedCall.fromName(call).performCall(dodgectx);
    }
    //  If dancer is not in either set then it is inactive
    for (var d in ctx.dancers)
      d.data.active = isWalker(d) || isDodger(d);
    await super.perform(ctx,stackIndex);
  }

  @override
  Path performOne(Dancer d, CallContext ctx) {
    if (isDodger(d)) {
      //  A Dodger.  Figure out which way to dodge.
      String dir;
      if (d.data.beau && isWalker(ctx.dancerToRight(d)))
        dir = 'Right';
      else if (d.data.belle && isWalker(ctx.dancerToLeft(d)))
        dir = 'Left';
      else if (isWalker(ctx.dancerToRight(d)))
        dir = 'Right';
      else if (isWalker(ctx.dancerToLeft(d)))
        dir = 'Left';
      else if (d.data.beau)
        dir = 'Right';
      else if (d.data.belle)
        dir = 'Left';
      else
        throw CallError('Dancer $d does not know which way to Dodge');
      if (ctx.isInCouple(d) && isDodger(d.data.partner))
        throw CallError('Dodgers would cross each other');
      var d2 = (dir == 'Right')
          ? ctx.dancerToRight(d)
          : ctx.dancerToLeft(d);
      if (d2 != null) {
        var dist = d.distanceTo(d2);
        return TamUtils.getMove('Dodge $dir', scale: [1.0, dist / 2.0].v);
      }
      throw CallError('Unable to calculate Walk and Dodge for dancer $d');

    } else if (isWalker(d)) {
      //  A Walker.  Check formation and distance.
      var d2 = ctx.dancerInFront(d);
      if (d2 == null || (ctx.dancerFacing(d) == d2 && isWalker(d2)))
        throw CallError('Walkers cannot face each other');
      else {
        var dist = d.distanceTo(d2);
        return TamUtils.getMove('Forward',scale:[dist,1.0].v,beats:3.0);
      }

    } else
      throw CallError('Dancer $d cannot Walk or Dodge');

  }

}