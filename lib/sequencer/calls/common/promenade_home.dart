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

import 'dart:math';

import '../../../dancer_model.dart';
import '../../../extensions.dart';
import '../../../formation.dart';
import '../../../level_data.dart';
import '../../../math/path.dart';
import '../../../math/vector.dart';
import '../../../moves.dart';
import '../../call_context.dart';
import '../../call_error.dart';
import '../action.dart';

//  This covers both Promenade Home and
//  Swing Your Corner And Promenade
class PromenadeHome extends Action {

  @override var help = '''If all the dancers are in sequence and near their partner, you can
Promenade Home
You can also finish a singing call sequence with
Swing Corner and Promenade
Or, skip the Swing with
Promenade Corner''';
  @override var helplink = 'b1/promenade';

  PromenadeHome(super.name);

  var _startPoints = <Vector>[];

  @override
  void performCall(CallContext ctx) {
    if (!name.endsWith('Home') && !name.contains('Corner'))
      throw CallError('Use either Promenade Home or Promenade <fraction>');
    if (ctx.dancers.length != 8)
      throw CallError('Only for 4 couples at this point.');
    //   Compute the center point of each couple
    _startPoints = [1, 2, 3, 4].map((coupleNumber) {
      var couple = ctx.dancers.where((d) =>
      (d.gender == Gender.GIRL && name.contains('Corner'))
          ? (d.numberCouple.i % 4 + 1 == coupleNumber)
          : d.numberCouple.i == coupleNumber).toList();
      var boy = couple[0];
      var girl = couple[1];
      var center = (boy.location + girl.location) / 2.0;
      //  Snap to the nearest axis in the promenade direction
      //  In 1st quadrant, off X-axis -> snap to Y axis
      if (!center.x.isLessThan(0.0) && center.y.isGreaterThan(0.0))
        return Vector(0.0, 2.0);
      //  2nd quadrant, off Y-axis -> snap to -X axis
      else if (center.x.isLessThan(0.0) && !center.y.isLessThan(0.0))
        return Vector(-2.0, 0.0);
      //  3rd quadrant, off X-axis -> snap to -Y axis
      else if (!center.x.isGreaterThan(0.0) && center.y.isLessThan(0.0))
        return Vector(0.0, -2.0);
      else
        return Vector(2.0, 0.0); // 4th quadrant
    }).toList();

    //  Should be one couple at each axis point
    if (_startPoints.fold<Vector>(Vector(), (a, b) => a+b) != Vector())
      throw CallError('Dancers not positioned properly for Promenade.');
    //  Check that dancers are in sequence
    for (var i2=0; i2<_startPoints.length; i2++) {
      var v = _startPoints[i2];
      var a1 = v.angle;
      var a2 = _startPoints[(i2+1) % 4].angle;
      var adiff = a2.angleDiff(a1);
      if (!adiff.isAround(pi/2.0))
        throw CallError('Dancers are not resolved, cannot promenade home.');
    }
    //  Now get each dancer to move to the calculated promenade position
    super.performCall(ctx);
    //  Promenade to home
    var dc = ctx.actives.first;
    var a = (dc.numberCouple.i + 1.0) * pi / 2.0;
    do {
      ctx.applyCalls('Counter Rotate');
    } while (dc.path.movelist.length < 100 && // sanity check
        !dc.anglePosition.isAround(a));
    //  Adjust from promenade to squared set
    ctx.applyCalls('Half Wheel Around');
    ctx.adjustToFormation(Formation('Squared Set'));
    ctx.level = LevelData.B1;  // otherwise Counter Rotate would set to C-1
  }

  @override
  Path performOne(DancerModel d, CallContext ctx) {
    var num = (d.gender == Gender.GIRL && name.contains('Corner'))
        ? d.numberCouple.i % 4 + 1
        : d.numberCouple.i;
    var startCouple = _startPoints[num-1];
    var startLocation = startCouple * (d.gender == Gender.BOY ? 1.0 : 1.5);
    var startAngle = startCouple.angle + pi/2;
    var extraMoves = Path();
    if (name.contains('Corner') && name.contains('Swing')) {
      startAngle = d.gender == Gender.BOY
          ? startCouple.angle
          : startCouple.angle + pi;
      extraMoves = ssqtr + ssqtr + ssqtr + ssqtr +
          (d.gender == Gender.BOY ? QuarterLeft : QuarterRight);
    }
    return ctx.moveToPosition(d, startLocation, startAngle) + extraMoves;
  }

}