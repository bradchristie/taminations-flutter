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

import '../../../debug_switch.dart';
import '../coded_call.dart';
import '../common.dart';
import '../xml_call.dart';

class Twice extends CodedCall {

  @override var help = 'Repeat the entire call. '
      'Can be limited to specific dancers, as in Circulate Boys Go Twice';

  Twice(super.name);

  @override
   void performCall(CallContext ctx) {
    //  Find the previous call that we want to repeat,
    //  skipping any selectors
    var stackIndex = ctx.callstack.indexOf(this) - 1;
    while (stackIndex >= 0 &&
        !(ctx.callstack[stackIndex] is Action || ctx.callstack[stackIndex] is XMLCall))
      stackIndex -= 1;
    if (stackIndex < 0)
      throw CallError('Twice what?');
    //  At this point the call has already been done once
    //  Make sure everyone waits to finish the first time
    ctx.extendPaths();
    //  So do it again
    var prevCall = ctx.callstack[stackIndex].name;
    DebugSwitch.perform.log('Twice $prevCall');
    try {
      ctx.applyCalls(prevCall);
    } on CallError catch(_) {
      //  This is for calls like Trade Circulate Boys go Twice
      ctx.applyCalls('Do Your Part $prevCall');
    }
  }

}