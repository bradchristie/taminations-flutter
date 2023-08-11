/*
 *     Copyright 2022 Brad Christie
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

class SquareTheBases extends Action with CallWithParts, ButCall {

  @override var level = LevelData.C1;
  @override var numberOfParts = 3;
  @override var butCall = '';
  @override var help = '''Square the Bases has 3 parts:
  1.  Centers Square Thru 3 while Ends Pass Thru and Bend
  2.  Split Square Thru 2
  3.  Trade By
You can replace Parts 2 and 3 with But <another call>''';

  @override var helplink = 'c1/square_the_bases';
  SquareTheBases() : super('Square the Bases');

  //  'But' call replaces both parts 2 and 3
  //  Other modifications can change the number of parts,
  //  so subtract one from whatever that might have done
  @override
  void perform(CallContext ctx) {
    if (!butCall.isBlank)
      numberOfParts -= 1;
    super.perform(ctx);
  }

  @override
   void performPart1(CallContext ctx) {
    //  First part is Center 4 Square Thru 3 while Ends Pass Thru and Ends Bend
    //  So long as we have facing lines we can do that as is
    if (ctx.isLines()) {
      ctx.applyCalls('Centers Square Thru 3 While Ends Pass Thru and Ends Bend');
    } else {
      //  Some dancers are in waves (e.g. tidal wave)
      //  Ends Bend gets confused if centers are in a wave..
      ctx.applyCalls('Center 4 Pass In While Outer 4 Pass Thru');
      ctx.applyCalls('Centers Square Thru 2 While Ends Bend');
    }
  }

  @override
   void performPart2(CallContext ctx) {
    ctx.applyCalls(butCall.isBlank ? 'Split Square Thru 2' : butCall);
  }

  @override
   void performPart3(CallContext ctx) {
    ctx.applyCalls('Trade By');
  }

}