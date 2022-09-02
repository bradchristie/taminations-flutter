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

class ScootChainThru extends Action with CallWithParts {

  @override var numberOfParts = 5;
  @override var level = LevelData.A2;
  @override var helplink = 'a2/scoot_chain_thru';
  @override var help = '''Scoot Chain Thru is a 5-part call:
  1.  From waves, leaders Split Circulate while trailers Extend
      From 1/4 Tag, everyone Extend
  2.  Wave dancers Swing
  3.  Wave dancers Slip
  4.  Wave dancers Swing
  5.  Wave dancers Extend''';
  ScootChainThru(String name) : super(name);

  @override
  Future<void> performPart1(CallContext ctx) async {
    if (ctx.isWaves()) {
      await ctx.applyCalls('Leaders Do Your Part Split Circulate'
          ' While Trailers Do Your Part Extend');
    }
    else
      //  Presume 1/4 Tag
      await ctx.applyCalls('Extend');
  }

  @override
  Future<void> performPart2(CallContext ctx) async {
    if (ctx.isWaves())
      await ctx.applyCalls('Swing');
    else
      await ctx.applyCalls('Center Wave of 4 Swing');
  }

  @override
  Future<void> performPart3(CallContext ctx) async {
    if (ctx.isWaves())
      await ctx.applyCalls('Slip');
    else
      await ctx.applyCalls('Center Wave of 4 Slip');
  }

  @override
  Future<void> performPart4(CallContext ctx) async {
    if (ctx.isWaves())
      await ctx.applyCalls('Swing');
    else
      await ctx.applyCalls('Center Wave of 4 Swing');
  }

  @override
  Future<void> performPart5(CallContext ctx) async {
    if (ctx.isWaves())
      await ctx.applyCalls('Extend');
    else
      await ctx.applyCalls('Center Wave of 4 Step');
  }

}