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

import '../../call_context.dart';
import '../action.dart';

class Everyone extends Action {

  Everyone(String name) : super(name);

  @override
   void performCall(CallContext ctx) {
    //  Make sure the previous call is completed
    ctx.extendPaths();
    //  Then everyone can do the next call
    for (var d in ctx.dancers)
      d.data.active = true;
  }

}