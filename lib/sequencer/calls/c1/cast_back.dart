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

//  This handles both Cast Back and Cross Cast Back
class CastBack extends Action {

  @override final level = LevelData.C1;
  @override var help = 'If dancers are not in tandems, you must say who is'
      ' going to (Cross) Cast Back';
  @override var helplink = 'c1/cast_back';
  CastBack(String name) : super(name);

  @override
  void perform(CallContext ctx) {
    //  Either the leaders Cast Back or the caller has
    //  to specify the dancers
    final leaders = ctx.dancers.where((it) => it.data.leader );
    final casters = (ctx.actives.length < ctx.dancers.length)
      ? ctx.actives
      : (leaders.isNotEmpty && leaders.length < ctx.dancers.length)
      ? leaders
        : throw CallError('Who is going to Cast Back?');
    for (final d in ctx.dancers)
      d.data.active = casters.contains(d);
    super.perform(ctx);
  }

  @override
  Path performOne(DancerModel d, CallContext ctx) {
    Path move;
    if (name == 'Cross Cast Back')
      move = d.isCenterRight ? FlipRight : RunLeft;
    else
      move = d.isCenterRight ? RunLeft : RunRight;
    final scale = (name == 'Cross Cast Back') ? 2.0 : 1.0;
    return move.scale(1.0,scale).skew(-2.0,0.0);
  }

}