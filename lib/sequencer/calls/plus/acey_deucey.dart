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

import '../common.dart';

class AceyDeucey extends Action {

  @override var level = LevelData.PLUS;
  @override var help = 'Center 4 Trade While Outer 4 Circulate.';
  @override var helplink = 'plus/acey_deucey';

  AceyDeucey(super.name);

  @override
   void performCall(CallContext ctx, [int i = 0]) {
    if (ctx.actives.length != 8)
      throw CallError('Acey Deucey must involve all 8 dancers');
    if (CallContext.fromDancers(ctx.outer(4)).isDiamond())
      ctx.applyCalls('Center 4 Trade While Outer 4 Diamond Circulate');
    else
      ctx.applyCalls('Center 4 Trade While Outer 4 Circulate');
    ctx.changeBeats(4.0);
  }

}