/*

  Taminations Square Dance Animations
  Copyright (C) 2020 Brad Christie

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

import '../common/actives_only_action.dart';
import '../../../level_data.dart';
import '../../../math/path.dart';
import '../../../dancer.dart';
import '../../call_context.dart';
import '../../call_error.dart';
import '../../../extensions.dart';
import '../../../tam_utils.dart';
import '../../../math/vector.dart';

class WheelAround extends ActivesOnlyAction {

  @override
  var level = LevelData.B2;
  WheelAround(String name) : super(name);

  @override
  Path performOne(Dancer d, CallContext ctx) {
    var d2 = d.data.partner
        ?? thrower(CallError('Dancer $d must Wheel Around with partner'));
    var dist = d.distanceTo(d2);
    String move;
    if (name.startsWith('Reverse'))
      move = d2.isRightOf(d) ? 'Beau Reverse Wheel' : 'Belle Reverse Wheel';
    else
      move = d2.isRightOf(d) ? 'Beau Wheel' : 'Belle Wheel';
    return TamUtils.getMove(move,
        scale:[dist/2,dist/2].v);
  }

}