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

//  This class covers all the variations of Tag Your Neighbor
class TagYourNeighbor extends Action with CallWithParts {

  @override final level = LevelData.C2;
  @override var numberOfParts = 2;
  @override var help = '''Tag Your Neighbor is a 2-part call:
  1.  Half Tag
  2.  Follow Your Neighbor
Variations: (Left) (Vertical) Tag Your (Criss) (Cross) Neighbor''';
  @override var helplink = 'c2/any_tagging_call_your_neighbor';
  TagYourNeighbor(String name) : super(name);

  @override
   void performPart1(CallContext ctx) {
    final left = name.contains('Left') ? 'Left' : '';
    final vertical = name.contains('Vertical') ? 'Vertical' : '';
    ctx.applyCalls('$vertical $left Half Tag');
  }

  @override
   void performPart2(CallContext ctx) {
    final base = name.replaceFirst('Left ', '')
        .replaceFirst('Vertical ', '')
        .replaceFirst('Tag Your ', '');
    final baseCall = [
      if (base == 'Neighbor') 'Follow Your Neighbor'
      else if (base == 'Cross Neighbor') 'Cross Your Neighbor'
      else if (base == 'Criss Cross Neighbor') 'Criss Cross Your Neighbor'
    ].firstOrNull ?? thrower(CallError('Tag what?'))!;
    ctx.applyCalls(baseCall);
  }

}