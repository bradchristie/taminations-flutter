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

import '../../animated_call.dart';
import '../../common_dart.dart';
import '../../moves.dart';

final List<AnimatedCall> SingleShakeAndRattle = [

  AnimatedCall('Single Shake and Rattle',
      from: 'Single Double Pass Thru',
      formation: Formation('Single Double Pass Thru'),
      paths: [
        LeadLeft.changeBeats(3).scale(1.5, 1),
        FlipRight.changeBeats(2).scale(1, .5) +
            QuarterRight.changeBeats(1).skew(.5, 0)
      ]),

  AnimatedCall('Single Shake and Rattle',
      from: 'Completed Single Double Pass Thru',
      formation: Formation('Completed Single Double Pass Thru'),
      paths: [
        FlipRight.changeBeats(2).skew(-1,1) +
            QuarterRight.changeBeats(1).skew(1, 0),
        QuarterLeft.changeBeats(3).skew(0,1)
      ]),

  AnimatedCall('Single Shake and Rattle',
      from: 'Single Column Facing',
      formation: Formation('Single Column Facing'),
      paths: [
        LeadLeft.changeBeats(3).scale(2, 1),
        QuarterLeft.changeBeats(3).skew(0,1)
      ]),

  AnimatedCall('Single Shake and Rattle',
      from: 'Single Double Pass Thru',
      formation: Formation('Single Double Pass Thru'),
      paths: [
        LeadLeft.changeBeats(3).scale(1.5, 1),
        FlipRight.changeBeats(2).scale(1, .5) +
            QuarterRight.changeBeats(1).skew(.5, 0)
      ]),

  ];