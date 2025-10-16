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

import '../common.dart';

//  This is the A-2 call Swing
class Swing extends Action {

  @override final level = LevelData.A2;
  @override var helplink = 'a2/slip';
  @override var help = '''Swing by itself is the A-2 call.
You can also finish a singing call sequence with
Swing Corner and Promenade
Or, skip the Swing with
Promenade Corner''';

  Swing(super.name);

  @override
  void performCall(CallContext ctx) {
    //  If single wave in center, just those 4 Swing
    if (!ctx.subContext(ctx.center(4), (ctx2) {
      if (ctx.dancers.length > 4 && ctx2.isLines() && ctx2.isWaves() && !ctx.isTidal()) {
        ctx2.analyze();
        ctx2.applyCalls('Trade');
      }
    })) {
      //  Not single wave in center
      if (ctx.actives.every((it) => ctx.isInWave(it)))
        ctx.applyCalls('Trade');
      else
        throw CallError('Dancers must be in mini-waves to Swing');
    }
  }

}