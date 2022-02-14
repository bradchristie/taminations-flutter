/*
 *     Copyright 2021 Brad Christie
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

class BlockFormation extends Action {

  @override final level = LevelData.C1;
  BlockFormation(String name) : super(name);

  @override
  Future<void> perform(CallContext ctx) async {
    final blockCall = name.replaceAll('in your block'.ri, '').trim();
    final blockFormation = CallContext.fromXML(TamUtils.getFormation('Blocks'));
    final match = blockFormation.matchFormations(ctx,rotate:90);
    if (match == null)
      throw CallError('Dancers are not in Blocks');
    final ctx1 = CallContext.fromContext(ctx,
      dancers:[ ctx.dancers[match[0]],ctx.dancers[match[5]],
                ctx.dancers[match[2]],ctx.dancers[match[7]]]);
    final ctx2 = CallContext.fromContext(ctx,
        dancers:[ ctx.dancers[match[1]],ctx.dancers[match[4]],
                  ctx.dancers[match[3]],ctx.dancers[match[6]]]);
    //try {
      await ctx1.applyCalls(blockCall);
      ctx1.appendToSource();
      await ctx2.applyCalls(blockCall);
      ctx2.appendToSource();
      ctx.adjustToFormation('Blocks',rotate: 90);
    //} on CallError catch (e) {
    //  print(e);
    //}
  }

}