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

class CrossRun extends ActivesOnlyAction {

  @override
  var level = LevelData.B2;

  CrossRun(String name) : super(name);

  /*
  New algorithm -
  Accept specifier as part of call so active dancers include dodgers
  Parse specifier and apply to context to get runners
  For each runner
    Find active dancer 2 dancers away it can run to
  For each dodger
      Find a direction they can move to a runner's spot
        I don't think there can be more than one
        in a symmetric formation
      Dodge or move forward/back to that spot
   */

  @override
  Future<void> perform(CallContext ctx, [int stackIndex=0]) async {
    //  Get runners and dodgers
    var spec = name.replaceFirst('Cross Run' , '' );
    var specCtx = CallContext.fromContext(ctx);
    await specCtx.applySpecifier(spec);
    var runners = ctx.actives.where((d) => specCtx.actives.contains(d));
    var dodgers = ctx.actives.where((d) => !runners.contains(d));
    //  Loop through runners and figure out where they are going
    for (var d in runners) {
      //  Find active dancer 2 dancers away it can run to
      var dright = ctx.dancersToRight(d).getOrNull(1);
      var dleft = ctx.dancersToLeft(d).getOrNull(1);
      var dir = '' ;
      if (dright?.isNotActive ?? true)
        dir = 'Left' ;
      else if (dleft?.isNotActive ?? true)
        dir = 'Right' ;
      //  If 2 dancers away both left and right are active,
      //  choose dancer furthest from the center,
      //    as it must be a tidal formation and runners should not cross center
      else if (dright!.location.length > dleft!.location.length) dir = 'Right' ;
      else dir = 'Left' ;
      Dancer? d2 = (dir == 'Right'  ? dright : dleft).throwIfNull(CallError('Dancer $d cannot Cross Run' ));
      var dist = d.distanceTo(d2);
      //  If centers are running and facing same direction,
      //  dancer on right goes in front (half-sashay action)
      if (d.data.center && runners.contains(ctx.dancerToRight(d)) &&
          ctx.dancerToRight(d)!.angleFacing.isAround(d.angleFacing))
        d.path =
            TamUtils.getMove('Dodge Right',scale:[1.0,0.5].v,beats: 1.0) +
            TamUtils.getMove('Run $dir',scale:[1.0, dist/2].v,skew:[0.0,1.0].v);
      //  If ends are running and facing same direction,
      //  dancers pass right shoulders
      else if (d.data.end && dir == 'Right' &&
          ctx.dancersToRight(d)[2].angleFacing.isAround(d.angleFacing))
        d.path = TamUtils.getMove('Run $dir' ,scale:[2.0, dist/2].v);
      else
        d.path = TamUtils.getMove('Run $dir' ,scale:[1.0, dist/2].v);
    }
    //  Loop through each dodger and figure out which way they are moving
    for (var d in dodgers) {
      //  Find a direction they can move to a runner's spot
      //  I don't think there can be more than one
      //  in a symmetric formation
      var dright = ctx.dancerToRight(d);
      var dleft = ctx.dancerToLeft(d);
      var dfront = ctx.dancerInFront(d);
      var dback = ctx.dancerInBack(d);
      //  Dodge or move forward/back to that spot
      if (runners.contains(dright))
        d.path = TamUtils.getMove('Dodge Right' , scale:[1.0,d.distanceTo(dright!)/2].v);
      else if (runners.contains(dleft))
        d.path = TamUtils.getMove('Dodge Left' , scale:[1.0,d.distanceTo(dleft!)/2].v);
      else if (runners.contains(dfront))
        d.path = TamUtils.getMove('Forward' ,
            beats: 3.0,
            scale:[d.distanceTo(dfront!),1.0].v);
      else if (runners.contains(dback))
        d.path = TamUtils.getMove('Back' ,
            beats: 3.0,
            scale:[d.distanceTo(dback!),1.0].v);
      else
        throw CallError('Unable to calculate Cross Run action for dancer $d' );
    }
  }

}