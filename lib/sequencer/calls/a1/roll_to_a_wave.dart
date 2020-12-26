/*

  Taminations Square Dance Animations
  Copyright (C) 2020 Brad Christie

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

//  Class for leaders part of Roll to a Wave
class RollTo extends Action {

  RollTo(String name) : super(name);

  //  Turn tightly in the direction while moving a little back
  @override
  Path performOne(Dancer d, CallContext ctx) {
    final move = name.startsWith('Left') ? 'Flip Left' : 'Flip Right';
    return TamUtils.getMove(move,scale:[1.0,0.25].v,skew:[-0.5,0.0].v);
  }

}

class RollToAWave extends Action {

  @override final level = LevelData.A1;
  RollToAWave(String name) : super(name);

  @override
  Future<void> perform(CallContext ctx, [int stackIndex = 0]) async {
    final dir = name.startsWith('Left') ? 'Left' : 'Right';
    final wave = name.startsWith('Left') ? 'Left-Hand' : '';
    //  Have the leaders (if any) turn back the indicated direction
    //  Then everybody Step to a Wave
    final roller = 'Leaders $dir _RollTo';
    if (ctx.actives.any((it) => it.data.leader ))
      await ctx.applyCalls(roller,'Step to a $wave Wave');
    else
      await ctx.applyCalls('Step to a $wave Wave');

    //  Post-process - take out the filler for the trailers while
    //  leaders were turning back, then set all to 4 beats
    for (var d in ctx.dancers) {
      //  a bit of a hack
      if (d.path.movelist.length == 2 && !d.path.movelist.first.fromCall) {
        final m = d.path.pop();
        d.path.clear();
        d.path.add(m);
      }
      d.path.changebeats(4.0);
    }
  }


}