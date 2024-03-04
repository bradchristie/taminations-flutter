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
import '../common/reverse.dart';

class WheelAnd extends Action with IsReverse {

  @override final level = LevelData.C1;
  @override var helplink = 'c1/wheel_and_anything';

  WheelAnd(super.name);

  @override
  void performCall(CallContext ctx) {
    //  Find the 4 dancers to Wheel
    var facingOut = ctx.dancers.where((d) => d.isFacingOut).toList();
    if (facingOut.length > 4 && !ctx.isSquare())
      facingOut = ctx.outer(4);
    if (facingOut.length != 4)
      throw CallError('Cannot find 2 couples facing out');
    //  If on squared set spots, couples facing in step into the center
    if (ctx.isSquare())
      ctx.applyCalls('Facing Couples Move In');
    //  Check for t-bones, center 4 facing out, outer 4 facing their shoulders
    if (ctx.center(4).containsAll(facingOut))
      ctx.applyCalls('As Couples Step');
    final otherCallctx =  ctx.nextActionContext(this)
        ?? thrower(CallError('Not able to find call for Wheel And'))!;
    try {
      ctx.applyCalls('Outer 4 $reverse _Wheel');
      var otherCenters = ctx.center(4);
      otherCallctx.dancers.forEach((d) {
        d.data.active = otherCenters.contains(d);
      });
      otherCallctx.performCall();
      ctx.contractPaths();
      otherCallctx.appendToSource();
    } on CallError catch (e1) {
      //  Maybe the call applies to all 8 dancers
      //  (although that really doesn't fit the definition)
      try {
        ctx.applyCalls('Outer 4 $reverse _Wheel');
        otherCallctx.dancers.forEach((d) {
          d.data.active = true;
        });
        otherCallctx.performCall();
        otherCallctx.appendToSource();
      } on CallError {
        //  That didn't work either, throw the original error
        throw e1;
      }
    }
  }

}