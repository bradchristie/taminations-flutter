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

import '../../../moves.dart';
import '../common.dart';
import '../../../math/bezier.dart';

class DiamondCirculate extends Action {

  @override var level = LevelData.PLUS;
  @override var help = 'In addition to Twin Diamonds and Point-to-Point'
      ' Diamonds, any 4 dancers arranged in a Diamond'
      ' can Diamond Circulate';
  @override var helplink = 'plus/diamond_circulate';
  DiamondCirculate() : super('Diamond Circulate');

  @override
  void perform(CallContext ctx) {
    if (ctx.actives.length != 4)
      throw CallError('Unable to calculate Diamond Circulate');
    super.perform(ctx);
  }

  @override
  Path performOne(DancerModel d, CallContext ctx) {
    //  Should be exactly 1 other active dancer
    //  in front of this dancer within 90 degrees
    var offset = 0.5;
    var others = ctx.actives.where((it) => it != d).where((d2) {
      var a = d.angleToDancer(d2).abs();
      return !a.isAround(pi / 2) && a < pi / 2;
    });
    if (others.length != 1)
      throw CallError('Cannot figure out how dancer $d can Diamond Circulate');
    var d2 = others.first;
    var a2 = d.angleToDancer(d2);
    if (a2.isAround(0.0))
      throw CallError("Doesn't look like dancer $d is in a Diamond");
    var dist = d.distanceTo(d2);
    var isLeft = a2 > 0;
    var xScale = dist * cos(a2);
    var yScale = dist * sin(a2);
    var move = isLeft ? LeadLeft : LeadRight;
    var simplePath = move.scale(xScale, yScale.abs()).changeBeats(2.0);
    var isFacing = d2.angleToDancer(d).abs() < pi / 2;
    if (isFacing) {
      //  Calculate curves to pass right shoulders
      var bzrot = simplePath.movelist.first.brotate;
      var p2 = Vector(xScale, yScale);
      if (isLeft) {
        var cx1 = xScale * sin(pi / 6) - offset * sin(pi / 6);
        var cy1 = yScale - yScale * cos(pi / 6) + offset * cos(pi / 6);
        var cx2 = xScale * sin(pi / 3) - offset * sin(pi / 3);
        var cy2 = yScale - yScale * cos(pi / 3) + offset * cos(pi / 3);
        var bz = Bezier.fromPoints(
            Vector(), Vector(cx1, cy1), Vector(cx2, cy2), p2);
        var m = Movement(2.0, Hands.NOHANDS, bz, bzrot);
        return Path([m]);
      } else {
        var cx1 = xScale * sin(pi / 6) + offset * sin(pi / 6);
        var cy1 = yScale - yScale * cos(pi / 6) + offset * cos(pi / 6);
        var cx2 = xScale * sin(pi / 3) + offset * sin(pi / 3);
        var cy2 = yScale - yScale * cos(pi / 3) + offset * cos(pi / 3);
        var bz = Bezier.fromPoints(
            Vector(), Vector(cx1, cy1), Vector(cx2, cy2), p2);
        var m = Movement(2.0, Hands.NOHANDS, bz, bzrot);
        return Path([m]);
      }
    }
    return simplePath;
  }

}