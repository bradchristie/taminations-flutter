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

class GrandSingleCrossAndWheel extends Action with IsLeft, CallWithParts {

  @override final level = LevelData.C2;
  @override int numberOfParts = 2;
  @override var help = '''Grand Single Cross and Wheel is a 2-part call:
  1.  Hinge
  2.  Center 6 Step, others Fold''';
  @override var helplink = 'c2/cross_and_wheel';
  GrandSingleCrossAndWheel(name) : super(name);

  @override
   void performPart1(CallContext ctx) {
    ctx.applyCalls('$left Hinge');
  }

  @override
   void performPart2(CallContext ctx) {
    ctx.analyze();
    ctx.applyCalls('Center 6 Step While Very Ends Fold');
  }

}