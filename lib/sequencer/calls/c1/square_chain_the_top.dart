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

class SquareChainTheTop extends Action with ActivesOnly, CallWithParts {

  @override var level = LevelData.C1;
  @override var numberOfParts = 3;
  @override var help = '''Square Chain the Top has 3 parts:
  1.  Right Pull By and 1/4 In
  2.  Left Spin the Top
  3.  Left Turn Thru
The hands can be swapped with Left Square Chain the Top''';
  @override var helplink = 'c1/square_chain_the_top';
  SquareChainTheTop(String name) : super(name);

  @override
   void performPart1(CallContext ctx) {
    final pullBy = name.contains('Left') ? 'Left Pull By' : 'Pull By';
    ctx.applyCalls(pullBy,'Quarter In');
  }

  @override
   void performPart2(CallContext ctx) {
    final left = name.contains('Left') ? '' : 'Left';
    ctx.applyCalls('$left Spin the Top');
  }

  @override
   void performPart3(CallContext ctx) {
    final left = name.contains('Left') ? '' : 'Left';
    ctx.applyCalls('$left Turn Thru');
  }

}