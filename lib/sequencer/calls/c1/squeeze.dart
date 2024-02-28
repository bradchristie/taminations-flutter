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


import '../../../moves.dart';
import '../common.dart';

class Squeeze extends Action {

  @override final level = LevelData.C1;
  @override var helplink = 'c1/squeeze';

  Squeeze(super.name);

  @override
  void performCall(CallContext ctx) {
    if (name.lc.endsWith('butterfly')) {
      final ctx2 = CallContext.fromFormation(Formation('Butterfly RH'));
      if (ctx.matchFormations(ctx2,rotate: 180) == null)
        throw CallError('Formation is not a Butterfly');
    }
    else if (name.lc.endsWith('o')) {
      final ctx2 = CallContext.fromFormation(Formation('O RH'));
      if (ctx.matchFormations(ctx2,rotate: 180) == null)
        throw CallError('Formation is not an O');
    }
    return super.performCall(ctx);
  }

  @override
  Path performOne(DancerModel d, CallContext ctx) {
    final d2 = ctx.dancerToLeft(d) ?? ctx.dancerToRight(d);
    if (d2 == null)
      return ctx.dancerCannotPerform(d, name);
    final dist = d.distanceTo(d2);
    final isClose = dist < 2.0 || dist.isAbout(2.0);
    final sameDirection = d.angleFacing.isAround(d2.angleFacing);
    var tradeMove = SwingRight;
    if (d2.isLeftOf(d) && sameDirection) tradeMove = FlipLeft;
    else if (d2.isRightOf(d) && sameDirection) tradeMove = RunRight;
    else if (d2.isLeftOf(d)) tradeMove = SwingLeft;
    var dodgeMove = (d2.isLeftOf(d) ^ isClose)
        ? DodgeLeft : DodgeRight;
    if (isClose)
      return tradeMove + dodgeMove;
    else {
      dodgeMove = dodgeMove.scale(1.0,(dist-2.0)/4.0);
      return dodgeMove + tradeMove;
    }
  }

}