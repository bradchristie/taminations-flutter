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

class WheelAnd extends Action {

  @override final level = LevelData.C1;
  WheelAnd(String name) : super(name);

  @override
  Future<void> perform(CallContext ctx, [int stackIndex = 0]) async {
    final divided = name.divide(' and '.r);
    final wheelCall = divided[0];
    final andCall = divided[1];
    final reverse = wheelCall.contains('Reverse') ? 'Reverse' : '';
    //  Find the 4 dancers to Wheel
    final facingOut = ctx.dancers.where((d) => d.isFacingOut);
    //  Check for t-bones, center 4 facing out, outer 4 facing their shoulders
    if (ctx.center(4).containsAll(facingOut))
      await ctx.applyCalls('As Couples Step');
    try {
      await ctx.applyCalls('Outer 4 $reverse Wheel While Center 4 $andCall');
    } on CallError catch (e1) {
      //  Maybe the call applies to all 8 dancers
      //  (although that really doesn't fit the definition)
      try {
        await ctx.applyCalls('Outer 4 $reverse Wheel',andCall);
      } on CallError {
        //  That didn't work either, throw the original error
        throw e1;
      }
    }
  }


}