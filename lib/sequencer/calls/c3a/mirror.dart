/*

  Taminations Square Dance Animations
  Copyright (C) 2025 Brad Christie

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

import '../call.dart';
import '../coded_call.dart';
import '../common.dart';

mixin IsMirror on Call {

  var isMirror = false;

}

class Mirror extends CodedCall {

  @override var nextCallCoded = true;

  Mirror(super.name);

  @override
  void performCall(CallContext ctx) {
    var mirrorCall = ctx.findImplementor<IsMirror>(startFrom:this);
    if (mirrorCall != null) {
      mirrorCall.isMirror = true;
      mirrorCall.raiseLevel(LevelData.C3A);
    } else {
      var reverseCall = ctx.findImplementor<IsReverse>(startFrom: this);
      if (reverseCall != null) {
        reverseCall.isReverse = true;
        reverseCall.raiseLevel(LevelData.C3A);
      } else {
        var leftCall = ctx.findImplementor<IsLeft>(startFrom: this)
            ?? thrower<IsLeft>(CallError('Unable to find call that can apply Mirror'));
        leftCall.isLeft = true;
        leftCall.raiseLevel(LevelData.C3A);
      }
    }
  }

}