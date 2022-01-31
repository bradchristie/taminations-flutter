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

class Bounce extends ActivesOnlyAction with CallWithParts {

  @override final level = LevelData.C2;
  @override int numberOfParts = 2;
  var direction = 'Right';
  Bounce(String name) : super(name);

  @override
  Future<void> perform(CallContext ctx) async {
    //  Do the call
    await super.perform(ctx);
  }

  @override
  Future<void> performPart1(CallContext ctx) async {
    //  Figure out which way to veer
    final centerBelles = ctx.actives.where((d) => d.data.center && d.data.belle);
    final centerBeaus = ctx.actives.where((d) => d.data.center && d.data.beau);
    direction =
    (centerBeaus.isEmpty && centerBelles.isNotEmpty)
        ? 'Right'
        : (centerBeaus.isNotEmpty && centerBelles.isEmpty)
        ? 'Left'
        : thrower(CallError('Unable to calculate Bounce'));
    await ctx.applyCalls('Veer $direction');
  }

  @override
  Future<void> performPart2(CallContext ctx) async {
    //  Remember who to bounce
    final who = name.replaceFirst('Bounce( the)?'.r,'');
    final whoctx = CallContext.fromContext(ctx,dancers:ctx.actives);
    if (!who.matches('No\\s*(body|one)'.ri))
      await whoctx.applySpecifier(who);
    final whodancers = ctx.dancers.where((d) => whoctx.actives.contains(d)).toList();
    await ctx.subContext(whodancers, (ctx2) async {
      await ctx2.applyCalls('Face $direction', 'Face $direction');
    });
  }

}