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

import '../coded_call.dart';
import '../common.dart';

class WaveOfSix extends CodedCall {

  WaveOfSix(String name) : super(name);

  @override
   void performCall(CallContext ctx) {
    final xDancers = ctx.dancers.where((d) => d.isOnXAxis);
    final yDancers = ctx.dancers.where((d) => d.isOnYAxis);
    if (xDancers.length == 6)
      ctx.dancers.forEach((d) { d.data.active = xDancers.contains(d); });
    else if (yDancers.length == 6)
      ctx.dancers.forEach((d) { d.data.active = yDancers.contains(d); });
    else
      throw CallError('Unable to identify Wave of Six');
  }

}