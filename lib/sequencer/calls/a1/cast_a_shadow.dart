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

//  This class is only for the variation "Cast a Shadow, Centers go 3/4"
//  All the normal Cast a Shadow formations are handled in the xml animations
class CastAShadow extends Action {

  @override final level = LevelData.A1;
  CastAShadow(String name) : super(name);

  @override
  Future<void> perform(CallContext ctx, [int stackIndex = 0]) async {
    if (ctx.actives.length == 8 &&
        TamUtils.normalizeCall(name).matches('castashadowcenter.*34'.r)) {
      final inCenters = ctx.dancers.where((d) => d.data.center && d.data.trailer);
      if (inCenters.length != 2)
        throw CallError('Need exactly 2 trailing centers to go 3/4.');
      await ctx.applyCalls('Cast a Shadow');
      final castDir = inCenters.first.isCenterLeft ? 'Left' : 'Right';
      for (final d in inCenters) {
        d.path =  TamUtils.getMove('Forward 2') +
            TamUtils.getMove('Cast $castDir') +
            TamUtils.getMove('Forward 2');
      }
    } else
      throw CallError('Improper variation for Cast a Shadow');

  }

}