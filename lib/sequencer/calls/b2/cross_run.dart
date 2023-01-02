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

class CrossRun extends ActivesOnlyAction {

  @override var level = LevelData.B2;
  @override var help = 'Cross Run dancers must be either all centers'
      ' or all ends of general lines.';
  @override var helplink = 'b2/run';
  CrossRun(String name) : super(name);

  @override
  void perform(CallContext ctx) {
    var spec = name.replaceFirst('Cross\\s*Run'.ri , '' );
    if (spec.isBlank)
      throw CallError('Who is going to Cross Run?');
    var specCtx = CallContext.fromContext(ctx);
    specCtx.applySpecifier(spec);
    var runners = ctx.actives.where((d) => specCtx.actives.contains(d));
    var dodgers = ctx.actives.where((d) => !runners.contains(d));
    if (runners.length > dodgers.length)
      throw CallError('Not valid arrangement for Cross Run');
    //  Runners must be all ends or all centers
    //  In a 1/4 tag, center 4 are all centers, and the ends of that wave
    //  are also ends, which makes this check a little trickier
    var endsOnly = runners.where((d) => d.data.end && !d.data.center);
    var centersOnly = runners.where((d) => d.data.center && !d.data.end);
    if (endsOnly.isNotEmpty && centersOnly.isNotEmpty)
      throw CallError('Cross Run dancers must be all ends or all centers');
    var realDodgers = <Dancer>[];
    for (var d in runners) {
      var dright = ctx.dancersToRight(d);
      var dleft = ctx.dancersToLeft(d);
      var numright = dright.length;
      var numleft = dleft.length;
      //  Runners must be in general lines of 4 or 8
      if (numright+numleft != 3 && numright+numleft != 7)
        throw CallError('Dancers must be in waves of 4 or 8');
      if (numright == 2 || numright == 3 || numright == 6 || numright == 7) {
        final d2 = dright[1];
        realDodgers.add(d2);
        final dist = d.distanceTo(d2);
        //  If centers are running and facing same direction,
        //  dancer on right goes in front (half-sashay action)
        if (d.data.center && ctx.dancerToRight(d)!.angleFacing.isAround(d.angleFacing)) {
          d.path =
              TamUtils.getMove('Dodge Right',scale:[1.0,0.5].v,beats: 1.0) +
              TamUtils.getMove('Run Right',scale:[1.0, dist/2].v,skew:[0.0,1.0].v);
        } else {
          //  Pass right shoulders
          var scaleX = 1.0;
          if (d.data.end && numright > 2 &&
              dright[2].angleFacing.isAround(d.angleFacing))
            scaleX = 2.0;
          d.path = TamUtils.getMove('Run Right', scale: [scaleX, dist / 2].v);
        }
      }
      else if (numleft == 2 || numleft == 3 || numleft == 6 || numleft == 7) {
        final d2 = dleft[1];
        realDodgers.add(d2);
        final dist = d.distanceTo(d2);
        d.path = TamUtils.getMove('Run Left',scale:[1.0,dist/2].v);
      }
      else
        throw CallError('Error calculating Cross Run');
    }

    for (var d in realDodgers) {
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
        throw CallError('Unable to calculate Cross Run for dancer $d');
    }

  }

}