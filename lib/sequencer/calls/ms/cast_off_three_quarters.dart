/*

  Taminations Square Dance Animations
  Copyright (C) 2024 Brad Christie

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

class CastOffThreeQuarters extends Action with ActivesOnly {

  @override var level = LevelData.MS;
  @override var help = '''Cast Off (fraction)
  You can use 1/4, 1/2, 3/4 for the fraction.
  Dancers must be couples or mini-waves not centered on an axis.''';
  @override var helplink = 'ms/cast_off_three_quarters';
  CastOffThreeQuarters(String name) : super(name);

  @override
  void performCall(CallContext ctx) {
    var waveDancers = ctx.actives.where((d) => ctx.isInWave(d)).toList();
    var couplesLeft = ctx.actives.where((d) =>
    ctx.isInCouple(d) && d.isCenterLeft &&
        d.data.partner!.isActive && d.data.partner!.isCenterLeft).toList();
    var couplesRight = ctx.actives.where((d) =>
    ctx.isInCouple(d) && d.isCenterRight &&
        d.data.partner!.isActive && d.data.partner!.isCenterRight).toList();

    //  Dancers in mini-waves hinge three times
    if (waveDancers.isNotEmpty) {
      ctx.subContext(waveDancers, (ctx2) {
        if (norm.endsWith('14'))
          ctx2.applyCalls('Hinge');
        else if (norm.endsWith('12'))
          ctx2.applyCalls('Hinge','Hinge');
        else
          ctx2.applyCalls('Hinge','Hinge','Hinge');
      });
    }

    //  Couples right of center (they look left to view center)
    //  reverse wheel around 1.5
    if (couplesLeft.isNotEmpty) {
      ctx.subContext(couplesLeft, (ctx2) {
        if (norm.endsWith('14'))
          ctx2.applyCalls('Half Reverse Wheel Around');
        else if (norm.endsWith('12'))
          ctx2.applyCalls('Reverse Wheel Around');
        else
          ctx2.applyCalls('Reverse Wheel Around 1.5');
      });
    }

    //  Couples left of center wheel around 1.5
    if (couplesRight.isNotEmpty) {
      ctx.subContext(couplesRight, (ctx2) {
        if (norm.endsWith('14'))
          ctx2.applyCalls('Half Wheel Around');
        else if (norm.endsWith('12'))
          ctx2.applyCalls('Wheel Around');
        else
          ctx2.applyCalls('Wheel Around 1.5');
      });
    }
    //  If nobody fell in any of these three categories then something's wrong
    if (waveDancers.isEmpty && couplesLeft.isEmpty && couplesRight.isEmpty)
      throw CallError('Unable to calculate Cast Off 3/4');
    if ((ctx.actives - waveDancers - couplesRight - couplesLeft).isNotEmpty)
      throw CallError('Not all dancers can Cast Off 3/4');
  }

}