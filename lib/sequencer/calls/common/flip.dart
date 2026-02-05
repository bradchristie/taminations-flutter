/*
 * *     Copyright 2024 Brad Christie
 *
 *     This file is part of Taminations.
 *
 *     Taminations is free software: you can redistribute it and/or modify
 *     it under the terms of the GNU Affero General Public License as published
 *     by the Free Software Foundation, either version 3 of the License, or
 *     (at your option) any later version.
 *
 *     Taminations is distributed in the hope that it will be useful,
 *     but WITHOUT ANY WARRANTY; without even the implied warranty of
 *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *     GNU Affero General Public License for more details.
 *
 *     You should have received a copy of the GNU Affero General Public License
 *     along with Taminations.  If not, see <http://www.gnu.org/licenses/>.
 */

import '../../../moves.dart';
import '../common.dart';

class Flip extends Action {

  @override var help = 'You can have dancers Flip Left, Right, In, or Out.'
      ' Flip is a run around a phantom.'
      ' This is not a real call.';

  Flip(super.name);

  @override
  Path performOne(Dancer d, CallContext ctx) {
    Path move;
    if (name == 'Flip Left' )
      move = FlipLeft;
    else if (name == 'Flip Right' )
      move = FlipRight;
    else if (name == 'Flip In' )
      move = d.isCenterLeft ? FlipLeft  : FlipRight;
    else if (name == 'Flip Out' )
      move = d.isCenterLeft ? FlipRight  : FlipLeft;
    else
      throw CallError('Flip how?' );
    return move;
  }

}