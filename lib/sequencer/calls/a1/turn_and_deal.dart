/*

  Taminations Square Dance Animations
  Copyright (C) 2020 Brad Christie

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

class TurnAndDeal extends Action {

  @override
  final level = LevelData.A1;
  TurnAndDeal(String name) : super(name);

  @override
  Path performOne(Dancer d, CallContext ctx) {
    final dir = ctx.tagDirection(d);
    final amount = ctx.isTidal() ? 1.5 : 1.0;
    final dist = !ctx.isTidal() ? 2.0 :
    d.data.center ? 1.5 : 0.5;
    final sign = (dir=='Left') ? 1.0 : -1.0;
    return TamUtils.getMove('U-Turn $dir',
        skew:[sign*(name.startsWith('Left') ? amount : -amount),dist*sign].v);
  }

}