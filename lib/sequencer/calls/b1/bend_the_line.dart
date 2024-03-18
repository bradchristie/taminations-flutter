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

class BendTheLine extends Action {

  @override var help = '''Any couple not centered on an axis can Bend the Line.
For groups of 3 (or 4) dancers working together, use Line of 6 (or 8) Bend the Line.''';
  @override var helplink = 'b1/bend_the_line';

  BendTheLine(super.name);

  @override
  Path performOne(DancerModel d, CallContext ctx) {
    if (!ctx.isInCouple(d) || !d.data.partner!.data.active)
      throw CallError('Only couples can Bend the Line' );
    var ys = d.distanceTo(d.data.partner!)/2.0;
    var yk = ys - 0.5;
    //  If in a line of 4, be sure to turn towards the center of the line
    if (ctx.isInLine(d)) {
      if (d.data.beau) {
        return ctx.dancerToLeft(d) != null
            ? BackHingeRight.scale(1.0, ys).skew(0, yk)
            : HingeRight.scale(1.0, ys).skew(0, -yk);
      } else if (d.data.belle) {
        return ctx.dancerToRight(d) != null
            ? BackHingeLeft.scale(1.0, ys).skew(0, -yk)
            : HingeLeft.scale(1.0, ys).skew(0, yk);
      }
      //  Otherwise, turn towards the center of the set
    } else {
      if (d.data.beau) {
        if (d.isCenterRight)
          return HingeRight.scale(1.0, ys);
        else if (d.isCenterLeft)
          return BackHingeRight.scale(1.0, ys);
      } else if (d.data.belle) {
        if (d.isCenterRight)
          return BackHingeLeft.scale(1.0, ys);
        else if (d.isCenterLeft)
          return HingeLeft.scale(1.0, ys);
      }
    }
    throw CallError('Cannot figure out how to Bend the Line' );
  }

}

//  This handles Line of 6 Bend the Line with 8 dancers
class LineofSixBendTheLine extends Action {

  LineofSixBendTheLine(super.name);

  @override
  void performCall(CallContext ctx) {
    if (ctx.dancers.length == 8) {
      var lineOf6 = ctx.waveOf6() ??
          thrower('Cannot find Line of 6')!;
      ctx.subContext(lineOf6, (ctx2) {
        ctx2.applyCalls('Line of 6 Bend the Line');
      });
    } else
      throw CallError('Unable to Bend the Line of 6 with this formation');
  }

}