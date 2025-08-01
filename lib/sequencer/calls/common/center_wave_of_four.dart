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

import '../coded_call.dart';
import '../common.dart';

class CenterWaveOfFour extends CodedCall {

  CenterWaveOfFour(super.name);

  @override
   void performCall(CallContext ctx) {
    var waveOf4 = ctx.centerWaveOf4()
        ?? thrower(CallError('Unable to identify $name'))!;
    ctx.dancers.forEach((d) {
      d.data.active = waveOf4.contains(d) &&
          //  Handle the awkward Center Wave Ends .. here
          (!norm.endsWith('End') || !d.data.verycenter);
    });
  }

}