/*

  Taminations Square Dance Animations
  Copyright (C) 2020 Brad Christie

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
import 'dart:math';

import '../../../dancer.dart';
import '../../../extensions.dart';
import '../../../math/path.dart';
import '../../../math/vector.dart';
import '../../../tam_utils.dart';
import '../../call_context.dart';
import '../action.dart';

class SquareTheSet extends Action {

  SquareTheSet() : super('Square the Set' );

  @override
  Path performOne(Dancer d, CallContext ctx) {

    // Get X and Y coordinates of this dancer's home position
    var xhome = 0.0;
    if (ctx.dancers.length == 4)
      xhome = (d.numberCouple == '1' ) ? -2.0 : 2.0;
    else if ('12' .contains(d.number))
      xhome = -3.0;
    else if ('38' .contains(d.number))
      xhome = -1.0;
    else if ('47' .contains(d.number))
      xhome = 1.0;
    else if ('56' .contains(d.number))
      xhome = 3.0;

    var yhome = 0.0;
    if (ctx.dancers.length == 4)
      yhome = ((d.numberCouple=='1' ) ^ (d.gender==Gender.GIRL)) ? 1.0 : -1.0;
    else if ('16' .contains(d.number))
      yhome = 1.0;
    else if ('25' .contains(d.number))
      yhome = -1.0;
    else if ('34' .contains(d.number))
      yhome = -3.0;
    else if ('78' .contains(d.number))
      yhome = 3.0;

    //  And the angle dancer faces when standing at home
    var ahome = 0.0;
    if (ctx.dancers.length == 4)
      ahome = (d.numberCouple == '1' ) ? 0.0 : pi;
    else if ('12' .contains(d.number))
      ahome = 0.0;
    else if ('34' .contains(d.number))
      ahome = pi/2;
    else if ('56' .contains(d.number))
      ahome = pi;
    else if ('78' .contains(d.number))
      ahome = pi*3/2;

    //  Calculate the difference to that position and angle
    //  from dancer's current location and facing direction
    var tohome = [xhome,yhome].v - d.location;
    var angle = d.tx.angle;
    tohome = tohome.rotate(-angle);
    var adiff = ahome.angleDiff(angle);
    var turn = 'Stand' ;
    if (adiff.isAround(0.0))
      turn = 'Stand' ;
    else if (adiff.isAround(pi/4))
      turn = 'Eighth Left' ;
    else if (adiff.isAround(pi/2))
      turn = 'Quarter Left' ;
    else if (adiff.isAround(pi*3/4))
      turn = '3/8 Left' ;
    else if (adiff.isAround(pi))
      turn = 'U-Turn Right' ;
    else if (adiff.isAround(-pi*3/4))
      turn = '3/8 Right' ;
    else if (adiff.isAround(-pi/2))
      turn = 'Quarter Right' ;
    else if (adiff.isAround(-pi/4))
      turn = 'Eighth Right' ;

    //  Can now move to home
    return TamUtils.getMove(turn,
        beats: 2.0,
        skew: tohome);
  }

}