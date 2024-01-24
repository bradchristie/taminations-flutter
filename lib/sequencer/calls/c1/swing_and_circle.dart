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

class SwingAndCircle extends Action with IsLeft {

  @override final level = LevelData.C1;
  @override var helplink = 'c1/swing_and_circle';
  SwingAndCircle(String name) : super(name);

  @override
  void performCall(CallContext ctx) {
    final norm = normalizeCall(name);
    //  Facing Couples rule
    if (ctx.center(4).every((d) => ctx.isInCouple(d))) {
      ctx.applyCalls('Center 4 Step to a $leftHand Wave');
    } else if (isLeft)
      throw CallError('Left only applies to center facing couples');
    //  Swing and Circle 1/4 is an XML animation
    //  So just repeat that as requested
    if (norm.endsWith('14'))
      ctx.applyCalls('Swing and Circle 1/4');
    else if (norm.endsWith('12'))
      ctx.applyCalls('Swing and Circle 1/4',
          'Swing and Circle 1/4');
    else if (norm.endsWith('34'))
      ctx.applyCalls('Swing and Circle 1/4',
          'Swing and Circle 1/4',
          'Swing and Circle 1/4');
    else
      ctx.applyCalls('Swing and Circle 1/4',
          'Swing and Circle 1/4',
          'Swing and Circle 1/4',
          'Swing and Circle 1/4');
  }

}

class AnythingAndCircle extends Action {

  @override final level = LevelData.C2;
  @override var helplink = 'c2/anything_and_circle';
  AnythingAndCircle(String name) : super(name);

  @override
  void performCall(CallContext ctx) {
    var anyCall = name.replaceFirst(' and circle.*'.ri, '');
    var count = ['14','12','34'].indexOf(norm.substring(norm.length-2)) + 1;
    ctx.canDoYourPart = false;
    for (var i=0; i<count; i++) {
      try {
        ctx.applyCalls('Centers $anyCall', 'Outer 6 and_Circle 1/4');
      } on CallError catch (_) {
        ctx.applyCalls(anyCall, 'Outer 6 and_Circle 1/4');
      }
    }
  }

}