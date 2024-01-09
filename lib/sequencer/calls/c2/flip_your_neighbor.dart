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

//  This class handles all the variations of Flip Your Neighbor
class FlipYourNeighbor extends Action with CallWithParts {

  @override final level = LevelData.C2;
  @override var numberOfParts = 2;
  @override var help = '''Flip Your (Criss) (Cross) Neighbor is a 2-part call:
  1.  Flip the Line 1/2
  2.  Follow / Cross / Criss Cross Your Neighbor''';
  @override var helplink = 'c2/any_tagging_call_your_neighbor';
  FlipYourNeighbor(String name) : super(name);

  static const flipTypes = {
    'Flip Your Neighbor' : 'Follow Your Neighbor',
    'Flip Your Cross Neighbor' : 'Cross Your Neighbor',
    'Flip Your Criss Cross Neighbor' : 'Criss Cross Your Neighbor'
  };

  @override
   void performPart1(CallContext ctx) {
    ctx.applyCalls('Flip the Line 1/2');
  }

  @override
   void performPart2(CallContext ctx) {
    final secondCall = flipTypes[name] ?? thrower(CallError('Incorrect Flip call'))!;
    ctx.applyCalls(secondCall);
  }

}