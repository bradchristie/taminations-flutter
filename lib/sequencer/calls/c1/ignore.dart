/*

  Taminations Square Dance Animations
  Copyright (C) 2021 Brad Christie

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
import '../coded_call.dart';

class Ignore extends Action {

  @override final level = LevelData.C1;
  Ignore(String name) : super(name);

  @override
  Future<void> perform(CallContext ctx, [int stackIndex = 0]) async {
    //  Who should we ignore?
    final regex = 'ignore (?:the )?((?:${CodedCall.specifier} )+)(?:and )?(?:for a )?(.+)'.ri;
    final match = regex.firstMatch(name);
    final who = match.group(1);
    final call = match.group(2);
    await ctx.subContext(ctx.dancers, (ctx2) async {
      //  Remember the dancers that we will ignore
      await ctx2.interpretCall(who,noAction: true);
      await ctx2.performCall();
      final ignoreDancers = ctx2.actives;
      //  Do the call
      for (final d in ctx2.dancers)
        d.data.active = true;
      await ctx2.applyCalls(call);
      //  Now erase the action of the ignored dancers
      ctx2.dancers.where((d) => ignoreDancers.contains(d))
          .forEach((d) { d.path = Path(); });
    });


  }

}