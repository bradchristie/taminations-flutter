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

import '../coded_call.dart';
import '../../call_context.dart';
import '../../call_error.dart';

class Twice extends CodedCall {

  Twice(String name) : super(name);

  @override
  Future<void> performCall(CallContext ctx, [int stackIndex=0]) async {
    if (ctx.callstack.length < 2)
      throw CallError('Twice what?');
    //  At this point the call has already been done once
    //  Make sure everyone waits to finish the first time
    ctx.extendPaths();
    //  So just do it again
    var prevCall = ctx.callstack.take(ctx.callstack.length-1)
        .map((it) => it.name).join(' ');
    await ctx.applyCalls(prevCall);
  }

}