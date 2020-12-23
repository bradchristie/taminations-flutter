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

import '../../call_context.dart';
import '../../call_error.dart';
import '../coded_call.dart';

class CenterSix extends CodedCall {

  CenterSix() : super('Center 6');

  @override
  Future<void> performCall(CallContext ctx, [int stackIndex=0]) async {
    if (ctx.dancers.length != 8)
      throw CallError('Not enough dancers.');
    if (ctx.groups.length < 2)
      throw CallError('Cannot find 6 dancers in center');
    //  Look for the easy case - two dancers obviously further out than the rest
    var farOut = ctx.groups.last;
    if (farOut.length == 2) {
      farOut[0].data.active = false;
      farOut[1].data.active = false;
    } else {
      // That didn't work - look for a 2-2-4 arrangement where the outer 4
      // are not much further out than the closer in 2 and assume
      // the user considers those 2 to be on the outside
      var lessFarOut = ctx.groups[ctx.groups.length-2];
      if (lessFarOut.length == 2 &&
          farOut[0].location.length - lessFarOut[0].location.length < 0.5) {
        lessFarOut[0].data.active = false;
        lessFarOut[1].data.active = false;
      }
      else  //  Could not separate 6 dancers from other 2
        throw CallError('Cannot find 6 dancers in center');
    }

  }

}