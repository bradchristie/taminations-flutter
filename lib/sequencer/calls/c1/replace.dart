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

class Replace extends Action {

  @override final level = LevelData.C1;
  Replace(String name) : super(name);

  @override
  Future<void> perform(CallContext ctx, [int stackIndex = 0]) async {
    final callName = name.replaceFirst('(but )?replace .*'.ri,'').trim();
    final replacementName = name.replaceFirst('.* with'.ri, '').trim();
    await ctx.subContext(ctx.dancers, (ctx2) async {
      if (!ctx2.matchCodedCall(callName))
        throw CallError('Unable to find $callName as a Call with Parts');
      final replacement = (CallContext ctx) async {
        await ctx.applyCalls(replacementName);
      };
      if (ctx2.callstack.last is CallWithParts) {
        final call = ctx2.callstack.last as CallWithParts;
        if (name.contains('First|1st'.ri))
          call.replacePart1 = replacement;
        else if (name.contains('Second|2nd'.ri))
          call.replacePart2 = replacement;
        else if (name.contains('Third|3rd'.ri))
          call.replacePart3 = replacement;
        else if (name.contains('Fourth|4th'.ri))
          call.replacePart4 = replacement;
        else if (name.contains('Fifth|5th'.ri))
          call.replacePart5 = replacement;
        else if (name.contains('last'.ri))
          call.lastPart = replacement;
        else
          throw CallError('Unable to figure out what to Replace');
      }
      else
        throw CallError('Can only Replace in a call with Parts');
      await ctx2.performCall();
    });
  }

}