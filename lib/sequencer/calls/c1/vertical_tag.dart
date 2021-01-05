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

class VerticalTag extends Action {

  @override final level = LevelData.C1;
  VerticalTag(String name) : super(name);

  @override
  Future<void> perform(CallContext ctx, [int stackIndex = 0]) async {
    ctx.analyzeActives();
    //  This calls performOne below, which performs Vertical 1/4 Tag
    await super.perform(ctx, stackIndex);
    //  Now extend as requested
    final norm = TamUtils.normalizeCall(name);
    if (norm.contains('12'))
      await ctx.applyCalls('Extend');
    else if (norm.contains('34'))
      await ctx.applyCalls('Extend','Extend');
    else if (!norm.contains('14'))
      await ctx.applyCalls('Extend','Extend','Extend');
  }

  @override
  Path performOne(Dancer d, CallContext ctx) {
    if (!d.data.beau && !d.data.belle)
      throw CallError('Dancer $d is not part of a couple');
    if (!d.data.leader && !d.data.trailer)
      throw CallError('Dancer $d is not in a box');
    final dp = d.data.partner
        ?? thrower(CallError('Cannot find partner for $d'));
    final dt = (d.data.leader ? ctx.dancerInBack(d) : ctx.dancerInFront(d))
        ?? thrower(CallError('Cannot find dancer in front or behind $d'));
    //  Distance from this dancer to center point of box
    final w = d.distanceTo(dp) / 2.0;
    final h = d.distanceTo(dt) / 2.0;

    if (name.contains('Left')) {
      if (d.data.leader) {
        if (d.data.beau && dp.data.belle)
          return TamUtils.getMove('Flip Right',skew:[-h, 3.0 - w].v);
        else if (d.data.belle)
          return TamUtils.getMove('Flip Left',skew:[0.5, w - 2.0].v);
        else
          return TamUtils.getMove('Flip Right',skew:[0.5, 2.0 - w].v);
      } else {  //  trailer
        if (d.data.belle && dp.data.beau)
          return TamUtils.getMove('Dodge Left',beats:3.0,skew:[-0.5, w - 2.0].v);
        else if (d.data.belle)
          return TamUtils.getMove('Forward',beats:3.0,skew:[h - 1.0, w - 1.0].v);
        else
          return TamUtils.getMove('Extend Right',beats:3.0,skew:[h - 1.0, w - 2.0].v);
      }
    }

    else {
      if (d.data.leader) {
        //  Leader always goes behind unless belle of a couple facing out
        if (d.data.belle && dp.data.beau)
          return TamUtils.getMove('Flip Left',skew:[-h, w - 3.0].v);
        else if (d.data.beau)
          return TamUtils.getMove('Flip Right',skew:[0.5, 2.0 - w].v);
        else
          return TamUtils.getMove('Flip Left',skew:[0.5, w - 2.0].v);
      } else {  // trailer
        //  Trailer always goes in front unless beau of a couple facing in
        if (d.data.beau && dp.data.belle)
          return TamUtils.getMove('Dodge Right',beats:3.0,skew:[-0.5, 2.0 - w].v);
        else if (d.data.beau)
          return TamUtils.getMove('Forward',beats:3.0,skew:[h - 1.0, 1.0 - w].v);
        else
          return TamUtils.getMove('Extend Left',beats:3.0,skew:[h - 1.0, w].v);
      }
    }
  }

}