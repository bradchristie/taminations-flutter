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

class CrossRamble extends Action with CallWithParts {

  @override final level = LevelData.C2;
  @override var numberOfParts = 2;
  @override var help = '''Cross Ramble is a 2-part call:
  1.  Outer 4 Cross Cast Back, others Extend and Trade
  2.  Everyone Slide Thru''';
  @override var helplink = 'c2/cross_ramble';

  CrossRamble(super.name);

  @override
   void performPart1(CallContext ctx) {

    ctx.applyCalls('Outer 4 Cross Cast Back '
        'While Others Step Thru and Trade');
  }

  @override
   void performPart2(CallContext ctx) {
    ctx.applyCalls('Slide Thru');
  }

}