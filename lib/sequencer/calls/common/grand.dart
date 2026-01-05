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

import '../call.dart';
import '../coded_call.dart';
import '../common.dart';

mixin IsGrand on Call {

  var isGrand = false;
  String get grand => isGrand ? 'Grand' : '';

}

class Grand extends CodedCall {

  @override var nextCallCoded = true;

  Grand(super.name);

  @override
  void performCall(CallContext ctx) {
    var grandCall = ctx.findImplementor<IsGrand>(startFrom:this)
    ?? thrower<IsGrand>(CallError('Unable to find call to apply Grand'));
    grandCall.isGrand = true;
    return;
  }

}