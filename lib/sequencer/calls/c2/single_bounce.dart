/*
 * *     Copyright 2024 Brad Christie
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

class SingleBounce extends Action with ActivesOnly, CallWithParts {

  @override final level = LevelData.C2;
  @override int numberOfParts = 2;
  @override var help = '''Single Bounce the (somebody) is a two-part call:
  1.  Single Veer to a back-to-back formation
  2.  (somebody) U-Turn in flow direction''';
  @override var helplink = 'c2/bounce';
  var beaudancers = <DancerModel>[];
  var belledancers = <DancerModel>[];

  SingleBounce(super.name);

  @override
   void performPart1(CallContext ctx) {
    //  Remember who to bounce
    final who = name.replaceFirst('Single Bounce( the)?'.r,'');
    if (who.isBlank)
      throw CallError('Bounce who?');
    final whoctx = CallContext.fromContext(ctx,dancers:ctx.actives);
    whoctx.analyze();
    if (!who.matches('No\\s*(body|one)'.ri))
      whoctx.applySpecifier(who);
    beaudancers = whoctx.actives.where((d) => d.data.beau).toList();
    belledancers = whoctx.actives.where((d) => d.data.belle).toList();
    //  Now do the veer, which we can cheat by finishing Pass Thru
    if (ctx.actives.every((d) => d.data.beau))
      ctx.applyCalls('Pass Thru');
    else if (ctx.actives.every((d) => d.data.belle))
      ctx.applyCalls('Left Pass Thru');
    else
      ctx.applyCalls('Beaus Pass Thru While Belles Left Pass Thru');

  }

  @override
   void performPart2(CallContext ctx) {
    if (beaudancers.isNotEmpty) {
      ctx.subContext(beaudancers, (ctx2) {
        ctx2.applyCalls('Face Right', 'Face Right');
      });
    }
    if (belledancers.isNotEmpty) {
      ctx.subContext(belledancers, (ctx2) {
        ctx2.applyCalls('Face Left', 'Face Left');
      });
    }
  }

}