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

class CenterWaveOfFour extends CodedCall {

  CenterWaveOfFour(name) : super(name);

  @override
   void performCall(CallContext ctx) {
    var waveOf4 = <Dancer>[];
    final xd = ctx.dancers.where((d) => d.location.x.isAbout(0.0)).toList();
    final yd = ctx.dancers.where((d) => d.location.y.isAbout(0.0)).toList();
    if (xd.length > 4)
      waveOf4 = xd.sortedWith((d1, d2) => d1.location.length.compareTo(d2.location.length))
          .take(4).toList();
    else if (yd.length > 4)
      waveOf4 = yd.sortedWith((d1, d2) => d1.location.length.compareTo(d2.location.length))
          .take(4).toList();
    else {
      final vc = ctx.dancers.where((d) => d.data.verycenter).toList();
      if (vc.length == 2) {
        waveOf4 = [
          ctx.dancerToRight(vc.first),
          ctx.dancerToLeft(vc.first),
          ctx.dancerToRight(vc.second),
          ctx.dancerToLeft(vc.second)
        ].whereType<Dancer>().toList();
      }
    }
    if (waveOf4.length == 4) {
      ctx.dancers.forEach((d) { d.data.active = waveOf4.contains(d); });
      return;
    }
    throw CallError('Unable to identify $name');
  }

}