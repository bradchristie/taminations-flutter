/*

  Taminations Square Dance Animations
  Copyright (C) 2023 Brad Christie

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

class Circulate extends Action {

  @override var help = 'You can just enter Circulate for All 8 Circulate,'
      ' Column Circulate, Couples Circulate, and, for 4 dancers, Box Circulate.';
  @override var helplink = 'b1/circulate';

  Circulate() : super('Circulate' );

  @override
  void perform(CallContext ctx) {
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
            super.perform(ctx);
          }
        } else {
          //  Dancers not in center, go on and try to calculate the circulate
          super.perform(ctx);
        }
      });
    }

    //  All 8 dancers active
    //  Try various forms of Circulate
    else if (ctx.isThar())
      ctx.applyCalls('Inside Diamond Circulate While Outside Diamond Circulate');
    else if (ctx.isTwoFacedLines())
      ctx.applyCalls('Couples Circulate' );
    else if (ctx.isLines())
      ctx.applyCalls('All 8 Circulate' );
    else if (ctx.isColumns())
      ctx.applyCalls('Column Circulate' );
    else if (ctx.actives.length == 6 && ctx.isColumns(3))
      ctx.applyCalls('Column Circulate' );
    //  If none of these, but t-bones or 6 dancers, calculate paths
    else if (ctx.actives.length == 6 || ctx.isTBone()) {
      super.perform(ctx);
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
          return TamUtils.getMove(d2.isRightOf(d) ? 'Run Right'  : 'Run Left' )
              .scale(xScale, dist/2)
              .changeBeats(4.0);
        }
      } else if (d.data.trailer) {
        //  Looking at active dancer?  Then take its place
        var d2 = ctx.dancerInFront(d);
        if (d2 != null && d2.data.active) {
          var dist = d.distanceTo(d2);
          if (d2.data.leader)
            return TamUtils.getMove('Forward' )
                .scale(dist,1)
                .changeBeats(4);
          else  //  Facing dancers - pass right shoulders
            return TamUtils.getMove('Extend Left' )
                  .scale(dist/2,0.5)
                  .changeBeats(2) +
                TamUtils.getMove('Extend Right' )
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
        if (d.angleFacing.isAround(d2.angleFacing))
          return TamUtils.getMove('Extend Left' )
              .changeBeats(3)
              .scale(v.x,v.y);
        else if (d.angleFacing.isAround(d2.angleFacing+pi/2))
          return TamUtils.getMove('Lead Left' )
            .changeBeats(3.0)
            .scale(v.x,v.y);
        else if (d.angleFacing.isAround(d2.angleFacing-pi/2))
          return TamUtils.getMove('Lead Right' )
              .changeBeats(3.0)
              .scale(v.x,-v.y);
        else
          throw CallError('Unable to calculate Circulate path.' );
      } else {
        //  Otherwise look for a dancer to the side
        final d3 = ctx.dancerClosest(d, (d2) => d2.isActive && d2.isRightOf(d)) ??
            ctx.dancerClosest(d, (d2) => d2.isActive && d2.isLeftOf(d));
        if (d3 != null) {
          final v = d.vectorToDancer(d3);
          return TamUtils.getMove('Run Left',scale: [1.0,v.y/2.0].v);
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
            return TamUtils.getMove('Extend Left' ).scale(1.0,0.5).changeBeats(2) +
                   TamUtils.getMove('Extend Right' ).scale(1.0,0.5).changeBeats(2);
          else
            return TamUtils.getMove('Forward 2' ).changeBeats(4);
        }
        else if (ctx.dancersToLeft(d).length == 1 &&
            ctx.isFacingSameDirection(d, ctx.dancerToLeft(d)!))
          return TamUtils.getMove('Flip Left' ).changeBeats(4);
        else if (ctx.dancersToLeft(d).length == 1)
          return TamUtils.getMove('Run Left' ).changeBeats(4);
        else if (ctx.dancersToRight(d).length == 1)
          return TamUtils.getMove('Run Right' ).changeBeats(4);
        else
          throw CallError('Could not calculate Circulate for dancer $d' );
      }
      //  Line-like dancer
      else if (ctx.dancersToLeft(d).length + ctx.dancersToRight(d).length == 3) {
        if (ctx.dancersInFront(d).length == 1) {
          if (ctx.dancerFacing(d) != null)
            return TamUtils.getMove('Extend Left' ).scale(1.0,0.5).changeBeats(2) +
                   TamUtils.getMove('Extend Right' ).scale(1.0,0.5).changeBeats(2);
          else
            return TamUtils.getMove('Forward 2' ).changeBeats(4);
        }
        switch (ctx.dancersToLeft(d).length) {
          case 0:
            var d2 = ctx.dancersToRight(d).last;
            if (ctx.isFacingSameDirection(d,d2))
              return TamUtils.getMove('Run Right' ).scale(3.0,3.0).changeBeats(4.0);
            return TamUtils.getMove('Run Right' ).scale(2.0,3.0).changeBeats(4.0);
          case 1:
            return TamUtils.getMove('Run Right' ).changeBeats(4.0);
          case 2:
            if (ctx.isFacingSameDirection(d,ctx.dancerToLeft(d)!))
              return TamUtils.getMove('Flip Left' ).changeBeats(4.0);
            return TamUtils.getMove('Run Left' ).changeBeats(4.0);
          case 3:
            return TamUtils.getMove('Run Left' ).scale(2.0,3.0).changeBeats(4.0);
          default:
            throw CallError('Could not calculate Circulate for dancer $d' );
        }
      }

    }

    throw CallError('Cannot figure out how dancer $d can Circulate.' );
  }

}