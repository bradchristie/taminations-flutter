/*
 * *     Copyright 2024 Brad Christie
 *
 *     This file is part of Taminations.
 *
 *     Taminations is free software: you can redistribute it and/or modify
 *     it under the terms of the GNU Affero General Public License as published
 *     by the Free Software Foundation, either version 3 of the License, or
 *     (at your option) any later version.
 *
 *     Taminations is distributed in the hope that it will be useful,
 *     but WITHOUT ANY WARRANTY; without even the implied warranty of
 *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *     GNU Affero General Public License for more details.
 *
 *     You should have received a copy of the GNU Affero General Public License
 *     along with Taminations.  If not, see <http://www.gnu.org/licenses/>.
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