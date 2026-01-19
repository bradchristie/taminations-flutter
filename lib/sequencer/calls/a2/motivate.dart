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

class Motivate extends Action with CallWithParts, CallWithStars, ButCall {

  @override int numberOfParts = 4;
  @override final level = LevelData.A2;
  @override var turnStarAmount = 2;
  @override var help = '''Motivate is a 4-part call:
  1.  Circulate
  2.  Center 4 Cast Off 3/4, others 1/2 Circulate
  3.  Center 4 Turn the Star 1/2, others Trade
  4.  Wave of 4 in the center Cast Off 3/4, others Hourglass Circulate
The star amount can be changed with Turn the Star (fraction).
The final Cast Off 3/4 can be replaced with But (another call).''';
  @override var helplink = 'a2/motivate';
    var StarFormation = Formation('', dancers:[
    DancerModel.fromData(gender:Gender.BOY,x:1,y:0,angle:270),
    DancerModel.fromData(gender:Gender.GIRL,x:3,y:0,angle:90),
    DancerModel.fromData(gender:Gender.BOY,x:5,y:0,angle:270),
    DancerModel.fromData(gender:Gender.GIRL,x:0,y:1,angle:0),
  ]);


  Motivate(super.name);

  @override
   void performPart1(CallContext ctx) {
    ctx.applyCalls('Circulate');
  }

  @override
   void performPart2(CallContext ctx) {
    ctx.applyCalls('Center 4 Cast Off 3/4 '
        'While Others Half Circulate');
    ctx.adjustToFormation(StarFormation);
  }

  @override
   void performPart3(CallContext ctx) {
    ctx.applyCalls('Outer 4 Trade '
        'While Center Star $starTurns');
  }

  @override
   void performPart4(CallContext ctx) {
    var cw4 = ctx.centerWaveOf4() ??
        thrower<List<DancerModel>>(CallError('Unable to calculate Motivate'));
    ctx.subContext(cw4, (ctx2) {
      ctx2.applyCalls(butCall);
    });
    ctx.subContext(ctx.dancers-cw4, (ctx3) {
      ctx3.applyCalls('Do Your Part Hourglass Circulate');
    });
  }

}