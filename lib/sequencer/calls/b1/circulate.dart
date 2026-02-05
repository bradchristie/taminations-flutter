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

class Circulate extends Action {

  @override var help = 'You can just enter Circulate for All 8 Circulate,'
      ' Column Circulate, Couples Circulate, and, for 4 dancers, Box Circulate.';
  @override var helplink = 'b1/circulate';

  Circulate(super.name);

  @override
  void performCall(CallContext ctx) {
    //  If just 4 dancers, try Box Circulate
    if (ctx.actives.length == 4) {
      //  As a convenience, if diamond do a diamond circulate
      ctx.subContext(ctx.actives, (ctx2) {
        if (ctx2.isDiamond()) {
          ctx2.applyCalls('Diamond Circulate');
          level = LevelData.PLUS;
        }
        else if (ctx.actives.every((d) => d.data.center)) {
          try {
            ctx2.applyCalls('Box Circulate');
          } on CallError {
            //  That didn't work, try to find a circulate path for each dancer
            super.performCall(ctx);
          }
        } else {
          //  Dancers not in center, go on and try to calculate the circulate
          super.performCall(ctx);
        }
      });
    }

    else if (ctx.actives.length != 8)
      super.performCall(ctx);

    //  All 8 dancers active
    else if (name == 'Box Circulate')
      throw CallError('Cannot do Box Circulate with 8 dancers');
    //  Try various forms of Circulate
    else if (ctx.isThar())
      ctx.applyCalls('Inside Diamond Circulate While Outside Diamond Circulate');
    else if (ctx.isTwoFacedLines())
      ctx.applyAnimatedCall('Couples Circulate' );
    else if (ctx.isLines())
      ctx.applyAnimatedCall('All 8 Circulate' );
    else if (ctx.matchFormations(CallContext.fromFormation(
        Formation('Column RH GBGB'))) != null)
      ctx.applyAnimatedCall('Column Circulate' );
    else if (ctx.matchFormations(CallContext.fromFormation(
        Formation('Column LH GBGB'))) != null)
      ctx.applyAnimatedCall('Column Circulate' );
    else if (ctx.actives.length == 6 && ctx.isColumns(3))
      ctx.applyAnimatedCall('Column Circulate' );
    //  If none of these, but t-bones or 6 dancers, calculate paths
    else if (ctx.actives.length == 6 || ctx.isTBone()) {
      super.performCall(ctx);
      if (ctx.isCollision())
        throw CallError('Cannot handle dancer collision here.' );
    }
    else
      throw CallError('Cannot figure out how to Circulate.' );
  }

  @override
  Path performOne(Dancer d, CallContext ctx) {

    //  The 'easier'  case - 4 dancer in any type of box
    if (ctx.actives.length == 4) {
      if (d.data.leader) {
        //  Find another active dancer in the same line and move to that spot
        var d2 = ctx.dancerClosest(d, (dx) =>
        dx.data.active && (dx.isRightOf(d) || dx.isLeftOf(d)));
        if (d2 != null) {
          var dist = d.distanceTo(d2);
          //  Pass right shoulders if crossing another dancer
          var xScale = (d2.data.leader && d2.isRightOf(d)) ? 1 + dist/3 : dist/3;
          return (d2.isRightOf(d) ? RunRight  : RunLeft)
              .scale(xScale, dist/2)
              .changeBeats(4.0);
        }
      } else if (d.data.trailer) {
        //  Looking at active dancer?  Then take its place
        var d2 = ctx.dancerInFront(d);
        if (d2 != null && d2.data.active) {
          var dist = d.distanceTo(d2);
          if (d2.data.leader)
            return Forward
                .scale(dist,1)
                .changeBeats(4);
          else  //  Facing dancers - pass right shoulders
            return ExtendLeft
                  .scale(dist/2,0.5)
                  .changeBeats(2) +
                ExtendRight
                  .scale(dist/2,0.5)
                  .changeBeats(2);
        }
      }
    }

    //  Next case - 6 dancers not in columns
    else if (ctx.actives.length == 6) {
      //  If there is a dancer directly or diagonally in front, go there
      var d2 = ctx.dancerClosest(d, (it) =>
          it.data.active && d.angleToDancer(it).abs().isLessThan(pi/2)
      );
      if (d2 != null) {
        var v = d.vectorToDancer(d2);
        if (d.angleFacing.isAround(d2.angleFacing)) {
          return ExtendLeft
              .changeBeats(3)
              .scale(v.x,v.y);
        } else if (d.angleFacing.isAround(d2.angleFacing+pi/2)) {
          if (v.y.isAbout(0))
            return QuarterRight.changeBeats(3).skew(v.x,0);
          else
            return LeadRight
                .changeBeats(3.0)
                .scale(v.x, -v.y);
        } else if (d.angleFacing.isAround(d2.angleFacing-pi/2)) {
          if (v.y.isAbout(0))
            return QuarterLeft.changeBeats(3).skew(v.x,0);
          else
            return LeadLeft
                .changeBeats(3.0)
                .scale(v.x, v.y);
        } else
          throw CallError('Unable to calculate Circulate path.' );
      } else {
        //  Otherwise look for a dancer to the side
        final d3 = ctx.dancerClosest(d, (d2) => d2.isActive && d2.isRightOf(d)) ??
            ctx.dancerClosest(d, (d2) => d2.isActive && d2.isLeftOf(d));
        if (d3 != null) {
          final v = d.vectorToDancer(d3);
          return RunLeft.scale(1.0,v.y/2.0);
        } else
          throw CallError('Unable to calculate Circulate for dancer $d.');
      }
    }

    //  Finally 8 dancers in a t-bone
    else if (ctx.actives.length == 8) {
      //  Column-like dancer
      if (ctx.dancersInFront(d).length + ctx.dancersInBack(d).length == 3) {
        if (ctx.dancersInFront(d).isNotEmpty) {
          if (ctx.dancerFacing(d) != null)
            return ExtendLeft.scale(1.0,0.5).changeBeats(2) +
                   ExtendRight.scale(1.0,0.5).changeBeats(2);
          else
            return Forward_2.changeBeats(4);
        }
        else if (ctx.dancersToLeft(d).length == 1 &&
            ctx.isFacingSameDirection(d, ctx.dancerToLeft(d)!))
          return FlipLeft.changeBeats(4);
        else if (ctx.dancersToLeft(d).length == 1)
          return RunLeft.changeBeats(4);
        else if (ctx.dancersToRight(d).length == 1)
          return RunRight.changeBeats(4);
        else
          throw CallError('Could not calculate Circulate for dancer $d' );
      }
      //  Line-like dancer
      else if (ctx.dancersToLeft(d).length + ctx.dancersToRight(d).length == 3) {
        if (ctx.dancersInFront(d).length == 1) {
          if (ctx.dancerFacing(d) != null)
            return ExtendLeft.scale(1.0,0.5).changeBeats(2) +
                   ExtendRight.scale(1.0,0.5).changeBeats(2);
          else
            return Forward_2.changeBeats(4);
        }
        switch (ctx.dancersToLeft(d).length) {
          case 0:
            var d2 = ctx.dancersToRight(d).last;
            if (ctx.isFacingSameDirection(d,d2))
              return RunRight.scale(3.0,3.0).changeBeats(4.0);
            return RunRight.scale(2.0,3.0).changeBeats(4.0);
          case 1:
            return RunRight.changeBeats(4.0);
          case 2:
            if (ctx.isFacingSameDirection(d,ctx.dancerToLeft(d)!))
              return FlipLeft.changeBeats(4.0);
            return RunLeft.changeBeats(4.0);
          case 3:
            return RunLeft.scale(2.0,3.0).changeBeats(4.0);
          default:
            throw CallError('Could not calculate Circulate for dancer $d' );
        }
      }

    }

    throw CallError('Cannot figure out how dancer $d can Circulate.' );
  }

}