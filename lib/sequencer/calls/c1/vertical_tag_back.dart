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

class VerticalTagBack extends Action with CallWithParts {

  @override final level = LevelData.C1;
  @override var numberOfParts = 2;
  @override var help = '''Vertical Tag Back to a Wave has 2 parts:
  1.  Vertical Half Tag
  2.  Scoot Back''';
  @override var helplink = 'c1/tagging_calls_back_to_a_wave';
  VerticalTagBack(String name) : super(name);

  @override
  Future<void> performPart1(CallContext ctx) async {
    final left = name.contains('Left') ? 'Left' : '';
    await ctx.applyCalls('$left Vertical 1/2 Tag');
  }

  @override
  Future<void> performPart2(CallContext ctx) async {
    await ctx.applyCalls('Scoot Back');
  }

}