/*

  Taminations Square Dance Animations
  Copyright (C) 2026 Brad Christie

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

mixin IsToAWave on Action {

  var isToAWave = false;
  var toAWave = '';
  var dancersToaWave = <Dancer>[];

}

class ToAWave extends CodedCall {

  ToAWave(super.name);

  @override
  void addToStack(CallContext ctx) {
    var toawaveCall = ctx.findImplementor<IsToAWave>()
        ?? thrower<IsToAWave>(CallError('Unable to find call that implements To a Wave'));
    toawaveCall.isToAWave = true;
    toawaveCall.toAWave = name;
    toawaveCall.raiseLevel(LevelData.C1);
    super.addToStack(ctx);
  }

  @override
  void performCall(CallContext ctx) {
    //  If the implementing class specified some dancers that
    //  go to a wave, check that
    var toawaveCall = ctx.findImplementor<IsToAWave>()!;
    if (!ctx.actives.containsAll(toawaveCall.dancersToaWave))
      throw CallError('Wrong dancers asked to go To a Wave');
  }

}