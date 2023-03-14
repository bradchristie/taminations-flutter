/*

  Taminations Square Dance Animations
  Copyright (C) 2023 Brad Christie

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

class Bounce extends ActivesOnlyAction with CallWithParts {

  @override final level = LevelData.C2;
  @override int numberOfParts = 2;
  @override var help = '''Bounce the (somebody) is a two-part call:
  1.  Veer to a back-to-back formation
  2.  (somebody) U-Turn in flow direction''';
  @override var helplink = 'c2/bounce';
  var direction = 'Right';
  var whodancers = <DancerModel>[];
  Bounce(String name) : super(name);

  @override
   void performPart1(CallContext ctx) {
    //  Figure out which way to veer
    final centerBelles = ctx.actives.where((d) => d.data.center && d.data.belle);
    final centerBeaus = ctx.actives.where((d) => d.data.center && d.data.beau);
    direction =
    (centerBeaus.isEmpty && centerBelles.isNotEmpty)
        ? 'Right'
        : (centerBeaus.isNotEmpty && centerBelles.isEmpty)
        ? 'Left'
        : thrower(CallError('Unable to calculate Bounce'));
    //  Remember who to bounce
    final who = name.replaceFirst('Bounce( the)?'.r,'');
    if (who.isBlank)
      throw CallError('Bounce who?');
    final whoctx = CallContext.fromContext(ctx,dancers:ctx.actives);
    if (!who.matches('No\\s*(body|one)'.ri))
      whoctx.applySpecifier(who);
    whodancers = ctx.dancers.where((d) => whoctx.actives.contains(d)).toList();
    ctx.applyCalls('Veer $direction');
  }

  @override
   void performPart2(CallContext ctx) {
    ctx.subContext(whodancers, (ctx2) {
      ctx2.applyCalls('Face $direction', 'Face $direction');
    });
  }

}