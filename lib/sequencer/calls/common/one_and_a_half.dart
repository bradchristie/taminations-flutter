/*

  Taminations Square Dance Animations
  Copyright (C) 2024 Brad Christie

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
import '../../call_error.dart';
import '../coded_call.dart';

class OneAndaHalf extends CodedCall {

  OneAndaHalf(String name) : super(name);

  @override
   void performCall(CallContext ctx) {
    if (ctx.callstack.length < 2)
      throw CallError('One and a half of what?');
    //  At this point the call has already been done once
    //  Be sure everyone waits until the call is complete
    ctx.extendPaths();
    //  Now do half of it again
    var prevCall = ctx.callstack[ctx.callstack.length - 2].name;
    ctx.applyCalls('Half $prevCall');
  }

}