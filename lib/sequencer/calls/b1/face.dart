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

//  Does Face In, Out, Left, Right
class Face extends Action {

  @override var helplink = 'b1/face';

  Face(super.name);

  @override
  Path performOne(DancerModel d, CallContext ctx) {
    Path move;
    if (name == 'Face In' ) {
      if (d.angleToOrigin.isLessThan(0))
        move = QuarterRight;
      else if (d.angleToOrigin.isGreaterThan(0))
        move = QuarterLeft;
      else
        throw CallError('Dancer $d does not know which way to turn.' );
    }

    else if (name == 'Face Out') {
      if (d.angleToOrigin.isLessThan(0))
        move = QuarterLeft;
      else if (d.angleToOrigin.isGreaterThan(0))
        move = QuarterRight;
      else
        throw CallError('Dancer $d does not know which way to turn.' );
    }

    else if (name == 'Face Left' )
      move = QuarterLeft;
    else if (name == 'Face Right')
      move = QuarterRight;

    else if (name == 'Face the Caller') {
      if (d.angleFacing.isAround(-pi/2))
        move = QuarterRight;
      else if (d.angleFacing.isAround(pi/2))
        move = QuarterLeft;
      else if (d.angleFacing.isAround(0))
        move = UmTurnRight;
      else
        move = Stand;
      ctx.asymmetric = true;
      }

    else
      throw CallError('Face which direction?');
    return move;
  }

}