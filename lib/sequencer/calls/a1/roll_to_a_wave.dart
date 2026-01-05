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

import '../../../moves.dart';
import '../common.dart';

class RollToAWave extends Action with ActivesOnly {

  @override final level = LevelData.A1;
  @override var helplink = 'a1/right_roll_to_a_wave';

  RollToAWave(super.name);

  @override
  Path performOne(DancerModel d, CallContext ctx) {
    final flip = name.startsWith('Left') ? FlipLeft : FlipRight;
    final extend = name.startsWith('Left') ? ExtendRight :ExtendLeft;
    if (d.data.leader) {
      final d2 = ctx.dancerInBack(d).throwIfNull('Error for dancer $d');
      final dist = d.distanceTo(d2);
      return flip.changeBeats(4.0).scale(1.0, 0.25).skew(-dist/2.0,0.0);
    } else if (d.data.trailer) {
      final d2 = ctx.dancerInFront(d).throwIfNull('Error for dancer $d');
      final dist = d.distanceTo(d2);
      return extend.changeBeats(4.0).scale(dist/2.0,0.5);
    } else
      throw CallError('Dancer $d cannot $name');
  }

}