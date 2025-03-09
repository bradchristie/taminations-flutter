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

import '../call.dart';
import '../coded_call.dart';
import '../common.dart';

mixin IsLeft on Call {

  var isLeft = false;
  String get left => isLeft ? 'Left' : '';
  String get antiLeft => isLeft ? '' : 'Left';
  String get leftHand => isLeft ? 'Left-Hand' : '';
  String get whichWay => isLeft ? 'Left' : 'Right';

}

class Left extends CodedCall {

  @override var nextCallCoded = true;

  Left(super.name);

  @override
  void performCall(CallContext ctx) {
    var leftCall = ctx.findImplementor<IsLeft>(startFrom:this)
    ?? thrower<IsLeft>(CallError('Unable to find call that can apply Left'));
    leftCall.isLeft = true;
    leftCall.raiseLevel(LevelData.A1);
    return;
  }

}