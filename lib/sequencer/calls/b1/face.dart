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

//  Does Face In, Out, Left, Right
class Face extends Action {

  Face(String name) : super(name);

  @override
  Path performOne(Dancer d, CallContext ctx) {
    var moveName = '' ;
    if (name == 'Face In' ) {
      if (d.angleToOrigin.isLessThan(0))
        moveName = 'Quarter Right' ;
      else if (d.angleToOrigin.isGreaterThan(0))
        moveName = 'Quarter Left' ;
      else
        throw CallError('Dancer $d does not know which way to turn.' );
    }
    else if (name == 'Face Out') {
      if (d.angleToOrigin.isLessThan(0))
        moveName = 'Quarter Left';
      else if (d.angleToOrigin.isGreaterThan(0))
        moveName = 'Quarter Right';
      else
        throw CallError('Dancer $d does not know which way to turn.' );
    }
    else if (name == 'Face Left' )
      moveName = 'Quarter Left';
    else if (name == 'Face Right')
      moveName = 'Quarter Right';
    return TamUtils.getMove(moveName);
  }

}