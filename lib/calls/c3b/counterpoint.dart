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

final List<AnimatedCall> Counterpoint = [

  AnimatedCall('Counterpoint', formation: Formation('Ocean Waves RH BGGB'),
      from: 'Right-Hand Waves',
      paths: [
        LeadRight.changeBeats(4).scale(5, 1),

        RunLeft.changeBeats(4).changehands(Hands.GRIPLEFT).scale(1.0,2.0).skew(-2.0,0.0),

        UmTurnLeft.changeBeats(4).changehands(Hands.GRIPLEFT).skew(2.0,0.0),

        LeadRight.changeBeats(4).scale(1, 5)

      ]),

  AnimatedCall('Counterpoint', formation: Formation('Normal Lines'),
      from: 'Normal Lines',
      paths: [
        ExtendLeft.changeBeats(1.5).scale(2, 1) +
            LeadRight.changeBeats(1.5).scale(3, 2),

        UmTurnRight.changeBeats(3).skew(2,0.0),

        Path.fromMovement(Movement.fromData(beats: 3, hands: Hands.NONE, cx1: -.5, cy1: 0, cx2: 0, cy2: 4, x2: 2, y2: 4, cx3: 1, cx4: 2, cy4: 2, x4: 3, y4: 2  )),

        Forward_2.changeBeats(1.5) +
            LeadLeft.changeBeats(1.5).scale(3, 1),

      ]),

  AnimatedCall('Cross Counterpoint', formation: Formation('Ocean Waves RH BGGB'),
      from: 'Right-Hand Waves',
      paths: [
        LeadRight.changeBeats(4).scale(5, 1),

        RunLeft.changeBeats(4).changehands(Hands.GRIPLEFT).scale(1.0,2.0).skew(-2.0,0.0),

        UmTurnLeft.changeBeats(4).changehands(Hands.GRIPLEFT).skew(2.0,0.0) +
            BackSashayRight.changeBeats(2).scale(1.5,1.0),

        LeadRight.changeBeats(4).scale(1, 5)

      ]),

  AnimatedCall('Cross Counterpoint', formation: Formation('Normal Lines'),
      from: 'Normal Lines',
      paths: [
        ExtendLeft.changeBeats(1.5).scale(2, 1) +
            LeadRight.changeBeats(1.5).scale(3, 2),

        Forward_2 +
            HingeRight.changehands(Hands.RIGHT) +
            HingeRight.changeBeats(2).changehands(Hands.BOTH),

        QuarterLeft.changeBeats(3.5).skew(0.0,1.0) +
            LeadRight.changeBeats(2).changehands(Hands.RIGHT).scale(3.0,2.0),

        Forward_2.changeBeats(1.5) +
            LeadLeft.changeBeats(1.5).scale(3, 1),

      ]),

];