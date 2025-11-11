/*

  Taminations Square Dance Animations
  Copyright (C) 2025 Brad Christie

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

class Drop extends SplitCall with ActivesOnly {

  Drop(super.name);

  @override
  void performCall(CallContext ctx) {
    //  Sanity check
    if (ctx.dancers.length == 4) {
      var ord = ctx.dancers.sortedWith((d1, d2) => d1.location.length.compareTo(d2.location.length));
      if (ord[1].location.length.isAbout(ord[2].location.length))
        throw CallError('Cannot Drop from this formation');
    }
    //  For PTP diamonds, force an adjustment at the end to boxes
    //  Otherwise the result are dancers spread out too far
    var isptp = ctx.matchFormations(CallContext.fromFormation(Formation('Diamonds RH PTP Girl Points')),rotate: 90) != null;
    super.performCall(ctx);
    if (isptp)
      ctx.adjustToFormation(Formation('Eight Chain Thru'));
  }

  @override
  Path performOne(DancerModel d, CallContext ctx) {
    //  Because we are derived from SplitCall
    //  we are only working with 4 dancers
    //  So the outer 2 are the points
    var points = ctx.outer(2);
    if (points.contains(d)) {
      //  Find the center not facing this dancer
      try {
        var d2 = ctx.dancers.firstWhere((dx) =>
        !points.contains(dx) && dx.angleToDancer(d).abs().isGreaterThan(pi / 2),);
      var goto = d2.location + Vector(1.5,0).rotate(d2.angleFacing+pi);
      var saveloc = d.location;
      d.setStartPosition(goto);
      var angto = d.angleFacing;
      if (name == 'Drop Right')
        angto -= pi/2;
      else if (name == 'Drop Left')
        angto += pi/2;
      else if (name == 'Drop In')
        angto += d.angleToOrigin.sign * pi/2;
      else if (name == 'Drop Out')
        angto -= d.angleToOrigin.sign * pi/2;
      d.setStartPosition(saveloc);
      return ctx.moveToPosition(d, goto, angto);
      } on Error {
        throw CallError('Unable to Drop from this formation.');
      }
    } else {
      return Forward_1p5;
    }
  }

}