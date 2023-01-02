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

class Balance extends ActivesOnlyAction {

  @override var level = LevelData.B2;
  @override var help = 'Move slightly forward and back.  Dancers must be in waves.';
  @override var helplink = 'b2/ocean_wave';
  Balance() : super('Balance');

  @override
  Path performOne(Dancer d, CallContext ctx) {
    if (ctx.isInWave(d)) {
      return TamUtils.getMove('Forward',
              beats: 2.0, hands: Hands.GRIPBOTH, scale: [0.3,1.0].v) +
          TamUtils.getMove('Back',
              beats: 2.0, hands: Hands.GRIPBOTH, scale: [0.3,1.0].v);
    }
    return Path();
  }

}