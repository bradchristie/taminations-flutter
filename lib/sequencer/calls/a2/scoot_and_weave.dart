/*

  Taminations Square Dance Animations
  Copyright (C) 2026 Brad Christie

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

class ScootAndWeave extends Action with CallWithParts, ActivesOnly {

  @override var level = LevelData.A2;
  @override var numberOfParts = 2;
  @override var help = '''Scoot and Weave has 2 parts:
  1.  Scoot Back
  2. Weave''';
  @override var helplink = 'a2/scoot_and_weave';

  ScootAndWeave(super.name);

  @override
   void performPart1(CallContext ctx) {
    ctx.applyCalls('Scoot Back');
  }

  @override
   void performPart2(CallContext ctx) {
    ctx.applyCalls('Weave');
  }

}