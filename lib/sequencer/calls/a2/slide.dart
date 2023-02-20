/*

  Taminations Square Dance Animations
  Copyright (C) 2023 Brad Christie

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

import '../../../moves.g.dart';
import '../common.dart';

class Slide extends Action {

  @override final level = LevelData.A2;
  @override var helplink = 'a2/slip';
  Slide(String name) : super(name);

  @override
  void perform(CallContext ctx) {
    //  If single wave in center, just those 4 Slide
    if (! ctx.subContext(ctx.center(4), (ctx2) {
      if (ctx.dancers.length > 4 && ctx2.isLines() && ctx2.isWaves() && !ctx.isTidal()) {
        ctx2.analyze();
        ctx2.applyCalls('Slide');
      }
    })) {
      //  Not single wave in center
      if (ctx.actives.every((it) => ctx.isInWave(it)))
        super.perform(ctx);
      else
        throw CallError('Dancers must be in mini-waves to Slide');
    }
  }

  @override
  Path performOne(Dancer d, CallContext ctx) {
    final d2 = d.data.partner.throwIfNull(CallError('Unable to calculate Slide'));
    final dist = d.distanceTo(d2);
    if (d.data.beau)
      return BackSashayRight.scale(1.0,dist/2);
    else if (d.data.belle)
      return BackSashayLeft.scale(1.0,dist/2);
    else
      throw CallError('Unable to calculate Slide');
  }

}