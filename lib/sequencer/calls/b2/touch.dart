/*

  Taminations Square Dance Animations
  Copyright (C) 2021 Brad Christie

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

import '../action.dart';
import '../../../level_data.dart';
import '../../../math/path.dart';
import '../../../dancer.dart';
import '../../call_context.dart';
import '../../../tam_utils.dart';
import '../../../math/vector.dart';

class Touch extends Action {

  @override
  var level = LevelData.B2;
  Touch(String name) : super(name);

  @override
  Path performOne(Dancer d, CallContext ctx) {
    var d2 = ctx.dancerFacing(d);
    if (d2 == null)
      return ctx.dancerCannotPerform(d,name);
    var dist = d.distanceTo(d2);
    var dir = name.contains('Left') ? 'Right' : 'Left';
    //  Touch to handhold in between wide and narrow
    return TamUtils.getMove('Extend $dir',scale:[dist/2,0.75].v);
  }

}