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

class Sidetrack extends ActivesOnlyAction with CallWithParts {

  @override var level = LevelData.C3B;
  @override var numberOfParts = 3;
  @override var help = '''Sidetrack has 3 parts:
  1.  Zig Zag
  2.  Counter Rotate
  3.  Roll
Variations
  Single Sidetrack - replace Part 2 with Lockit
  Split Sidetrack - replace Part 2 with Split Counter Rotate''';
  @override var helplink = 'c3b/sidetrack';
  Sidetrack(String name) : super(name);

  @override
   void performPart1(CallContext ctx) {
    ctx.applyCalls('Zig Zag');
    ctx.matchStandardFormation();
  }

  @override
   void performPart2(CallContext ctx) {
    if (name.contains('single'.ri))
      ctx.applyCalls('Lockit');
    else if (name.contains('split'.ri))
      ctx.applyCalls('Split Counter Rotate');
    else
      ctx.applyCalls('Counter Rotate');
  }

  @override
   void performPart3(CallContext ctx) {
    ctx.applyCalls('Roll');
  }

}