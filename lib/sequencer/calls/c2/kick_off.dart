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

class KickOff extends Action {

  @override final level = LevelData.C2;
  KickOff(String name) : super(name);

  @override
  Future<void> perform(CallContext ctx) async {
    //  Active dancers [Cross] Run and Roll
    final cross = name.startsWith('Cross') ? 'Cross' : '';
    await ctx.applyCalls('$cross Run and Roll');
    //  Inactive dancers that moved do a Partner Tag
    ctx.dancers.where((d) => !d.isActive && d.path.movelist.isNotEmpty)
        .forEach((d) {
      final m = d.path.shift()!;
      final dy = m.btranslate.endPoint.y;
      if (dy > 0)
        d.path = TamUtils.getMove('Quarter Left',beats:3.0,skew:[0.0,dy].v);
      else if (dy < 0)
        d.path = TamUtils.getMove('Quarter Right',beats:3.0,skew:[0.0,dy].v);
    });
  }

}