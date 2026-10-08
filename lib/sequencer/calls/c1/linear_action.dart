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

class LinearAction extends Action with CallWithParts, ButCall {

  @override int numberOfParts = 3;
  @override final level = LevelData.C1;
  @override var help = '''Linear Action is a 3-part call:
  1.  Hinge
  2.  Center 4 Box Circulate 1 1/2, others Trade
  3.  Center wave of 4 Cast Off 3/4, others Hourglass Circulate
The final Cast Off 3/4 can be replaced with But (another call)''';
  @override var helplink = 'c1/linear_action';
  List<Dancer> centerDancers = [];
  List<Dancer> outerDancers = [];

  LinearAction(super.name);

  @override
   void performPart1(CallContext ctx) {
    centerDancers = ctx.center(4);
    outerDancers = ctx.outer(4);
    ctx.applyCalls('Hinge');
  }

  @override
   void performPart2(CallContext ctx) {
    ctx.subContext(ctx.dancers, (ctxPart2) {
      ctxPart2.subContext(centerDancers, (ctx2) {
        ctx2.applyCalls('Box Circulate 1.5');
      });
      ctxPart2.checkCenters();
      ctxPart2.subContext(outerDancers, (ctx2) {
        ctx2.applyCalls('Trade');
      });
    });
  }

  @override
   void performPart3(CallContext ctx) {
    ctx.applyCalls('Center Wave of 4 $butCall '
        'While Others Do Your Part Hourglass Circulate');
  }

}