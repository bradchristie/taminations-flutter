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

import '../../../moves.dart';
import '../common.dart';

class Loop extends Action {

  @override final level = LevelData.C2;
  @override var help = '';
  @override var helplink = 'c2/loop';
  Loop(String name) : super(name);

  @override
  Path performOne(DancerModel d, CallContext ctx) {
    Path move;
    if (name.startsWith('Left'))
      move = RunLeft;
    else if (name.startsWith('Right'))
      move = RunRight;
    else if (name.startsWith('In'))
      move = d.isCenterLeft ? RunLeft : RunRight;
    else if (name.startsWith('Out'))
      move = d.isCenterLeft ? RunRight : RunLeft;
    else
      throw CallError('Need a direction for Loop');
    try {
      final amount = name.last.d + 1;
      return move.scale(1.0,amount);
    } on FormatException {
      throw CallError('Need an amount for Loop');
    }
  }

}