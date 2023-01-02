/*

  Taminations Square Dance Animations
  Copyright (C) 2023 Brad Christie

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

class CircleBy extends Action with CallWithParts {

  @override final level = LevelData.C1;
  @override var numberOfParts = 2;
  @override var help = 'Circle By (fraction) and (fraction or call)';
  @override var helplink = 'c1/circle_by';
  late String frac1;
  late String frac2;
  late String name2;

  CircleBy(String name) : super(name);

  void _setup() {
    //  Make sure we have "Circle By <fraction> and <something>"
    final a = name.replaceFirst('Circle By','').divide('and');
    if (a.length != 2)
      throw CallError('Circle By <fraction> and <fraction or call>');
    frac1 = normalizeCall(a[0]);
    name2 = a[1];
    frac2 = normalizeCall(name2);
  }

  @override
   void performPart1(CallContext ctx) {
    _setup();
    //  Do the first fraction
    if (frac1.matches('(14|12|34)'.r))
      ctx.applyCalls('Circle Four Left $frac1');
    else if (frac1 != 'Nothing')
      throw CallError('Circle by what?');
    //  Step to a Wave
    //  be careful not to collide with any outer inactive dancers
    final compact = (ctx.dancers.length == 8 && ctx.actives.length == 4)
        ? 'Compact'
        : '';
    ctx.applyCalls('Step to a $compact Wave');
  }

  @override
   void performPart2(CallContext ctx) {
    _setup();
    //  Do the second fraction or call
    if (frac2 == '14')
      ctx.applyCalls('Hinge');
    else if (frac2 == '12')
      ctx.applyCalls('Trade');
    else if (frac2 == '34')
      ctx.applyCalls('Cast Off 3/4');
    else if (frac2 != 'Nothing')
      ctx.applyCalls(name2);
  }

}