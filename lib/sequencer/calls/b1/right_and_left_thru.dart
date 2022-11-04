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

class RightAndLeftThru extends ActivesOnlyAction with CallWithParts {

  @override int numberOfParts = 2;
  @override var help = '''Right and Left Thru has 2 parts:
  1.  Pull By
  2.  Courtesy Turn
If the Courtesy Turn is not a boy turning a girl, the level will be marked Plus.''';
  @override var helplink = 'b1/right_and_left_thru';
  RightAndLeftThru(String name) : super(name);

  @override
   void performPart1(CallContext ctx) {
    ctx.applyCalls('Pull By');
  }

  @override
   void performPart2(CallContext ctx) {
    ctx.applyCalls('Courtesy Turn');
  }

}