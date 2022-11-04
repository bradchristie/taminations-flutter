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

class Stretch extends Action {

  @override final level = LevelData.C1;
  @override var helplink = 'c1/stretch_concept';
  Stretch(String name) : super(name);

  @override
  void perform(CallContext ctx) {

    final stretchctx = ctx.nextActionContext(this)
        ?? thrower(CallError('Not able to find call for Stretch'))!;

    //  First perform the call normally
    stretchctx.performCall();

    //  Now shift the new centers to their stretch positions
    stretchctx.animateToEnd();
    stretchctx.analyze();
    if (stretchctx.is2x4()) {
      for (final d in stretchctx.dancers.where((d) => d.data.center)) {
        Vector shift;
        if (stretchctx.dancerInFront(d) ?.data.end ?? false) {
          final d2 = stretchctx.dancerInBack(d).throwIfNull(
              CallError('Unable to calculate Stretch'));
          shift = Vector(-d.distanceTo(d2), 0.0);
        } else if (stretchctx.dancerInBack(d) ?.data.end ?? false) {
          final d2 = stretchctx.dancerInFront(d).throwIfNull(
              CallError('Unable to calculate Stretch'));
          shift = Vector(d.distanceTo(d2), 0.0);
        } else if (stretchctx.dancerToLeft(d) ?.data.end ?? false) {
          final d2 = stretchctx.dancerToRight(d).throwIfNull(
              CallError('Unable to calculate Stretch'));
          shift = Vector(0.0, -d.distanceTo(d2));
        } else if (stretchctx.dancerToRight(d) ?.data.end ?? false) {
          final d2 = stretchctx.dancerToLeft(d).throwIfNull(
              CallError('Unable to calculate Stretch'));
          shift = Vector(0.0, d.distanceTo(d2));
        } else
          throw CallError('Unable to find direction to Stretch');
        d.path.skewFromEnd(shift.x, shift.y);
      }
    } else if (stretchctx.isOnAxis()) {
      for (final d in stretchctx.center(4)) {
        final dancerList =
        [ stretchctx.dancersInFront(d),
          stretchctx.dancersInBack(d),
          stretchctx.dancersToLeft(d),
          stretchctx.dancersToRight(d) ]
            .reduce((list1, list2) => list1.length > list2.length ? list1 : list2);
        final shift = d.vectorToDancer(dancerList[1]);
        d.path.skewFromEnd(shift.x,shift.y);
      }
    } else
      throw CallError('Unable to calculate Stretch');

    stretchctx.appendToSource();

  }

}