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

import '../../../moves.dart';
import '../common.dart';

class CrossConcentric extends Action {

  @override final level = LevelData.C2;
  @override var helplink = 'c2/cross_concentric_concept';

  CrossConcentric(super.name);

  @override
  void performCall(CallContext ctx) {
    var startsFromLines = ctx.isLines();
    var startsFromColumns = ctx.isColumns();
    var beatsToWait = 0.0;

    //  Find major axis in case we need it later
    var maxX = ctx.dancers.maxOf((d) => d.location.x.abs());
    var maxY = ctx.dancers.maxOf((d) => d.location.y.abs());
    var isMajorX = maxX > maxY;

    var actionctx = ctx.nextActionContext(this)
        ?? thrower(CallError('Not able to find call for Cross Concentric'))!;
    //  Remember the outer 4, we will work with them later
    var outer4 = actionctx.outer(4);
    //  First the center 4 do the call
    actionctx.subContext(actionctx.center(4), (innerctx) {
      innerctx.callstack = actionctx.callstack.copy();
      innerctx.performCall();
      beatsToWait = innerctx.maxBeats();

      //  Now the center 4 need to move out
      //  If they are on an axis they just moveconc along that
      if (innerctx.dancers.every((d) => d.isOnAxis)) {
        for (var d in innerctx.dancers) {
          var a = d.angleToOrigin;
          if (a.isAround(pi))
            d.path += Forward_2;
          else if (a.isAround(0))
            d.path += Back_2;
          else if (a.isAround(pi/2))
            d.path += DodgeRight;
          else if (a.isAround(-pi/2))
            d.path += DodgeLeft;
        }
      }

      //  If they are in a box then we need to use one of the rules
      //  lines to lines and columns to columns, or
      //  Major axis is rotated
      else if (innerctx.isBox()) {
        for (var d in innerctx.dancers) {
          if (startsFromLines)
            //  Lines to Lines
            d.path += d.isCenterLeft ? DodgeRight : DodgeLeft;
          else if (startsFromColumns)
            //  Columns to Columns
            d.path += d.isFacingOut ? Forward_2 : Back_2;
          else {
            //  Rotate major axis
            if (d.isFacingX ^ isMajorX)
              d.path += d.isFacingOut ? Forward_2 : Back_2;
            else
              d.path += d.isCenterLeft ? DodgeRight : DodgeLeft;
          }
        }
      }

      //  If neither of those then we don't know what to do
      else
        throw CallError('Unable to calculate Cross Concentric call');

    });

    //  Now the outside 4 move into the center and do the call
    actionctx.subContext(outer4, (outerctx) {
      //  First wait for the centers to do the call
      for (var d in outerctx.dancers) {
        d.path += Stand.changeBeats(beatsToWait);
        //  Then move into the center (as the centers move out)
        var a = d.angleToOrigin;
        if (a.abs() < pi / 4)
          d.path += Forward_2;
        else if (a.abs() > 3*pi/4)
          d.path += Back_2;
        else if (a > 0)
          d.path += DodgeLeft;
        else
          d.path += DodgeRight;
      }
      //  Finally do the call
      //  Has to be in a subcontext otherwise it
      //  zaps what we have just done
      outerctx.subContext(outerctx.dancers,(ctx2) {
        ctx2.callstack = actionctx.callstack.copy();
        ctx2.performCall();
      });
    });

    //  Both outerctx and innerctx have been applied to actionctx
    //  But we need to push them up to the ctx passed in
    actionctx.appendToSource();

  }

}