/*

  Taminations Square Dance Animations
  Copyright (C) 2022 Brad Christie

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

import '../../../moves.g.dart';
import '../common.dart';

class TurnAndDeal extends Action {

  @override final level = LevelData.A1;
  @override var help = '''[Left] Turn and Deal
Works with one or two Lines of 4.  A tidal formation is two Lines of 4.
For larger lines, use
Line of (6 or 8) [Left] Turn and Deal''';
  @override var helplink = 'a1/turn_and_deal';
  TurnAndDeal(String name) : super(name);

  @override
  Path performOne(Dancer d, CallContext ctx) {
    final dir = ctx.tagDirection(d);
    if (dir.isBlank)
      throw CallError('Unable to calculate Turn and Deal');
    final amount = ctx.isTidal() ? 1.5 : 1.0;
    final dist = !ctx.isTidal() ? 2.0 :
    d.data.center ? 1.5 : 0.5;
    final sign = (dir=='Left') ? 1.0 : -1.0;
    return (dir=='Left' ? UmTurnLeft : UmTurnRight)
        .skew(sign*(name.startsWith('Left') ? amount : -amount),dist*sign);
  }

}

class BigLineTurnAndDeal extends ActivesOnlyAction {

  @override final level = LevelData.A1;
  @override var help = TurnAndDeal('').help;
  BigLineTurnAndDeal(String name) : super(name);

  @override
  void perform(CallContext ctx) {
    final left = name.contains('Left') ? 'Left' : '';
    final length = norm.contains('6') ? '6' : '8';
    if (length == '6' && ctx.dancers.length > 6)
      ctx.applyCalls('Wave of 6 $name');
    else {
      ctx.applyCalls('Line of $length $left Half Tag');
      super.perform(ctx);
    }
  }

  @override
  Path performOne(Dancer d, CallContext ctx) {
    d.animate(0.0);
    return d.isCenterRight ? QuarterRight : QuarterLeft;
  }

}