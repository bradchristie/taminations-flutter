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

class Squeeze extends Action {

  @override final level = LevelData.C1;
  @override var helplink = 'c1/squeeze';
  Squeeze(String name) : super(name);

  @override
  void perform(CallContext ctx) {
    if (name.lc.endsWith('butterfly')) {
      final ctx2 = CallContext.fromXML(TamUtils.getFormation('Butterfly RH'));
      if (ctx.matchFormations(ctx2,rotate: 180) == null)
        throw CallError('Formation is not a Butterfly');
    }
    else if (name.lc.endsWith('o')) {
      final ctx2 = CallContext.fromXML(TamUtils.getFormation('O RH'));
      if (ctx.matchFormations(ctx2,rotate: 180) == null)
        throw CallError('Formation is not an O');
    }
    return super.perform(ctx);
  }

  @override
  Path performOne(Dancer d, CallContext ctx) {
    final d2 = ctx.dancerToLeft(d) ?? ctx.dancerToRight(d);
    if (d2 == null)
      return ctx.dancerCannotPerform(d, name);
    final dist = d.distanceTo(d2);
    final isClose = dist < 2.0 || dist.isAbout(2.0);
    final sameDirection = d.angleFacing.isAround(d2.angleFacing);
    var tradeMove = 'Swing Right';
    if (d2.isLeftOf(d) && sameDirection) tradeMove = 'Flip Left';
    else if (d2.isRightOf(d) && sameDirection) tradeMove = 'Run Right';
    else if (d2.isLeftOf(d)) tradeMove = 'Swing Left';
    final tradePath = TamUtils.getMove(tradeMove);
    final dodgeMove = (d2.isLeftOf(d) ^ isClose)
        ? 'Dodge Left' : 'Dodge Right';
    final dodgePath = TamUtils.getMove(dodgeMove);
    if (isClose)
      return tradePath + dodgePath;
    else {
      dodgePath.scale(1.0,(dist-2.0)/4.0);
      return dodgePath + tradePath;
    }
  }

}