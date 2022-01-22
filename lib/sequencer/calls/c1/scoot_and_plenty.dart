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

class ScootAndPlenty extends Action with CallWithParts, CallWithStars {

  @override int numberOfParts = 4;
  @override final level = LevelData.C1;
  @override var turnStarAmount = 2;
  @override var turnStarCall = 'Split Circulate';
  String dir = 'Right';
  ScootAndPlenty(String name) : super(name);

  @override
  Future<void> performPart1(CallContext ctx) async {
    if (ctx.dancersHoldingLeftHands(isGrand: false).isNotEmpty)
      dir = 'Left';
    await ctx.applyCalls('Scoot Back');
  }

  @override
  Future<void> performPart2(CallContext ctx) async {
    await ctx.applyCalls('Center 4 Step and Fold '
        'While Outer 4 Face $dir and Counter Rotate');
    ctx.adjustToFormation('Normal Lines Compact');
  }

  @override
  Future<void> performPart3(CallContext ctx) async {
    await ctx.applyCalls(starTurns);
  }

  @override
  Future<void> performPart4(CallContext ctx) async {
    await ctx.applyCalls('Outer 4 Counter Rotate and Roll '
        'While Center 4 1/2 Zoom');
    ctx.adjustToFormation('Quarter Tag');
  }

}