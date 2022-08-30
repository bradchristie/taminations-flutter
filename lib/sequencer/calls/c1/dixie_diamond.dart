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

class DixieDiamond extends ActivesOnlyAction with CallWithParts {

  @override var level = LevelData.C1;
  @override int numberOfParts = 2;
  @override var help = '''Dixie Diamond is a 2-part call:
  1.  Dixie Style to a Wave
  2.  Centers Hinge, Ends Turn Back''';
  @override var helplink = 'c1/dixie_diamond';
  DixieDiamond(String name) : super(name);

  @override
  Future<void> performPart1(CallContext ctx) async {
    final reverse = name.contains('reverse'.ri) ? 'Reverse' : '';
    await ctx.applyCalls('$reverse Dixie Style to a Wave');
  }

  @override
  Future<void> performPart2(CallContext ctx) async {
    ctx.analyze();
    await ctx.applyCalls('Centers Hinge While Ends Turn Back');
  }

}