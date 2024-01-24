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

class AllemandeLeft extends Action {

  AllemandeLeft(super.name);

  var _startPoints = <Vector>[];

  @override
  void performCall(CallContext ctx) {
    if (ctx.dancers.length != 8)
      throw CallError('Only for 4 couples at this point.');
    //   Compute the center point of each couple
    _startPoints = [1, 2, 3, 4].map((coupleNumber) {
      var couple = ctx.dancers.where((d) => (d.gender == Gender.GIRL)
          ? (d.numberCouple.i % 4 + 1 == coupleNumber)
          : d.numberCouple.i == coupleNumber).toList();
      var boy = couple[0];
      var girl = couple[1];
      return (boy.location + girl.location) / 2.0;
    }).toList();
    super.performCall(ctx);
  }

  @override
  Path performOne(DancerModel d, CallContext ctx) {
    var num = (d.gender == Gender.GIRL)
        ? d.numberCouple.i % 4 + 1
        : d.numberCouple.i;
    var alPoint = _startPoints[num-1];
    var alAngle = 0.0;
    if (d.gender == Gender.BOY) {
      alPoint -= alPoint / (alPoint.length * 2);
      alAngle = alPoint.angle - pi/2;
    }
    else {
      alPoint += alPoint / (alPoint.length * 2);
      alAngle = alPoint.angle + pi/2;
    }
    return ctx.moveToPosition(d, alPoint, alAngle) +
        SwingLeft.scale(.5,.5) +
        ExtendLeft.scale(1.0,.5);
  }

}