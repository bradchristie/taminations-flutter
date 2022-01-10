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
  Future<void> perform(CallContext ctx, [int stackIndex = 0]) async {
    final ordinals = '(first|second|third|fourth|fifth|1st|2nd|3rd|4th|5th|last)';
    final callName = name.replaceFirst('(but )?skip the $ordinals part'.ri,'').trim();
    await ctx.subContext(ctx.dancers, (ctx2) async {
      if (!ctx2.matchCodedCall(callName))
        throw CallError('Unable to find $callName as a Call with Parts');
      if (ctx2.callstack.last is CallWithParts) {
        final call = ctx2.callstack.last as CallWithParts;
        if (name.contains('(First|1st)'.ri))
          call.replacePart1 = (CallContext ctx) async { };
        else if (name.contains('(Second|2nd)'.ri))
          call.replacePart2 = (CallContext ctx) async { };
        else if (name.contains('(Third|3rd)'.ri))
          call.replacePart3 = (CallContext ctx) async { };
        else if (name.contains('(Fourth|4th)'.ri))
          call.replacePart4 = (CallContext ctx) async { };
        else if (name.contains('(Fifth|5th)'.ri))
          call.replacePart5 = (CallContext ctx) async { };
        else if (name.contains('Last'.ri))
          call.lastPart = (CallContext ctx) async { };
        else
          throw CallError('Unable to figure out what to Skip');
      }
      else
        throw CallError('Can only Skip in a call with Parts');
      await ctx2.performCall();
    });
  }

}