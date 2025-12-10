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

class SplitSquareChainTheTop extends Action with ActivesOnly, CallWithParts, IsLeft, IsToAWave {

  @override var level = LevelData.C1;
  @override var numberOfParts = 3;
  @override var help = '''Split Square Chain the Top has 3 parts:
  1.  Facing Dancers Right Pull By and 1/4 In
  2.  Left Spin the Top
  3.  Left Turn Thru
The hands can be swapped with Left Split Square Chain the Top''';
  @override var helplink = 'c1/split_square_thru_variations';

  SplitSquareChainTheTop(super.name);

  @override
  void performCall(CallContext ctx) {
    if (ctx.actives.length < 8)
      throw CallError('Not enough dancers');
    super.performCall(ctx);
  }

  @override
  void performPart1(CallContext ctx) {
    ctx.applyCalls('Facing Dancers $left Pull By and Quarter In');
  }

  @override
  void performPart2(CallContext ctx) {
    ctx.applyCalls('$antiLeft Spin the Top');
  }

  @override
  void performPart3(CallContext ctx) {
    if (isToAWave)
      ctx.applyCalls('Trade');
    else
      ctx.applyCalls('$antiLeft Turn Thru');
  }

}