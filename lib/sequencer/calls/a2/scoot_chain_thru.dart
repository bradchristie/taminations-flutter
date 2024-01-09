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

class ScootChainThru extends Action with CallWithParts {

  @override var numberOfParts = 5;
  @override var level = LevelData.A2;
  @override var helplink = 'a2/scoot_chain_thru';
  @override String get help => '''$name is a 5-part call:
  1.  From waves, leaders${name.contains('Scatter')?'':'Scplit'} Circulate while trailers Extend
      From 1/4 Tag, everyone Extend
  2.  Wave dancers Swing
  3.  Wave dancers Slip
  4.  Wave dancers Swing
  5.  Wave dancers Extend''';
  ScootChainThru(String name) : super(name);

  @override
   void performPart1(CallContext ctx) {
    var split = name.contains('Scatter') ? 'All 8' : 'Split';
    if (ctx.isWaves()) {
      ctx.applyCalls('Leaders Do Your Part $split Circulate'
          ' While Trailers Do Your Part Extend');
    }
    else
      //  Presume 1/4 Tag
      ctx.applyCalls('Extend');
  }

  @override
   void performPart2(CallContext ctx) {
    if (ctx.isWaves())
      ctx.applyCalls('Swing');
    else
      ctx.applyCalls('Center Wave of 4 Swing');
  }

  @override
   void performPart3(CallContext ctx) {
    if (ctx.isWaves())
      ctx.applyCalls('Slip');
    else
      ctx.applyCalls('Center Wave of 4 Slip');
  }

  @override
   void performPart4(CallContext ctx) {
    if (ctx.isWaves())
      ctx.applyCalls('Swing');
    else
      ctx.applyCalls('Center Wave of 4 Swing');
  }

  @override
   void performPart5(CallContext ctx) {
    if (ctx.isWaves())
      ctx.applyCalls('Extend');
    else
      ctx.applyCalls('Center Wave of 4 Step');
  }

}