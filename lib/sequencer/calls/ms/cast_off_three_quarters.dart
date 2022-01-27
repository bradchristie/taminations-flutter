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

class CastOffThreeQuarters extends ActivesOnlyAction {

  @override
  var level = LevelData.MS;
  CastOffThreeQuarters() : super('Cast Off Three Quarters');

  @override
  Future<void> perform(CallContext ctx) async {
    //  Dancers in mini-waves hinge three times
    var waveDancers = ctx.actives.where((d) => ctx.isInWave(d)).toList();
    if (waveDancers.isNotEmpty) {
      await ctx.subContext(waveDancers, (ctx2) async {
        await ctx2.applyCalls('Hinge','Hinge','Hinge');
      });
    }
    //  Couples right of center (they look left to view center)
    //  reverse wheel around 1.5
    var couplesLeft = ctx.actives.where((d) =>
    ctx.isInCouple(d) && d.isCenterLeft &&
        d.data.partner!.isActive && d.data.partner!.isCenterLeft).toList();
    if (couplesLeft.isNotEmpty) {
      await ctx.subContext(couplesLeft, (ctx2) async =>
          await ctx2.applyCalls('Reverse Wheel Around 1.5'));
    }
    //  Couples left of center wheel around 1.5
    var couplesRight = ctx.actives.where((d) =>
    ctx.isInCouple(d) && d.isCenterRight &&
        d.data.partner!.isActive && d.data.partner!.isCenterRight).toList();
    if (couplesLeft.isNotEmpty) {
      await ctx.subContext(couplesRight, (ctx2) async =>
      await ctx2.applyCalls('Wheel Around 1.5'));
    }
    //  If nobody fell in any of these three categories then something's wrong
    if (waveDancers.isEmpty && couplesLeft.isEmpty && couplesRight.isEmpty)
      throw CallError('Unable to calculate Cast Off 3/4');
  }

}