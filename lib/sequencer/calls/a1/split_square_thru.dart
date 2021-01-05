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

class SplitSquareThru extends Action {

  @override final level = LevelData.A1;
  SplitSquareThru(String name) : super(name);

  @override
  Future<void> perform(CallContext ctx, [int stackIndex = 0]) async {
    if (ctx.actives.length < 8)
      throw CallError('Use Heads Start or Sides Start Split Square Thru');
    var left = 'Left';
    var right = '';
    if (name.startsWith('Left')) {
      left = '';
      right = 'Left';
    }
    final count = TamUtils.normalizeCall(name).last.toIntOrNull() ?? 4;
    //  Might start from waves or mini-waves
    final waveDancers = ctx.dancers.where((it) => ctx.isInWave(it));
    if (waveDancers.length == 4) {
      final explode = ctx.center(4).every((it) => waveDancers.contains(it))
          ?  'Center 4 Reverse Explode'
          : 'Outer 4 Explode';
      //  Check that we are starting with the wave handhold
      if (left == 'Left' && !waveDancers.every((it) => it.data.beau))
        throw CallError('Dancers must start with left hand');
      if (left == '' && !waveDancers.every((it) => it.data.belle))
        throw CallError('Dancers must start with right hand');
      await ctx.applyCalls(explode,'$left Square Thru ${count - 1}');
    } else {
      //  If the centers start, they need to face out to work with the ends
      //  Otherwise they will face in to work with the other dancers
      final face = ctx.actives.every((d) => d.data.center || ctx.dancerFacing(d) == null)
          ? 'Out' : 'In';
      await ctx.applyCalls('Facing Dancers $right Pass Thru and Face $face',
          '$left Square Thru ${count - 1}');
    }
  }

}

class HeadsSidesStart extends Action {

  HeadsSidesStart(String name) : super(name);

  @override
  Future<void> perform(CallContext ctx, [int stackIndex = 0]) async {
    if (name.startsWith('Head'))
      await ctx.applyCalls('Heads Start');
    else
      await ctx.applyCalls('Sides Start');
    await ctx.applyCalls(name.replaceFirst('(head|side)(s)?\\s+start(a)?\\s+'.ri,''));
  }

}