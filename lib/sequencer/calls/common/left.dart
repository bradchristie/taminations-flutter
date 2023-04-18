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

import '../coded_call.dart';
import '../common.dart';

mixin IsLeft {

  var isLeft = false;
  String get left => isLeft ? 'Left' : '';
  String get leftHand => isLeft ? 'Left-Hand' : '';

}

class Left extends CodedCall {

  @override var nextCallCoded = true;

  Left(String name) : super(name);

  @override
  void performCall(CallContext ctx) {
    for (var i=ctx.callstack.indexOf(this)+1; i<ctx.callstack.length; i+=1) {
      if (ctx.callstack[i] is IsLeft) {
        (ctx.callstack[i] as IsLeft).isLeft = true;
        if (ctx.callstack[i].level < LevelData.A1)
          ctx.callstack[i].level = LevelData.A1;
        return;
      }
    }
    throw CallError('Left what?');
  }

}