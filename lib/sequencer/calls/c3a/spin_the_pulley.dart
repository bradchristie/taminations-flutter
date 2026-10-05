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

class SpinThePulley extends Action with CallWithParts, ButCall {

  @override var level = LevelData.C3A;
  @override var numberOfParts = 3;
  @override var butCall = 'Peel Off';
  @override var help = '''Spin the Pulley is a 3-part call:
  1.  Centers or designated dancers Touch if needed and Cast Off 3/4
  2.  Triple Cross
  3.  Peel Off
You can replace Part 3 by adding But (another call).
Skip Part 1 with the call The Pulley.''';
  @override var helplink = 'c3a/spin_the_pulley';

  SpinThePulley(super.name);

  @override
  void performCall(CallContext ctx) {
    if (!name.contains('Spin'))
      ctx.applyCalls('Finish Spin the Pulley');
    else
      super.performCall(ctx);
  }

  @override
   void performPart1(CallContext ctx) {
    if (ctx.dancers.none((d) => ctx.isInWave(d))) {
      if (ctx.actives.length < ctx.dancers.length)
        ctx.applyCalls('Step to a Wave');
      else
        ctx.applyCalls('Centers Step to a Wave');
    }
    ctx.matchStandardFormation();
    ctx.analyze();
    ctx.applyCalls('Centers Cast Off 3/4');
  }

  @override
   void performPart2(CallContext ctx) {
    ctx.applyCalls('Everyone Triple Cross');
  }

  @override
   void performPart3(CallContext ctx) {
    ctx.applyCalls(butCall);
  }

}