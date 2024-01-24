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

//  This class is only for the variation "Cast a Shadow, Centers go 3/4"
//  All the normal Cast a Shadow formations are handled in the xml animations
class CastAShadow extends Action {

  @override final level = LevelData.A1;
  @override var help = 'Cast a Shadow - can be modified with Centers Go 3/4';
  @override var helplink = 'a1/cast_a_shadow';
  CastAShadow(String name) : super(name);

  @override
  void performCall(CallContext ctx) {
    if (ctx.actives.length == 8 &&
        normalizeCall(name).matches('CastaShadowCenter.*34'.r)) {
      final inCenters = ctx.dancers.where((d) => d.data.center && d.data.trailer);
      if (inCenters.length != 2)
        throw CallError('Need exactly 2 trailing centers to go 3/4.');
      ctx.applyCalls('Cast a Shadow');
      for (final d in inCenters) {
        d.path =  Forward_2 +
                  (inCenters.first.isCenterLeft ? CastLeft : CastRight) +
                  Forward_2;
      }
    } else
      throw CallError('Improper variation for Cast a Shadow');
  }

}