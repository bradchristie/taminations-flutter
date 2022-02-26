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
import '../common/do_your_part.dart';
import '../common/do_one_part.dart';

class Start extends Action {

  @override final level = LevelData.C1;
  Start(String name) : super(name);

  @override
  Future<void> perform(CallContext ctx) async {
    final finishCall = name.replaceFirst('^start\\s+'.ri,'');
    //  There has to be a subset of dancers selected to Start
    if (ctx.actives.length >= ctx.dancers.length)
      throw CallError('Who is supposed to start?');

    await ctx.subContext(ctx.actives, (dypctx) async {
      //  Run DYP for the call, but save the intermediate context,
      //    which will be a XMLCall.
      final p = await DoYourPart(finishCall).findYourPart(dypctx);
      //  Run Do the 1st Part (which is a CodedCall)
      //  of the call on the starting formation
      //  of the intermediate context.
      final pctx = p.firstValue;
      final mapping = p.secondValue;
      await DoOnePart('Do the First Part of $finishCall').perform(pctx);
      //  Copy path movements from call to sequence
      for (var i = 0; i < mapping.length; i++) {
        final m = mapping[i];
        // TODO check for esymmetric call!
        dypctx.dancers[i].path.add(pctx.dancers[m].path);
      }
    });
    //  Extend paths of all dancers so others don' start
    //  until the selected dancers have finished the 1st part
    ctx.extendPaths();
    //  Now everyone is active
    for (var d in ctx.dancers)
      d.data.active = true;
    //  And finish the call
    await ctx.applyCalls('Finish $finishCall');
  }

}