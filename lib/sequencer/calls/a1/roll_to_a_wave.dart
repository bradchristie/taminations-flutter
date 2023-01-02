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

import '../common.dart';

class RollToAWave extends Action {

  @override final level = LevelData.A1;
  @override var helplink = 'a1/right_roll_to_a_wave';
  RollToAWave(String name) : super(name);
  @override
  Path performOne(Dancer d, CallContext ctx) {
    final dir = name.startsWith('Left') ? 'Left' : 'Right';
    final otherDir = name.startsWith('Left') ? 'Right' : 'Left';
    if (d.data.leader) {
      final d2 = ctx.dancerInBack(d).throwIfNull('Error for dancer $d');
      final dist = d.distanceTo(d2);
      return TamUtils.getMove('Flip $dir',
          beats: 4.0,
          scale: [1.0,0.25].v,
          skew: [-dist/2.0,0.0].v);
    } else if (d.data.trailer) {
      final d2 = ctx.dancerInFront(d).throwIfNull('Error for dancer $d');
      final dist = d.distanceTo(d2);
      return TamUtils.getMove('Extend $otherDir',
        beats: 4.0,
        scale: [dist/2.0,0.5].v);
    } else
      throw CallError('Dancer $d cannot $name');
  }

}