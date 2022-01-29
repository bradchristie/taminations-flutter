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

class Skip extends Action {

  @override final level = LevelData.C1;
  Skip(String name) : super(name);

  @override
  Future<void> perform(CallContext ctx) async {
    final callName = name.replaceFirst('(but )?(skip|delete) .+'.ri,'').trim();
    await ctx.subContext(ctx.dancers, (ctx2) async {
      if (!ctx2.matchCodedCall(callName))
        throw CallError('Unable to find $callName as a Call with Parts');
      if (ctx2.callstack.last is CallWithParts) {
        final call = ctx2.callstack.last as CallWithParts;
        final partNumber = CallWithParts.partNumberFromCall(call, name);
        if (partNumber == 0)
          throw CallError('Unable to figure out what to Skip');
        call.replacePart[partNumber] = (ctx) async { };
      }
      else
        throw CallError('Can only Skip in a call with Parts');
      await ctx2.performCall();
    });
  }

}