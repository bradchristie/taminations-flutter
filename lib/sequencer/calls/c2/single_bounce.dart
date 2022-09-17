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

class SingleBounce extends ActivesOnlyAction with CallWithParts {

  @override final level = LevelData.C2;
  @override int numberOfParts = 2;
  @override var help = '''Single Bounce the (somebody) is a two-part call:
  1.  Single Veer to a back-to-back formation
  2.  (somebody) U-Turn in flow direction''';
  @override var helplink = 'c2/bounce';
  var beaudancers = <Dancer>[];
  var belledancers = <Dancer>[];
  SingleBounce(String name) : super(name);

  @override
  Future<void> performPart1(CallContext ctx) async {
    //  Remember who to bounce
    final who = name.replaceFirst('Single Bounce( the)?'.r,'');
    if (who.isBlank)
      throw CallError('Bounce who?');
    final whoctx = CallContext.fromContext(ctx,dancers:ctx.actives);
    if (!who.matches('No\\s*(body|one)'.ri))
      await whoctx.applySpecifier(who);
    beaudancers = whoctx.actives.where((d) => d.data.beau).toList();
    belledancers = whoctx.actives.where((d) => d.data.belle).toList();
    //  Now do the veer, which we can cheat by finishing Pass Thru
    if (ctx.actives.every((d) => d.data.beau))
      await ctx.applyCalls('Pass Thru');
    else if (ctx.actives.every((d) => d.data.belle))
      await ctx.applyCalls('Left Pass Thru');
    else
      await ctx.applyCalls('Beaus Pass Thru While Belles Left Pass Thru');

  }

  @override
  Future<void> performPart2(CallContext ctx) async {
    if (beaudancers.isNotEmpty) {
      await ctx.subContext(beaudancers, (ctx2) async {
        await ctx2.applyCalls('Face Right', 'Face Right');
      });
    }
    if (belledancers.isNotEmpty) {
      await ctx.subContext(belledancers, (ctx2) async {
        await ctx2.applyCalls('Face Left', 'Face Left');
      });
    }
  }

}