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
import '../xml_call.dart';

class Stretch extends Action {

  @override final level = LevelData.C1;
  Stretch(String name) : super(name);

  @override
  Future<void> perform(CallContext ctx) async {

    final stackIndex = ctx.callstack.indexOf(this);
    final fracctx = CallContext.fromContext(ctx);
    //  Look for the call to stretch
    //  Must be a subsequent action on the stack
    var found = false;
    var call = ctx.callstack[stackIndex];
    while (!found && stackIndex+1 < ctx.callstack.length) {
      call = ctx.callstack.removeAt(stackIndex+1);
      found = call is Action || call is XMLCall;
      fracctx.callstack.add(call);
    }
    if (!found)
      throw CallError('Not able to find call for fraction $name');

    //  First perform the call normally
    await fracctx.performCall();

    //  Now shift the new centers to their stretch positions
    fracctx.animateToEnd();
    fracctx.analyze();
    if (fracctx.is2x4()) {
      for (final d in fracctx.dancers.where((d) => d.data.center)) {
        Vector shift;
        if (fracctx.dancerInFront(d) ?.data.end ?? false) {
          final d2 = fracctx.dancerInBack(d).throwIfNull(
              CallError('Unable to calculate Stretch'));
          shift = Vector(-d.distanceTo(d2), 0.0);
        } else if (fracctx.dancerInBack(d) ?.data.end ?? false) {
          final d2 = fracctx.dancerInFront(d).throwIfNull(
              CallError('Unable to calculate Stretch'));
          shift = Vector(d.distanceTo(d2), 0.0);
        } else if (fracctx.dancerToLeft(d) ?.data.end ?? false) {
          final d2 = fracctx.dancerToRight(d).throwIfNull(
              CallError('Unable to calculate Stretch'));
          shift = Vector(0.0, -d.distanceTo(d2));
        } else if (fracctx.dancerToRight(d) ?.data.end ?? false) {
          final d2 = fracctx.dancerToLeft(d).throwIfNull(
              CallError('Unable to calculate Stretch'));
          shift = Vector(0.0, d.distanceTo(d2));
        } else
          throw CallError('Unable to find direction to Stretch');
        d.path.skewFromEnd(shift.x, shift.y);
      }
    } else if (fracctx.isOnAxis()) {
      for (final d in fracctx.center(4)) {
        final dancerList =
        [ fracctx.dancersInFront(d),
          fracctx.dancersInBack(d),
          fracctx.dancersToLeft(d),
          fracctx.dancersToRight(d) ]
            .reduce((list1, list2) => list1.length > list2.length ? list1 : list2);
        final shift = d.vectorToDancer(dancerList[1]);
        d.path.skewFromEnd(shift.x,shift.y);
      }
    } else
      throw CallError('Unable to calculate Stretch');

    fracctx.appendToSource();

  }

}