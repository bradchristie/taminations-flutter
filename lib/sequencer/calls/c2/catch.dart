/*

  Taminations Square Dance Animations
  Copyright (C) 2024 Brad Christie

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

class Catch extends Action with ActivesOnly, CallWithParts {

  @override int numberOfParts = 3;
  @override var level = LevelData.C2;
  @override var help = '''Catch (n) is a 3-part call:
  1.  Square Thru (n) to a Wave.  Can be modified by starting the call with Left or Split
  2.  Centers Trade.  At C-3A this can be replaced by giving another call between Catch and (n).
  3.  Step and Fold''';
  @override var helplink = 'c2/catch';
  Catch(String name) : super(name);
  late String direction = name.contains('Left') ? 'Left' : '';
  late String split = name.contains('Split') ? 'Split' : '';
  late String all4 = norm.contains('All4Couples') ? 'All 4 Couples' : '';
  late int count = normalizeCall(name).last.toIntOrNull()
      ?? thrower(CallError('Catch how much?'));

  @override
   void performPart1(CallContext ctx) {
    ctx.applyCalls('$all4 $direction $split Square Thru $count to a Wave');
  }

  @override
   void performPart2(CallContext ctx) {
    var part2 = 'catch(.*)[1234]'.ri.firstMatch(name)![1]!;
    if (part2.isBlank)
      part2 = 'Centers Trade';
    else
      level = LevelData.C3A;
    ctx.applyCalls(part2);
  }

  @override
   void performPart3(CallContext ctx) {
    var all8 = all4.isBlank ? '' : 'All 8';
    ctx.applyCalls('$all8 Step and Fold');
  }

}
