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

import '../../../moves.g.dart';
import '../common.dart';

class Trade extends Action {

  @override var level = LevelData.B2;
  @override var helplink = 'b2/trade';
  Trade(String name) : super(name);

  @override
  Path performOne(DancerModel d, CallContext ctx) {
    //  Figure out what dancer we're trading with
    var leftcount = 0;
    DancerModel? bestleft;
    var rightcount = 0;
    DancerModel? bestright;
    for (var d2 in ctx.actives) {
      if (d2 != d) {
        if (d2.isLeftOf(d)) {
          if (leftcount==0 || d.distanceTo(d2) < d.distanceTo(bestleft!))
            bestleft = d2;
          leftcount += 1;
        } else if (d2.isRightOf(d)) {
          if (rightcount==0 || d.distanceTo(d2) < d.distanceTo(bestright!))
            bestright = d2;
          rightcount += 1;
        }
      }
    }
    //  Check that the trading dancer is facing same or opposite direction
    if (bestright!=null && !d.isRightOf(bestright) && !d.isLeftOf(bestright))
      bestright = null;
    if (bestleft!=null && !d.isRightOf(bestleft) && !d.isLeftOf(bestleft))
      bestleft = null;

    DancerModel dtrade;
    bool samedir;
    Path call;
    //  We trade with the nearest dancer in the direction with
    //  an odd number of dancers
    if (bestright!=null && ((rightcount % 2 == 1 && leftcount % 2 == 0) || bestleft==null)) {
      dtrade = bestright;
      call = RunRight;
      samedir = d.isLeftOf(dtrade);
    } else if (bestleft!=null && ((rightcount % 2 == 0 && leftcount % 2 == 1) || bestright==null)) {
      dtrade = bestleft;
      call = RunLeft;
      samedir = d.isRightOf(dtrade);
    }
    else
      throw CallError('Unable to calculate Trade' );

    //  Found the dancer to trade with.
    //  Now make room for any dancers in between
    var hands = Hands.NOHANDS;
    var dist = d.distanceTo(dtrade);
    var scaleX = 1.0;
    if (ctx.inBetween(d,dtrade).isNotEmpty) {
      //  Intervening dancers
      //  Allow enough room to get around them and pass right shoulders
      if (call == RunRight  && samedir)
        scaleX = 2.0;
    } else {
      //  No intervening dancers
      if (call == RunLeft  && samedir)
        //  Partner trade, flip the belle
        call = FlipLeft;
      else
        scaleX = dist/2;
      //  Hold hands for trades that are swing/slip
      if (!samedir && dist < 2.1)
        hands = (call == RunLeft) ? Hands.LEFTHAND : Hands.RIGHTHAND;
    }
    return call.addhands(hands).scale(scaleX,dist/2);
  }

}