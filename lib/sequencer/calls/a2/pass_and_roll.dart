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

class PassAndRoll extends Action with CallWithParts {

  @override int numberOfParts = 4;
  @override var level = LevelData.A2;
  final bool isNeighbor;
  final String dir;
  final String left;
  final bool isCross;
  @override var help = '''Pass and Roll is a 4-part call:
  1.  Pass Thru
  2.  Centers Turn Thru, Others Turn Back
  3.  Pass Thru
  4.  Centers Pass Thru, all Right Roll to a Wave
Variations: (Left) Pass and Roll (Your (Cross) Neighbor)''';
  @override String get helplink {
    if (isCross)
      return 'c1/cross_your_neighbor';
    else if (isNeighbor)
      return 'a2/pass_and_roll_your_neighbor';
    else
      return 'a2/pass_and_roll';
  }
  PassAndRoll(String name) :
        dir = name.startsWith('Left') ? 'Left' : 'Right',
        left =  name.startsWith('Left') ? 'Left' : '',
        isNeighbor = name.endsWith('Neighbor'),
        isCross = name.contains('Cross'),
        super(name) {
    if (isCross)
      level = LevelData.C1;
  }

  @override
  Future<void> performPart1(CallContext ctx) async {
    await ctx.applyCalls('$left Pass Thru');
  }

  @override
  Future<void> performPart2(CallContext ctx) async {
    final n = ctx.dancers.length ~/ 2;
    await ctx.applyCalls('Center $n $left Turn Thru While Outer $n Face $dir Face $dir');
  }

  @override
  Future<void> performPart3(CallContext ctx) async {
    await ctx.applyCalls('$left Pass Thru');
  }

  @override
  Future<void> performPart4(CallContext ctx) async {
    final n = ctx.dancers.length ~/ 2;
    final cross = isCross ^ (left.isNotBlank) ? 'left' : '';
    if (isNeighbor)
      await ctx.applyCalls('Center $n $cross Touch and Cast Off 3/4 '
          'While Outer $n Face $dir Face $dir Face $dir');
    else
      await ctx.applyCalls('Center $n $left Pass Thru','$dir Roll to a Wave');
  }

}