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

import '../common.dart';

class SplitSquareThru extends Action with IsLeft {

  @override final level = LevelData.A1;
  @override var helplink = 'a1/split_square_thru';
  SplitSquareThru(String name) : super(name);

  @override
  void perform(CallContext ctx) {
    //  Helpful check
    if (ctx.isSquare() && ctx.actives.length == 4)
      throw CallError('Use Heads Start or Sides Start Split Square Thru');

    final count = normalizeCall(name).last.toIntOrNull() ?? 4;
    //  Might start from waves or mini-waves
    final waveDancers = ctx.dancers.where((d) => ctx.isInWave(d));
    final facingDancers = ctx.dancers.where((d) => ctx.dancerFacing(d)!=null);
    if (waveDancers.length == ctx.actives.length/2) {
      final explode = ctx.center(4).every((it) => waveDancers.contains(it))
          ?  'Center 4 Reverse Explode'
          : 'Outer 4 Explode';
      //  Check that we are starting with the wave handhold
      if (!isLeft && !waveDancers.every((it) => it.data.beau))
        throw CallError('Dancers must start with right hand');
      if (isLeft && !waveDancers.every((it) => it.data.belle))
        throw CallError('Dancers must start with left hand');
      ctx.applyCalls(explode,'$antiLeft Square Thru ${count - 1}');
    } else if (facingDancers.length == ctx.actives.length/2) {
      //  If the centers start, they need to face out to work with the ends
      //  Otherwise they will face in to work with the other dancers
      final face = ctx.actives.every((d) => d.data.center || ctx.dancerFacing(d) == null)
          ? 'Out' : 'In';
      ctx.applyCalls('Facing Dancers $left Pass Thru and Face $face',
          '$antiLeft Square Thru ${count - 1}');
    } else
      throw CallError('Cannot do $name from this formation');
  }

}
