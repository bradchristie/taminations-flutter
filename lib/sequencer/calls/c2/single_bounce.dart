/*

  Taminations Square Dance Animations
  Copyright (C) 2026 Brad Christie

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

class SingleBounce extends Action with CallWithParts, ActivesOnly {

  @override final level = LevelData.C2;
  @override int numberOfParts = 2;
  @override var help = '''Single Bounce the (somebody) is a two-part call:
  1.  Single Veer to a back-to-back formation
  2.  (somebody) U-Turn in flow direction''';
  @override var helplink = 'c2/bounce';
  var beaudancers = <Dancer>[];
  var belledancers = <Dancer>[];

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