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

class MiniBusy extends Action with CallWithParts, ButCall {

  @override int numberOfParts = 3;
  @override final level = LevelData.A2;
  @override var butCall = 'Flip the Diamond';
  @override var help = '''Mini-Busy is a 3-part call:
  Leaders (1) Face In (2) Step (3) Face In
  Trailers (1) As Couples Extend (2) Very Centers Hinge (3) Flip the Diamond
Trailers part 3 can be replace with But (another call)''';
  @override var helplink = 'a2/mini_busy';

  MiniBusy(super.name);

  @override
   void performPart1(CallContext ctx) {
    CallWithParts.performOnePart(ctx, 'Mini-Busy', 1);
  }

  @override
   void performPart2(CallContext ctx) {
    ctx.applyCalls('Very Centers Hinge While Outer 4 Step');
  }

  @override
   void performPart3(CallContext ctx) {
    ctx.applyCalls('Center 4 $butCall While Outer 4 Face In');
  }


}