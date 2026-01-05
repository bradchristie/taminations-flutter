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

class Recoil extends Action with CallWithParts {

  @override var level = LevelData.C3A;
  @override var numberOfParts = 2;
  @override var help = '''Recoil is a 3-part call:
  1. Box/Split Recycle
  2. Step and Fold''';

  Recoil(super.name);

  @override
  void performPart1(CallContext ctx) {
    if (ctx.actives.length > 4)
      ctx.applyCalls('Split Recycle');
    else
      ctx.applyCalls('Box Recycle');
  }

  @override
  void performPart2(CallContext ctx) {
    ctx.applyCalls('Step and Fold');
  }

}