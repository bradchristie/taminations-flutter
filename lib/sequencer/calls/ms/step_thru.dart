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

class StepThru extends Action with ActivesOnly {

  @override var helplink = 'ms/step_thru';

  StepThru(super.name);

  @override
  Path performOne(Dancer d, CallContext ctx) {
    if (!ctx.isInWave(d))
      throw CallError('Dancer $d cannot Step Thru');
    final move = d.data.beau ? ExtendRight : ExtendLeft;
    final dist = d.distanceTo(d.data.partner!);
    return move.scale(1.0, dist/2.0);
  }

}