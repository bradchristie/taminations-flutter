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

import 'package:taminations/sequencer/calls/common/call_with_named_parts.dart';

import '../common.dart';

class Percolate extends Action with
    CallWithParts, CallWithNamedParts, ButCall, IsToAWave {

  @override int numberOfParts = 3;
  @override final level = LevelData.C1;
  @override var butCall = 'Hinge and Cross';
  @override var ignoreSpecifier = true;
  @override var help = '''Percolate is a 3-part call:
  1.  Circulate
  2.  1/2 Circulate
  3.  Center 4 Hinge and Cross, others Turn Thru
The Hinge and Cross can be replaced with But (another call)''';
  @override var helplink = 'c1/percolate';

  Percolate(super.name) {
    namedParts = { 'Turn Thru' : (ctx) {
      var turnCall = ctx.outer(4).every((d) => d.data.belle)
          ? 'Left Turn Thru' : 'Turn Thru';
      if (isToAWave)
        turnCall = 'Trade';
      ctx.applyCalls(turnCall);
    } };
  }

  @override
   void performPart1(CallContext ctx) {
    ctx.applyCalls('Circulate');
  }

  @override
   void performPart2(CallContext ctx) {
    ctx.applyCalls('Half Circulate');
  }

  @override
   void performPart3(CallContext ctx) {
    ctx.analyze();
    var waveOf4 = ctx.centerWaveOf4() ??
        thrower<List<DancerModel>>('');
    ctx.subContext(waveOf4, (ctx2) {
      ctx2.applyCalls(butCall);
    });
    ctx.subContext(ctx.dancers-waveOf4, (ctx3) {
      namedParts['Turn Thru']!(ctx3);
    });
  }

}