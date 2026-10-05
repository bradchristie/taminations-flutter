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

import '../common.dart';

class ReverseOrder extends Action {

  @override final level = LevelData.C3B;
  @override var helplink = 'c3b/reverse_order';

  ReverseOrder(super.name);

  @override
  void performCall(CallContext ctx) {
    var reverseCall = ctx.findImplementor<CallWithParts>()
    ?? thrower<CallWithParts>(CallError('Unable to find call with parts to Reverse'));
    reverseCall.reverseParts(ctx);
  }

}