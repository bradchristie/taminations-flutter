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

class SlideDir extends Action {

  @override var help = 'You can adust dancers without changing their facing '
      'direction with Slide In/Out/Left/Right.  This is not a real square dance call.';
  SlideDir(String name) : super(name);

  @override
  Path performOne(DancerModel d, CallContext ctx) {
    Path move;
    if (name == 'Slide Left' )
      move = DodgeLeft;
    else if (name == 'Slide Right' )
      move = DodgeRight;
    else if (name == 'Slide In' )
      move = d.isCenterLeft ? DodgeLeft  : DodgeRight;
    else if (name == 'Slide Out' )
      move = d.isCenterLeft ? DodgeRight  : DodgeLeft;
    else
      throw CallError('Slide how?' );
    return move;
  }

}