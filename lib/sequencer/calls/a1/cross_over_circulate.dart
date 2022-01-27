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

class CrossOverCirculate extends Action {

  @override final level = LevelData.A1;
  CrossOverCirculate() : super('Cross Over Circulate');

  //  All 8-dancer versions are coded in XML
  //  This code just handles 4 dancers
  @override
  Future<void> perform(CallContext ctx) async {
    if (ctx.actives.length != 4)
      throw CallError('No animation for Cross Over Circulate from this formation');
    await super.perform(ctx);
  }

  @override
  Path performOne(Dancer d, CallContext ctx) {

    if (d.data.leader) {
      //  Find another active dancer in this line
      final d2 = ctx.actives.where((dd) =>
      dd.isRightOf(d) || dd.isLeftOf(d)).firstOrNull
          .throwIfNull(CallError('Unable to calculate Cross Over Circulate for dancer $d'));;
    //  Centers <-> Ends
    if (!(d.data.center ^ d2.data.center))
      throw CallError('Incorrect circulate path for Cross Over Circulate');
    final move = (d2.isRightOf(d)) ? 'Run Right' : 'Run Left';
    //  Pass right shoulders if necessary
    final xScale = (d2.isRightOf(d) && d2.data.leader) ? 2.0 : 1.0;
    final yScale = d.distanceTo(d2) / 2.0;
    return TamUtils.getMove(move,scale:[xScale,yScale].v);

    } else if (d.data.trailer) {
      //  Find the dancer in the other line to move to
      final d2 = ctx.actives.where((dd) =>
    dd != d && !dd.isOpposite(d) && !dd.isLeftOf(d) && !dd.isRightOf(d)).firstOrNull
     .throwIfNull(CallError('Unable to calculate Cross Over Circulate for dancer $d'));
    //  Centers <-> Ends
    if (!(d.data.center ^ d2.data.center))
      throw CallError('Incorrect circulate path for Cross Over Circulate');
    final v = d.vectorToDancer(d2);
    //  Pass right shoulders if necessary
    if (d2.data.trailer && v.y > 0)
      return TamUtils.getMove('Extend Left',beats:v.x-1,scale:[v.x-1,v.y].v) +
             TamUtils.getMove('Forward');
    else if (d2.data.trailer && v.y < 0)
      return TamUtils.getMove('Forward') +
             TamUtils.getMove('Extend Right',scale:[v.x-1,-v.y].v,beats:v.x-1);
    else if (v.y > 0)
      return TamUtils.getMove('Extend Left',beats:v.x,scale:[v.x,v.y].v);
    else
      return TamUtils.getMove('Extend Right',beats:v.x,scale:[v.x,-v.y].v);

    } else
      throw CallError('Unable to calculate Cross Over Circulate for dancer $d');
  }

}