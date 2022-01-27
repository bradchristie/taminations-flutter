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

//  This handles both Cast Back and Cross Cast Back
class CastBack extends Action {

  @override final level = LevelData.C1;
  CastBack(String name) : super(name);

  @override
  Future<void> perform(CallContext ctx) async {
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
    await super.perform(ctx);
  }

  @override
  Path performOne(Dancer d, CallContext ctx) {
    final dir = (d.isCenterRight ^ (name == 'Cross Cast Back')) ? 'Left' : 'Right';
    final move = (d.isCenterRight && (name == 'Cross Cast Back')) ? 'Flip' : 'Run';
    final scale = (name == 'Cross Cast Back') ? 2.0 : 1.0;
    return TamUtils.getMove('$move $dir',scale:[1.0,scale].v,skew:[-2.0,0.0].v);
  }

}