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

mixin CallWithStars {
  var turnStarAmount = 1;
  var turnCall = 'Turn the Star';
  String get turns =>
      [ for (var i=0; i<turnStarAmount; i++) turnCall ].join(' ');

}

class TurnTheStar extends Action {

  TurnTheStar(String name) : super(name);

  @override
  Future<void> perform(CallContext ctx, [int stackIndex=0]) async {
    final callName = name.replaceFirst('(do not )?turn the star.*'.ri, '').trim();
    await ctx.subContext(ctx.dancers, (ctx2) async {
      if (!ctx2.matchCodedCall(callName))
        throw CallError('Unable to find $callName as a Call with Parts');
      if (ctx2.callstack.last is CallWithStars) {
        final call = ctx2.callstack.last as CallWithStars;
        final amountText = TamUtils.normalizeCall(name.replaceFirst(callName,''));
        if (amountText.contains('donot'))
          call.turnStarAmount = 0;
        else if (amountText.contains('14'))
          call.turnStarAmount = 1;
        else if (amountText.contains('12'))
          call.turnStarAmount = 2;
        else if (amountText.contains('34'))
          call.turnStarAmount = 3;
        else if (amountText.contains('Full'))
          call.turnStarAmount = 4;
        else
          throw CallError('Turn the Star how much?');
        await ctx2.performCall();
      } else {
        throw CallError('$callName not recognized as a call with stars');
      }
    });
  }

}