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

class Truck extends Action with IsReverse {

  @override final level = LevelData.C2;
  @override var helplink = 'c2/truck';

  Truck(super.name);

  @override
  Path performOne(DancerModel d, CallContext ctx) {
    final move = [
      if (d.gender == Gender.BOY) isReverse ? DodgeRight : DodgeLeft,
      if (d.gender == Gender.GIRL) isReverse ? DodgeLeft : DodgeRight,
    ].firstOrNull;
    if (move == null)
      throw CallError('Attempt to Truck a phantom');
    return move;
  }

}