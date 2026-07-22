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

import '../../../moves.dart';
import '../common.dart';

class ChainDownTheLine extends Action {

  @override var help = 'Chain Down the Line will work with any formation'
  ' where the centers are holding right hands and the ends are to their left.'
  ' The ends cannot have their backs to the centers.'
  ' If the Courtesy Turn is a girl turning a boy the level is Basic 1, else Plus.';

  ChainDownTheLine(super.name);

  @override
  void performCall(CallContext ctx0) {
    ctx0.activesContext((ctx) {

      //  Centers must be holding right hands
      ctx.dancers.where((d) => d.data.center).forEach((d) {
        var d2 = ctx.dancerToRight(d);
        if (d2 == null || !d2.data.center)
          throw CallError('Centers must be holding right hands');
      });
      //  If not boy turning girl then level is Plus
      if (ctx.dancers.any((d) => d.data.center && d.gender != Gender.GIRL) ||
          ctx.dancers.any((d) => d.data.end && d.gender != Gender.BOY))
        level = LevelData.PLUS;

      //  Centers (girls) trade
      for (var dg in ctx.dancers.where((d) => d.data.center)) {
        var dist = ctx.dancerToRight(dg)!.distanceTo(dg);
        dg.path += SwingRight.scale(dist/2, dist/2);
      }
      //  Ends (boys) position to Courtesy Turn the girls
      for (var db in ctx.dancers.where((d) => !d.data.center)) {
        var dg = ctx.dancerClosest(db, (d) => d.data.center)!;
        if (dg.isInFrontOf(db))
          db.path += QuarterLeft.changeBeats(3.0);
        else if (dg.isLeftOf(db))
          db.path += UmTurnLeft.changeBeats(3.0);
        else if (dg.isRightOf(db))
          db.path += Stand.changeBeats(3.0);
        else if (dg.isInBackOf(db))
          throw CallError('Ends cannot have their backs to the Centers');
        else
          throw CallError('Unable to calculate Chain Down the Line');
      }
      //  Finish with the Courtesy Turn
      ctx.matchStandardFormation();
      ctx.applyCalls('Courtesy Turn and 1/4 More');
    });
  }

}