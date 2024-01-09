/*
 * *     Copyright 2024 Brad Christie
 *
 *     This file is part of Taminations.
 *
 *     Taminations is free software: you can redistribute it and/or modify
 *     it under the terms of the GNU Affero General Public License as published
 *     by the Free Software Foundation, either version 3 of the License, or
 *     (at your option) any later version.
 *
 *     Taminations is distributed in the hope that it will be useful,
 *     but WITHOUT ANY WARRANTY; without even the implied warranty of
 *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *     GNU Affero General Public License for more details.
 *
 *     You should have received a copy of the GNU Affero General Public License
 *     along with Taminations.  If not, see <http://www.gnu.org/licenses/>.
 */

import '../../../moves.dart';
import '../common.dart';

class Substitute extends SplitCall {

  @override var level = LevelData.C1;
  @override var helplink = 'c1/substitute';
  @override var help = '''For 2 dancers Substitute over 2 other dancers,
  specify the active dancers if they are not the leaders.
  For 2 dancers Substitute over 1 other dancer, specify the triangle.
  Be sure to add Lateral if any of the active dancers ("archers") are moving sideways.
  ''';
  Substitute(String name) : super(name);
  //  archers needs to be static because it's a separate instance
  //  of Subsitute that uses it (yes a bit of a hack)
  static var archers = <DancerModel>[];
  static var lateralFound = false;

  @override
  void perform(CallContext ctx) {
    lateralFound = false;
    if (ctx.dancers.length <= 4) {
      super.perform(ctx);
    }
    else {
      if (ctx.actives.length*2 == ctx.dancers.length) {
        //  Directed Substitute - all dancers are involved, actives are arching
        archers = ctx.actives;
        ctx.allActive();
      } else if (ctx.actives.length == ctx.dancers.length) {
        //  Default - leaders are archers
        archers = ctx.dancers.where((d) => d.data.leader).toList();
        if (archers.length*2 != ctx.dancers.length)
          throw CallError('Cannot figure out who is arching for Substitute');
      }
      //  If none of the obove, we will assume that triangles have been selected
      //  and the base of the triangle is arching over the point.
      //  Now defer to SplitCall will now break the formation into groups of 3 or 4
      ctx.subContext(ctx.actives, (ctx2) {
        super.perform(ctx2);
      });
    }
    if (lateralFound && !name.contains('Lateral'))
      throw CallError('This is a Lateral Substitute');
    else if (!lateralFound && name.contains('Lateral'))
      throw CallError('Not a Lateral Substitute');
    else if (lateralFound)
      level = LevelData.C2;
  }

  @override
  Path performOne(DancerModel d, CallContext ctx) {
    //  Squares
    if (ctx.dancers.length == 4) {
      var (fx,fy) = (1.0,1.0);
      var (dx,dy) = (0.0,0.0);
      var isArcher = archers.contains(d);
      var (dfront,dback,dleft,dright) = (
        ctx.dancerInFront(d),
        ctx.dancerInBack(d),
        ctx.dancerToLeft(d),
        ctx.dancerToRight(d)
      );
      if (dfront!=null && (isArcher ^ archers.contains(dfront))) {
        dx = d.distanceTo(dfront)/2;
        fy = -1.0;
        if (dright != null)
          dy = isArcher ? 0.5 : -0.5;
        else if (dleft != null)
          dy = isArcher ? -0.5 : 0.5;
        else
          throw FormationNotFoundError(name);
      }
      else if (dback!=null && (isArcher ^ archers.contains(dback))) {
        dx = -d.distanceTo(dback)/2;
        fy = -1.0;
        if (dright != null)
          dy = isArcher ? 0.5 : -0.5;
        else if (dleft != null)
          dy = isArcher ? -0.5 : 0.5;
        else
          throw FormationNotFoundError(name);
      }
      else if (dright != null && (isArcher ^ archers.contains(dright))) {
        dy = -d.distanceTo(dright)/2;
        fx = -1.0;
        if (isArcher)
          lateralFound = true;
        if (dfront != null)
          dx = isArcher ? -0.5 : 0.5;
        else if (dback != null)
          dx = isArcher ? 0.5 : -0.5;
        else
          throw FormationNotFoundError(name);
      }
      else if (dleft != null && (isArcher ^ archers.contains(dleft))) {
        dy = d.distanceTo(dleft)/2;
        fx = -1.0;
        if (isArcher)
          lateralFound = true;
        if (dfront != null)
          dx = isArcher ? -0.5 : 0.5;
        else if (dback != null)
          dx = isArcher ? 0.5 : -0.5;
        else
          throw FormationNotFoundError(name);
      }
      else
        throw FormationNotFoundError(name);
      return Stand.skew(dx,dy) + Stand.skew(dx*fx,dy*fy);

      //  Triangles
    } else if (ctx.dancers.length == 3) {
      //  Find the point of the triangle
      var dpoint = ctx.dancers.where((d) =>
          ctx.dancerInFront(d) == null &&
          ctx.dancerInBack(d) == null &&
          ctx.dancerToRight(d) == null &&
          ctx.dancerToLeft(d) == null).first;
      var otherDancers = ctx.dancers.copy()..remove(dpoint);
      //  Compute vector that the dancers move
      var loc = (otherDancers[0].location + otherDancers[1].location)/2;
      var shift = (loc - dpoint.location).rotate(-d.angleFacing);
      if (d != dpoint && !shift.y.isAbout(0))
        lateralFound = true;
      //  Point of triangle, move to center point of other two
      if (d == dpoint)
        return Stand.skew(shift.x,shift.y);
      //  And opposite move for the other two
      else
        return Stand.skew(-shift.x,-shift.y);
    }

    else
      throw FormationNotFoundError(name);
  }

}