/*
 *     Copyright 2022 Brad Christie
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

mixin ButCall {
  var butCall = 'Cast Off 3/4';
}

class But extends Action {

  @override final level = LevelData.C1;
  But(String name) : super(name);

  @override
  Future<void> perform(CallContext ctx) async {
    final callName = name.replaceFirst(' but .*'.ri, '').trim();
    await ctx.subContext(ctx.dancers, (ctx2) async {
      if (!ctx2.matchCodedCall(callName))
        throw CallError('Unable to find $callName as a Call with Parts');
      if (ctx2.callstack.last is ButCall) {
        final call = ctx2.callstack.last as ButCall;
        call.butCall = name.replaceFirst('.* but '.ri, '');
        await ctx2.performCall();
      }
      else
        throw CallError('$callName does not recognize But');
    });
  }

}