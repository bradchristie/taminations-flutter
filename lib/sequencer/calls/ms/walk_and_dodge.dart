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

  @override var level = LevelData.MS;
  @override var helplink = 'ms/walk_and_dodge';
  WalkAndDodge(String name) : super(name);

  late CallContext walkctx;
  late CallContext dodgectx;

  bool isWalker(Dancer? d) =>
      d != null && walkctx.actives.map((wd) => wd.number).contains(d.number);
  bool isDodger(Dancer? d) =>
      d != null && dodgectx.actives.map((dd) => dd.number).contains(d.number);

  @override
  Future<void> perform(CallContext ctx) async {
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
      if (match == null)
        throw CallError('Error parsing Walk and Dodge');
      walkers = match.group(1)!;
      dodgers = match.group(2)!;
    }
    for (var call in walkers.split('\\s+'.r)) {
      var codedCall = CodedCall.fromName(call);
      if (codedCall == null)
        throw CallError('Error parsing Walk and Dodge');
      await codedCall.performCall(walkctx);
    }
    for (var call in dodgers.split('\\s+'.r)) {
      var codedCall = CodedCall.fromName(call);
      if (codedCall == null)
        throw CallError('Error parsing Walk and Dodge');
      await codedCall.performCall(dodgectx);
    }
    //  If dancer is not in either set then it is inactive
    for (var d in ctx.dancers)
      d.data.active = isWalker(d) || isDodger(d);
    await super.perform(ctx);
  }

  @override
  Path performOne(Dancer d, CallContext ctx) {
    if (isDodger(d)) {
      //  A Dodger.  Figure out which way to dodge.
      final dRight = ctx.dancerToRight(d);
      final dLeft = ctx.dancerToLeft(d);
      String dir;
      if (dRight == null && dLeft == null)
        throw CallError('Dancer $d does not know which way to Dodge');
      else if (dRight == null)
        dir = 'Left';
      else if (dLeft == null)
        dir = 'Right';
      else
        dir = (dRight.location.length > dLeft.location.length) ? 'Right' : 'Left';
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
      if (d2 == null)
        throw CallError('Walker $d must be facing another dancer');
      if (ctx.dancerFacing(d) == d2 && isWalker(d2))
        throw CallError('Walkers ($d and $d2) cannot face each other');
      else {
        var dist = d.distanceTo(d2);
        return TamUtils.getMove('Forward',scale:[dist,1.0].v,beats:3.0);
      }

    } else
      throw CallError('Dancer $d cannot Walk or Dodge');

  }

}