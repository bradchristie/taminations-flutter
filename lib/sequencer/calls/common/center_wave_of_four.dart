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

import 'package:flutter/cupertino.dart';

import '../coded_call.dart';
import '../common.dart';

class CenterWaveOfFour extends CodedCall {

  CenterWaveOfFour() : super('Center Wave of Four');

  @override
  Future<void> performCall(CallContext ctx) async {
    final vc = ctx.dancers.where((d) => d.data.verycenter).toList();
    if (vc.length == 2) {
      final waveOf4 = [
        ctx.dancerToRight(vc.first),
        ctx.dancerToLeft(vc.first),
        ctx.dancerToRight(vc.second),
        ctx.dancerToLeft(vc.second)
      ].whereType<Dancer>().toList();
      if (waveOf4.length == 4) {
        ctx.dancers.forEach((d) { d.data.active = waveOf4.contains(d); });
        return;
      }
    }
    throw CallError('Unable to identify Center Wave of Four');
  }

}