/*

  Taminations Square Dance Animations
  Copyright (C) 2023 Brad Christie

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

class WheelAnd extends Action {

  @override final level = LevelData.C1;
  @override var helplink = 'c1/wheel_and_anything';
  WheelAnd(String name) : super(name);

  @override
  void perform(CallContext ctx) {
    final divided = name.divide(' and '.r);
    final wheelCall = divided[0];
    final andCall = divided[1];
    final reverse = wheelCall.contains('Reverse') ? 'Reverse' : '';
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
    try {
      ctx.applyCalls('Outer 4 $reverse Wheel While Center 4 $andCall');
    } on CallError catch (e1) {
      //  Maybe the call applies to all 8 dancers
      //  (although that really doesn't fit the definition)
      try {
        ctx.applyCalls('Outer 4 $reverse Wheel',andCall);
      } on CallError {
        //  That didn't work either, throw the original error
        throw e1;
      }
    }
  }

}