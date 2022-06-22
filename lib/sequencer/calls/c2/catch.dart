/*

  Taminations Square Dance Animations
  Copyright (C) 2021 Brad Christie

  This program is free software: you can redistribute it and/or modify
  it under the terms of the GNU General Public License as published by
  the Free Software Foundation, either version 3 of the License, or
  (at your option) any later version.

  This program is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  GNU General Public License for more details.

  You should have received a copy of the GNU General Public License
  along with this program.  If not, see <http://www.gnu.org/licenses/>.

*/

import '../common.dart';

class Catch extends ActivesOnlyAction with CallWithParts {

  @override int numberOfParts = 3;
  @override var level = LevelData.C2;
  Catch(String name) : super(name);
  late String direction = name.contains('Left') ? 'Left' : '';
  late String split = name.contains('Split') ? 'Split' : '';
  late int count = TamUtils.normalizeCall(name).last.toIntOrNull()
      ?? thrower(CallError('Catch how much?'));

  @override
  Future<void> perform(CallContext ctx) async {
    await super.perform(ctx);
  }

  @override
  Future<void> performPart1(CallContext ctx) async {
    await ctx.applyCalls('$direction $split Square Thru $count to a Wave');
  }

  @override
  Future<void> performPart2(CallContext ctx) async {
    var part2 = 'catch(.*)[1234]'.ri.firstMatch(name)![1]!;
    if (part2.isBlank)
      part2 = 'Centers Trade';
    else
      level = LevelData.C3A;
    await ctx.applyCalls(part2);
  }

  @override
  Future<void> performPart3(CallContext ctx) async {
    await ctx.applyCalls('Step and Fold');
  }

}
