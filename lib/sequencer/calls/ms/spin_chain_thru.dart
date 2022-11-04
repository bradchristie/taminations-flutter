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

class SpinChainThru extends Action with CallWithParts {

  @override int numberOfParts = 4;
  @override var level = LevelData.MS;
  @override var help = '''Spin Chain Thru has 4 parts:
  1.  Swing
  2.  Centers Cast Off 3/4
  3.  Very Centers Trade
  4.  Centers Cast Off 3/4''';
  @override var helplink = 'ms/spin_chain_thru';
  SpinChainThru(name) : super(name);

  @override
   void performPart1(CallContext ctx) {
    ctx.applyCalls('Swing');
  }

  @override
   void performPart2(CallContext ctx) {
    ctx.applyCalls('Centers Cast Off 3/4');
  }

  @override
   void performPart3(CallContext ctx) {
    ctx.applyCalls('Very Centers Trade');
  }

  @override
   void performPart4(CallContext ctx) {
    ctx.applyCalls('Centers Cast Off 3/4');
  }

}