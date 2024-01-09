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

class MakeMagic extends Action {

  @override final level = LevelData.C1;
  @override var helplink = 'c1/make_magic';
  MakeMagic() : super('Make Magic');

  @override
  void perform(CallContext ctx) {
    //  If center 4 dancers are facing each other, they do a Cross Trail Thru
    if (ctx.center(4).every((d) => d.isFacingIn))
      ctx.applyCalls('Center 4 Cross Trail Thru');
    else {
      //  Otherwise, process each dancer
      super.perform(ctx);
      if (ctx.dancers.every((d) => d.path.movelist.isEmpty))
        throw CallError('Make Magic does nothing');
    }
  }

  @override
  Path performOne(DancerModel d, CallContext ctx) {
    //  Center and outside dancers facing each other pass thru
    final d2 = ctx.dancerFacing(d);
    if (d2 != null) {
      if (ctx.center(4).contains(d) ^ ctx.center(4).contains(d2)) {
        final dist = d.distanceTo(d2);
        return ExtendLeft.scale(dist/2,0.5) +
               ExtendRight.scale(dist/2,0.5);
      }
    }
    //  Center dancers facing in cross
    if (ctx.center(4).contains(d) && d.isFacingIn) {
      //  Compute the X and Y values to travel
      //  The standard has x distance = 2 and y distance = 2
      final a = d.angleToOrigin;
      final dx = d.location.length * cos(a);
      final dy = d.location.length * sin(a.abs());
      return (a > 0 ? CrossLeft : CrossRight).scale(dx,dy);
    }
    //  This dancer does not move
    return Path();
  }

}