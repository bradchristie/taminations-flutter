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
import '../../../math/bezier.dart';

class BoxCounterRotate extends Action {

  @override final level = LevelData.A2;
  BoxCounterRotate() : super('Box Counter Rotate');

  @override
  Path performOne(Dancer d, CallContext ctx) {
    final v = d.location;
    Vector v2;
    double cy4;
    double y4;
    final a1 = d.tx.angle;
    final a2 = v.angle;
    //  Determine if this is a rotate left or right
    final angdif = a2.angleDiff(a1);
    if (angdif < 0) {
      //  Left
      v2 = v.rotate(pi/2);
      cy4 = 0.45;
      y4 = 1.0;
    } else {
      // Right
      v2 = v.rotate(-pi/2);
      cy4 = -0.45;
      y4 = -1.0;
    }
    //  Compute the model points
    final dv = (v2 - v).rotate(-a1);
    final cv1 = (v2*.5).rotate(-a1);
    final cv2 = (v*.5).rotate(-a1) + dv;
    final m = Movement(
        2.0, Hands.NOHANDS,
        Bezier([[0.0,0.0].v,cv1, cv2, dv]),
        Bezier([[0.0,0.0].v,[0.55, 0.0].v, [1.0, cy4].v, [1.0, y4].v]));
    return Path([m]);
  }

}