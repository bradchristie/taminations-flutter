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
  Future<void> perform(CallContext ctx) async {
    //  Get "Anything" call
    final anyCall = (name == 'Twist the Line')
        ? 'Star Thru'
        : name.replaceFirst('.*? and '.r, '');

    final centers = ctx.dancers.where((d) => d.data.center);
    for (var d in centers) {
      final d2 = ctx.dancerClosest(d, (d3) => d3.data.center);
      if (d2 == null || !d2.angleFacing.isAround(d.angleFacing))
        throw CallError('Centers must face the same direction');
    }

    //  Remember the outer 4 to do the Anything call
    final outers = ctx.dancers.where((d) => !centers.contains(d)).toList();

    //  Do the Twist And part
    if (ctx.isLines())
      //  All possible 2x4 general lines are in XML
      await ctx.applyCalls('Twist And');
    else
      await ctx.applyCalls('Centers Step Trade while Others 1/4 In and Half Step');

    //  Do the Anthing call
    //  First try original ends
    try {
      await ctx.subContext(outers, (ctx2) async {
        await ctx2.applyCalls(anyCall);
      });
    } on CallError catch (_) {
      //  If that didn't work, try everybody do the Anything call
      await ctx.applyCalls(anyCall);
    }
  }



}