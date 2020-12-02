/*

  Taminations Square Dance Animations
  Copyright (C) 2020 Brad Christie

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

class BraceThru extends Action {

  @override
  var level = LevelData.A1;
  BraceThru() : super('Brace Thru');

  @override
  Future<void> perform(CallContext ctx, [int stackIndex = 0]) async {
    //  TODO check is this necessary or should BraceThru inherit from ActivesOnly?
    await ctx.subContext(ctx.actives, (ctx2) async {
      //  Perform Pass Thru which will work from waves or facing couples
      await ctx2.applyCalls('Pass Thru');
      //  Do some checking that we can finish Brace Thru from here
      ctx2.analyze();
      for (var d in ctx2.dancers) {
        var partner = d.data.partner ?? thrower(CallError('Dancer $d cannot Brace Thru'));
        if (d.gender == partner.gender)
          throw CallError('Same-sex dancers cannot Brace Thru');
      }
      //  Finish the call
      var normal = ctx2.dancers.where((d) => d.data.beau ^ (d.gender == Gender.GIRL));
      var sashay = ctx2.dancers.where((d) => d.data.beau ^ (d.gender == Gender.BOY));
      if (normal.isNotEmpty) {
        await ctx2.subContext(normal, (ctx3) async {
          await ctx3.applyCalls('Courtesy Turn');
        });
      }
      if (sashay.isNotEmpty) {
        await ctx2.subContext(sashay, (ctx3) async {
          await ctx3.applyCalls('Turn Back');
        });
      }
    });
  }

}