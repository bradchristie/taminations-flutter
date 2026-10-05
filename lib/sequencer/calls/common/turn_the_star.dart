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

mixin CallWithStars on CallWithParts {
  var turnStarAmount = 1;
  var turnStarCall = 'Turn the Star';
  String get starTurns => turnStarAmount == 0 ? 'Nothing' :
      [ for (var i=0; i<turnStarAmount; i++) turnStarCall ].join(' ');
}

class TurnTheStar extends Action {

  TurnTheStar(super.name);

  @override
  void addToStack(CallContext ctx) {
    var callWithStars = ctx.findImplementor<CallWithStars>(startFrom: ctx.callstack.last)
    ?? thrower<CallWithStars>(CallError('Unable to find call with Stars'));
    if (norm.contains('donot'.ri))
      callWithStars.turnStarAmount = 0;
    //  First check for fractions 1/4 1/2 3/4
    else if (norm.contains('14'))
      callWithStars.turnStarAmount = 1;
    else if (norm.contains('12'))
      callWithStars.turnStarAmount = 2;
    else if (norm.contains('34'))
      callWithStars.turnStarAmount = 3;
    else if (norm.contains('Full'))
      callWithStars.turnStarAmount = 4;
    //  Also check for number of times 1, 2, 3, 4
    else if (norm.contains('1'))
      callWithStars.turnStarAmount = 1;
    else if (norm.contains('2'))
      callWithStars.turnStarAmount = 2;
    else if (norm.contains('3'))
      callWithStars.turnStarAmount = 3;
    else if (norm.contains('4'))
      callWithStars.turnStarAmount = 4;
    else
      throw CallError('Turn the Star how much?');
  }

}