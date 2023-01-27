/*
 *     Copyright 2022 Brad Christie
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

import '../common.dart';

class StepThru extends ActivesOnlyAction {

  @override var helplink = 'b1/step_thru';
  StepThru(String name) : super(name);

  @override
  Path performOne(Dancer d, CallContext ctx) {
    if (!ctx.isInWave(d))
      throw CallError('Dancer $d cannot Step Thru');
    final dir = d.data.beau ? 'Right' : 'Left';
    final dist = d.distanceTo(d.data.partner!);
    return TamUtils.getMove('Extend $dir').scale(1.0, dist/2.0);
  }

}