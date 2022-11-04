/*
 *     Copyright 2021 Brad Christie
 *
 *     This file is part of Taminations.
 *
 *     Taminations is free software: you can redistribute it and/or modify
 *     it under the terms of the GNU Affero General Public License as published
 *     by the Free Software Foundation, either version 3 of the License, or
 *     (at your option) any later version.
 *
 *     Taminations is distributed in the hope that it will be useful,
 *     but WITHOUT ANY WARRANTY; without even the implied warranty of
 *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *     GNU Affero General Public License for more details.
 *
 *     You should have received a copy of the GNU Affero General Public License
 *     along with Taminations.  If not, see <http://www.gnu.org/licenses/>.
 */

import '../common.dart';

class Substitute extends Action {

  @override final level = LevelData.C1;
  @override var helplink = 'c1/substitute';
  Substitute(String name) : super(name);

  @override
  void perform(CallContext ctx) {
    //  Check that we have a valid 2x4 formation
    final ctxDPT = CallContext.fromXML(TamUtils.getFormation('Double Pass Thru'));
    if (ctxDPT.matchFormations(ctx,sexy:false,fuzzy:false,rotate:90,handholds:false) == null)
      throw CallError('Cannot Substitute from this formation');
    ctx.center(4).forEach((d) {
      if (ctx.dancersInBack(d).length + ctx.dancersInFront(d).length != 3)
        throw CallError('Cannot Substitute from this formation');
      final dx = d.isFacingIn ? -1.0 :1.0;
      final dy = d.isCenterRight ? 1.0 : -1.0;
      d.path = TamUtils.getMove('Stand',skew: [dx,dy].v) +
               TamUtils.getMove('Stand',skew: [dx,-dy].v);
    });
    ctx.outer(4).forEach((d) {
      var move = '';
      if (ctx.dancersInFront(d).length == 3)
        move = 'Forward 2';
      else if (ctx.dancersInBack(d).length == 3)
        move = 'Back 2';
      else if (ctx.dancersToLeft(d).length == 3)
        move = 'Dodge Left';
      else if (ctx.dancersToRight(d).length == 3)
        move = 'Dodge Right';
      else
        throw CallError('Cannot Substitute from this formation');
      d.path = TamUtils.getMove(move,beats: 2.0);
    });
  }

}