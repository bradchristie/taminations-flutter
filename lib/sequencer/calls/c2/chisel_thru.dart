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

class ChiselThru extends Action with CallWithParts {

  @override int numberOfParts = 3;
  @override final level = LevelData.C2;
  @override var help = '''Chisel Thru is a 3-Part call:
  1.  Concentric Pass In
  2.  Pass Thru and 1/4 In
  3.  Pass In''';
  @override var helplink = 'c2/chisel_thru';
  ChiselThru() : super('Chisel Thru');

  @override
   void performPart1(CallContext ctx) {
    ctx.applyCalls('Concentric Pass In');
  }

  @override
   void performPart2(CallContext ctx) {
    ctx.analyze();
    ctx.applyCalls('Pass Thru and 1/4 In');
  }

  @override
   void performPart3(CallContext ctx) {
    ctx.applyCalls('Pass In');
  }

}