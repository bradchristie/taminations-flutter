/*

  Taminations Square Dance Animations
  Copyright (C) 2024 Brad Christie

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

class CrossRun extends Action with ActivesOnly {
  @override
  var level = LevelData.B2;
  @override
  var help = 'Cross Run dancers must be either all centers'
      ' or all ends of general lines.';
  @override
  var helplink = 'b2/run';

  CrossRun(super.name);

  @override
  void performCall(CallContext ctx) {
      var runners = ctx.actives;
      var dodgers = ctx.actives.map((d) => d.data.partner);
      if (runners.length > dodgers.length) throw CallError('Not valid arrangement for Cross Run');
      //  Runners must be all ends or all centers
      //  In a 1/4 tag, center 4 are all centers, and the ends of that wave
      //  are also ends, which makes this check a little trickier
      var endsOnly = runners.where((d) => d.data.end && !d.data.center);
      var centersOnly = runners.where((d) => d.data.center && !d.data.end);
      if (endsOnly.isNotEmpty && centersOnly.isNotEmpty)
        throw CallError('Cross Run dancers must be all ends or all centers');
      var realDodgers = runners.map((d) => d.data.partner).nonNulls.toList();
      if (realDodgers.length != runners.length) throw CallError('Error calculating Cross Run');
      for (var d in runners) {
        var dright = ctx.dancersToRight(d);
        var dleft = ctx.dancersToLeft(d);
        var numright = dright.length;
        var runright = dright * runners;
        var runleft = dleft * runners;
        if (runright.length == 1 || runright.length == 3) {
          if (dright.length < 2)
            throw CallError('Unable to Cross Run from here');
          final d2 = dright[1];
          final dist = d.distanceTo(d2);
          //  If centers are running and facing same direction,
          //  dancer on right goes in front (half-sashay action)
          if (d.data.center && ctx.dancerToRight(d)!.angleFacing.isAround(d.angleFacing)) {
            d.path += DodgeRight.scale(1.0, 0.5).changeBeats(1.0) +
                RunRight.scale(1.0, dist / 2).skew(0.0, 1.0);
          } else {
            //  Pass right shoulders
            var scaleX = 1.0;
            if (d.data.end && numright > 2 && dright[2].angleFacing.isAround(d.angleFacing))
              scaleX = 2.0;
            d.path += RunRight.scale(scaleX, dist / 2);
          }
        } else if (runleft.length == 1 || runleft.length ==3) {
          if (dleft.length < 2)
            throw CallError('Unable to Cross Run from here');
          final d2 = dleft[1];
          final dist = d.distanceTo(d2);
          d.path += RunLeft.scale(1.0, dist / 2);
        } else
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
          d.path += DodgeRight.scale(1.0, d.distanceTo(dright!) / 2);
        else if (runners.contains(dleft))
          d.path += DodgeLeft.scale(1.0, d.distanceTo(dleft!) / 2);
        else if (runners.contains(dfront))
          d.path += Forward.changeBeats(3.0).scale(d.distanceTo(dfront!), 1.0);
        else if (runners.contains(dback))
          d.path += Back.changeBeats(3.0).scale(d.distanceTo(dback!), 1.0);
        else
          throw CallError('Unable to calculate Cross Run for dancer $d');
      }
  }
}
