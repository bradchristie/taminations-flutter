/*

  Taminations Square Dance Animations
  Copyright (C) 2026 Brad Christie

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
  @override var helplink = 'c1/twist_the_line';

  TwistAnything(super.name);

  static final Formation TripleLines = Formation('', dancers:[
    DancerModel.fromData(gender:Gender.BOY,x:0,y:3,angle:180),
    DancerModel.fromData(gender:Gender.GIRL,x:0,y:1,angle:0),
    DancerModel.fromData(gender:Gender.GIRL,x:3,y:1,angle:180),
    DancerModel.fromData(gender:Gender.BOY,x:3,y:3,angle:0),
    DancerModel.fromData(gender:Gender.PHANTOM,x:3,y:-1,angle:0),
    DancerModel.fromData(gender:Gender.PHANTOM,x:3,y:-3,angle:180),
  ]);

  @override
  void performCall(CallContext ctx) {
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
    var tidalStart = ctx.isTidal();
    if (ctx.isLines())
      //  All possible 2x4 general lines are in XML
      ctx.applyCalls('Twist And');
    else
      ctx.applyCalls('Centers Step Trade while Others 1/4 In and Half Step');

    //  Do the Anthing call
    //  First try original ends
    try {
      ctx.subContext(outers, (ctx2) {
        ctx2.canDoYourPart = false;
        ctx2.applyCalls(anyCall);
      });
    } on CallError {
      //  If that didn't work, try everybody do the Anything call
      ctx.applyCalls(anyCall);
    }

    if (tidalStart)
      ctx.adjustToFormation(TripleLines,subformation: true ,maxError: 8.1, delta: 0.3);
  }



}