/*

  Taminations Square Dance Animations
  Copyright (C) 2022 Brad Christie

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

class TagTheLine extends Action {

  @override
  var level = LevelData.MS;
  TagTheLine(name) : super(name);

  @override
  Future<void> perform(CallContext ctx, [int i = 0]) async {
    final left = name.startsWith('Left') ? 'Left' : '';
    await ctx.applyCalls('$left 34tag');
    ctx.contractPaths();
    await ctx.applyCalls('extend');
  }

}

class BigLineTagTheLine extends ActivesOnlyAction {

  @override
  var level = LevelData.MS;
  var isLeft;

  BigLineTagTheLine(String name) : isLeft=name.contains('Left'), super(name) ;

  @override
  Future<void> perform(CallContext ctx) async {
    final left = isLeft ? 'Left' : '';
    final length = norm.contains('6') ? '6' : '8';
    if (length == '6' && ctx.dancers.length > 6)
      await ctx.applyCalls('Wave of 6 $name');
    else {
      await super.perform(ctx);
      if (norm.contains('12'))
        await ctx.applyCalls('_Finish Line of $length $left Half Tag');
      else
        await ctx.applyCalls('_Finish Line of $length $left Tag the Line');
    }
  }

  @override
  Path performOne(Dancer d, CallContext ctx) {
    if (isLeft) {
      if (d.isCenterRight)
        return TamUtils.getMove('Quarter Right', skew: [-0.5, 0.0].v);
      else
        return TamUtils.getMove('Quarter Left', skew: [0.5, 0.0].v);
    } else {
      if (d.isCenterRight)
        return TamUtils.getMove('Quarter Right', skew: [0.5, 0.0].v);
      else
        return TamUtils.getMove('Quarter Left', skew: [-0.5, 0.0].v);
    }
  }

}