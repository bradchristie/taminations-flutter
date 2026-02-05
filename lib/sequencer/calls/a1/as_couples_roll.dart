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

import 'package:taminations/moves.dart';
import '../common.dart';

class AsCouplesRoll extends Action with ActivesOnly {

  @override var level = LevelData.A1;

  AsCouplesRoll(super.name);

  @override
  void performCall(CallContext ctx) {
    //  Check that all dancers are couples
    ctx.dancers.forEach((d) {
      if (!ctx.isInCouple(d))
        throw CallError('Dancer $d is not part of a Couple');
    });
    super.performCall(ctx);
  }

  @override
  Path performOne(Dancer d, CallContext ctx) {
    var d2 = d.data.partner!;
    var r1 = ctx.roll(d);
    var r2 = ctx.roll(d2);
    if ((r1 == Rolling.LEFT && r2 == Rolling.RIGHT) ||
        (r1 == Rolling.RIGHT && r2 == Rolling.LEFT)) {
      throw CallError(
          'Dancers $d and $d2 are rolling in oppposite directions so cannot As Couples Roll');
    } else if (r1 == Rolling.LEFT || r2 == Rolling.LEFT) {
      return d.data.beau ? BackHingeRight : HingeLeft;
    } else if (r1 == Rolling.RIGHT || r2 == Rolling.RIGHT) {
      return d.data.beau ? HingeRight : BackHingeLeft;
    } else
      return Path();
  }

}