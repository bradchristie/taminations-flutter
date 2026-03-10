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

class ChaseTheHalfTag extends SplitCall {

  @override var level = LevelData.C3A;
  ChaseTheHalfTag(super.name);

}

class Chase extends TaggingCall {

  Chase(super.name);

  @override
  void performTag(CallContext ctx) {
    ctx.applyCalls('Chase the Half Tag');
  }
}

class LeftChase extends TaggingCall {

  @override var level = LevelData.PLUS;

  LeftChase(super.name);

  @override
  void addToStack(CallContext ctx) {
    print('Left Chase addToStack');
    var ctx2 = CallContext.fromContext(ctx);
    var otherCalls = name.replaceFirst('Left Chase ', '');
    print('otherCalls: $otherCalls');
    ctx2.interpretCall(otherCalls);
    if (ctx2.findImplementor<UsesTaggingCall>() == null) {
      ctx2.interpretCall('Left Chase');
      ctx2.interpretCall(otherCalls);
    } else {
      print('Left Chase parsing ok');
      super.addToStack(ctx);
    }
    ctx.callstack.addAll(ctx2.callstack);
  }

  @override
  void performTag(CallContext ctx) {
    ctx.applyCalls('LChase the Half Tag');
  }

}