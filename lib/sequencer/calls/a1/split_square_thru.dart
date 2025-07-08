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

class SplitSquareThru extends Action with IsLeft, IsToAWave {

  @override final level = LevelData.A1;
  @override var helplink = 'a1/split_square_thru';

  SplitSquareThru(super.name);

  @override
  void performCall(CallContext ctx) {
    //  Helpful check
    if (ctx.isSquare() && ctx.actives.length == 4)
      throw CallError('Use Heads Start or Sides Start Split Square Thru');

    var count = norm.replaceAll('[a-zA-Z]'.r,'').toIntOrNull() ?? 4;
    switch (count) {
      case 12 : count = 2;
      case 34 : count = 3;
      case 112 : count = 2; toAWave = 'to a Wave';
      case 212 : count = 3; toAWave = 'to a Wave';
      case 312 : count = 4;  toAWave = 'to a Wave';
      case 412 : count = 5;  toAWave = 'to a Wave';
      case 512 : count = 6;  toAWave = 'to a Wave';
      default :
    }
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
      ctx.applyCalls(explode,'$antiLeft Square Thru ${count - 1} $toAWave');
    } else if (facingDancers.length == ctx.actives.length/2) {
      //  If the centers start, they need to face out to work with the ends
      //  Otherwise they will face in to work with the other dancers
      ctx.applyCalls('Facing Dancers $left Pass Thru and Quarter In',
          '$antiLeft Square Thru ${count - 1} $toAWave');
    } else
      throw CallError('Cannot do $name from this formation');
  }

}
