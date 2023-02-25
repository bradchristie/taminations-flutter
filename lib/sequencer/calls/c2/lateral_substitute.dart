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

import '../../../moves.g.dart';
import '../common.dart';

class LateralSubstitute extends Action {

  @override final level = LevelData.C2;
  @override var helplink = 'c2/lateral_substitute';
  LateralSubstitute(String name) : super(name);

  @override
  void perform(CallContext ctx) {
    //  Designated dancers
    //  If dancers not specified, centers are assumed
    if (ctx.actives.length == ctx.dancers.length) {
      if( ctx.dancers.where((d) => d.data.center).isNotEmpty) {
        for (var d in ctx.dancers)
          d.data.active = d.data.center;
      }
      else {
        //  Formation does not have specific centers
        //  Assume the center 4 are active
        //  TODO check that outer 4 is unambiguous
        for (var d in ctx.outer(4))
          d.data.active = false;
      }
    }

    var dir = '';
    var movers = <Dancer>[];
    var amount = 0.0;
    var getAmount = (Dancer d1, Dancer d2) =>
        (d1.location.x - d2.location.x).abs();
    var slices = ctx.xSlices;

    //  If 6 dancers are selected, it must be (tandem) triangles
    //  Select the tandems as actives and the apex as movers
    if (ctx.actives.length == 6) {
      var ctx6 = CallContext.fromContext(ctx,dancers:ctx.actives);
      ctx6.analyze();
      //  Tandem-like dancers could be tandems, facing, back-to-back
      var tandems = ctx6.dancers.where((d) =>
          ctx.dancerInBack(d)!=null || ctx.dancerInFront(d)!=null);
      if (tandems.length != 4)
        throw CallError('Unable to calculate $name');
      for (var d in ctx.actives) {
        if (!tandems.contains(d))
          movers.add(d);
      }
      for (var d in ctx.dancers)
        d.data.active = tandems.contains(d);
      if (ctx.actives.first.isFacingX) {
        slices = ctx.ySlices;
        dir = ctx.actives.first.location.y.abs() < movers.first.location.y.abs()
            ? 'out' : 'in';
        getAmount =
            (Dancer d1, Dancer d2) => (d1.location.y - d2.location.y).abs();
      } else {
        slices = ctx.xSlices;
        dir = ctx.actives.first.location.x.abs() < movers.first.location.x.abs()
            ? 'out' : 'in';
      }
      var sliceOrder = slices.keys.toList()..sort();
      amount = getAmount(
          slices[sliceOrder[0]]!.first, slices[sliceOrder[1]]!.first);
    }

    else {
      //  Not triangles
      //  Need to figure out the movers (dancers replacing the actives)
      //  Check that designated dancers are pairs that will move sideways
      for (var d in ctx.actives) {
        var df = ctx.dancerInFront(d);
        var db = ctx.dancerInBack(d);
        if ((df == null || !df.data.active) &&
            (db == null || !db.data.active))
          throw CallError('Cannot Lateral Substitute from this formation.');
      }

      //  Moving on the X or Y axis?
      if (ctx.actives.first.isFacingX) {
        slices = ctx.ySlices;
        getAmount =
            (Dancer d1, Dancer d2) => (d1.location.y - d2.location.y).abs();
      }
      if (slices.keys.length < 4)
        throw CallError('Cannot Lateral Substitute with this formation');

      //  Figure out who is moving in to replace the active dancers
      var sliceOrder = slices.keys.toList()..sort();
      if (slices[sliceOrder[0]]!.every((d) => d.isActive)) {
        dir = 'in'; //  Active dancers moving toward center, others moving out
        movers = slices[sliceOrder[1]]! +
            slices[sliceOrder[slices.keys.length - 2]]!;
        amount = getAmount(
            slices[sliceOrder[0]]!.first, slices[sliceOrder[1]]!.first);
      }
      else if ((slices.keys.length == 4 || slices.keys.length == 5) &&
          slices[sliceOrder[1]]!.every((d) => d.isActive)) {
        dir = 'out';
        movers = slices[sliceOrder[0]]! +
            slices[sliceOrder[slices.keys.length - 1]]!;
        amount = getAmount(
            slices[sliceOrder[0]]!.first, slices[sliceOrder[1]]!.first);
      }
      else if (slices.keys.length == 6 &&
          slices[sliceOrder[2]]!.every((d) => d.isActive)) {
        dir = 'out';
        movers = slices[sliceOrder[1]]! + slices[sliceOrder[4]]!;
        amount = getAmount(
            slices[sliceOrder[1]]!.first, slices[sliceOrder[2]]!.first);
      }
      else
        throw CallError('Unable to calculate animation for Lateral Substitute');
    }

    //  Calculate moves for each dancer
    for (var d in ctx.actives) {
      if (d.isFacingOut) {
        if (d.isCenterRight ^ (dir=='in'))
          d.path += SashayLeft.scale(2.0,amount/2.0);
        else
          d.path += SashayRight.scale(2.0,amount/2.0);
      } else {
        if (d.isCenterRight ^ (dir=='in'))
          d.path += BackSashayLeft.scale(2.0,amount/2.0);
        else
          d.path += BackSashayRight.scale(2.0,amount/2.0);
      }
    }
    for (var d in movers) {
      if (d.isFacingX ^ ctx.actives.first.isFacingX) {
        //  Moving forward or back
        if (d.isFacingIn ^ (dir=='in'))
          d.path += Forward_2.scale(amount/2.0,1.0);
        else
          d.path += Back_2.scale(amount/2.0,1.0);
      } else {
        //  Moving left or right
        if (d.isCenterRight ^ (dir=='in'))
          d.path += DodgeRight.scale(1.0,amount/2.0);
        else
          d.path += DodgeLeft.scale(1.0,amount/2.0);
      }
    }

  }

}