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

class LoadTheBoat extends Action with CallWithParts, ButCall {

  @override int numberOfParts = 4;
  @override var level = LevelData.PLUS;
  @override var butCall = 'Pass Thru';
  @override var help = '''Load the Boat is a 4-part call:
  1.  Centers Pass Thru, Ends Move Forward and pass another End
  2.  Centers Face Out, Ends Move Forward and pass another End
  3.  Centers Trade, Ends Move Forward and pass another End
  4.  Centers Pass Thru, Ends Face In
Part 4 for the Centers can be replaced with But (another call)''';
  @override var helplink = 'plus/load_the_boat';

  LoadTheBoat() : super('Load the Boat');

  String _endsPart(CallContext ctx) {
    if (ctx.outer(4).every((d) => d.isFacingIn) ||
        ctx.outer(4).every((d) => d.isOnAxis))
      return 'Pass Thru';
    else if (ctx.outer(4).every((d) => d.isFacingOut))
      return 'Bend and Pass Thru';
    else
      throw CallError('Cannot Load the Boat from this formation');
  }

  @override
  Future<void> performPart1(CallContext ctx) async {
    await ctx.subContext(ctx.outer(4), (ctx2) async {
      await ctx2.applyCalls(_endsPart(ctx2));
    });
    await ctx.subContext(ctx.center(4), (ctx2) async {
      await ctx2.applyCalls('Pass Thru');
    });
  }

  @override
  Future<void> performPart2(CallContext ctx) async {
    ctx.analyze();
    await ctx.applyCalls('Ends ${_endsPart(ctx)} While Center 4 Face Out');
  }

  @override
  Future<void> performPart3(CallContext ctx) async {
    //  Center 4 might be off a bit, snap to boxes so Ends Bend works
    ctx.adjustToFormation('Eight Chain Thru',rotate: 90);
    ctx.analyze();
    await ctx.applyCalls('Ends ${_endsPart(ctx)} While Center 4 Trade');
  }

  @override
  Future<void> performPart4(CallContext ctx) async {
    ctx.analyze();
    await ctx.applyCalls('Ends Face In While Center 4 $butCall');
  }

}