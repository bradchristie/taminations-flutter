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

class PerkUp extends Action with CallWithParts {

  @override var level = LevelData.C2;
  @override var numberOfParts = 3;
  @override var help = '''Perk Up has 3 parts:
  1.  Circulate
  2.  1/2 Circulate
  3.  Outer 4 Circulate Twice; Center 4 Hinge, Box Circulate, and Trade''';
  @override var helplink = 'c2/perk_up';

  PerkUp(super.name);

  @override
  void performPart1(CallContext ctx) {
    ctx.applyCalls('Circulate');
  }

  @override
  void performPart2(CallContext ctx) {
    ctx.applyCalls('1/2 Split Circulate');
  }

  @override
  void performPart3(CallContext ctx) {
    ctx.applyCalls('Outer 4 Circulate Twice while Others Hinge Box Circulate Trade');
  }

}
