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

class BendTheLine extends Action {

  @override var help = 'Any couple not centered on an axis can Bend the Line';
  @override var helplink = 'b1/bend_the_line';
  BendTheLine() : super('Bend the Line' );

  @override
  Path performOne(Dancer d, CallContext ctx) {
    if (!ctx.isInCouple(d) || !d.data.partner!.data.active)
      throw CallError('Only couples can Bend the Line' );
    var ys = d.distanceTo(d.data.partner!)/2.0;
    if (d.data.beau) {
      if (d.isCenterRight)
        return TamUtils.getMove('Hinge Right' )..scale(1.0,ys);
      else if (d.isCenterLeft)
        return TamUtils.getMove('BackHinge Right' )..scale(1.0,ys);
    } else if (d.data.belle) {
      if (d.isCenterRight)
        return TamUtils.getMove('BackHinge Left' )..scale(1.0,ys);
      else if (d.isCenterLeft)
        return TamUtils.getMove('Hinge Left' )..scale(1.0,ys);
    }
    throw CallError('Cannot figure out how to Bend the Line' );
  }

}