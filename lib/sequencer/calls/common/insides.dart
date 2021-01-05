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


import '../../../tam_utils.dart';
import '../../call_context.dart';
import '../action.dart';
import '../../../extensions.dart';

class Insides extends Action {

  Insides(String name) : super(name);

  @override
  Future<void> performCall(CallContext ctx, [int stackIndex = 0]) async {
    var norm = TamUtils.normalizeCall(name);
    var num = 4;
    if (norm.endsWith('2')) num = 2;
    if (norm.endsWith('6')) num = 6;
    ctx.dancers.sortedBy((d) => d.location.length).drop(num).forEach((d) {
      d.data.active =  false;
    });
  }

}