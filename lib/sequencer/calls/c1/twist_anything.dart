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

class TwistAnything extends Action {

  @override final level = LevelData.C1;
  TwistAnything(String name) : super(name);

  @override
  Future<void> perform(CallContext ctx, [int stackIndex = 0]) async {
    //  Get "Anything" call
    final anyCall = (name == 'Twist the Line')
        ? 'Star Thru'
        : name.replaceFirst('.*? and '.r, '');

    final isOut = ctx.center(4).every((d) => d.isFacingOut);
    final isIn = ctx.center(4).every((d) => d.isFacingIn);
    if (!isOut && !isIn)
      throw CallError('Centers must face the same direction');
    //  First try original centers do the any call
    try {
      await ctx.subContext(ctx.dancers, (ctx2) async {
        await ctx2.applyCalls(
            'Outer 4 Face In and Step while '
                'Center 4 ${isIn ? 'Half' : ''} Step Ahead',
            '${isIn ? 'Center' : 'Outer'} 4 Trade while '
                '${isIn ? 'Outer' : 'Center'} 4 $anyCall'
        );
      });
    } on CallError catch (_) {
      //  If that didn't work, try everybody do the any call
      await ctx.applyCalls(
          'Outer 4 Face In and Step while '
              'Center 4 ${isIn ? 'Half' : ''} Step Ahead',
          '${isOut ? 'Outer' : 'Center'} 4 Trade'
      );
      ctx.matchStandardFormation();
      await ctx.applyCalls(anyCall);
    }
  }



}