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

import '../../animated_call.dart';
import '../../common_dart.dart';
import '../../moves.dart';

final List<AnimatedCall> ChaseYourCrossNeighbor = [

  AnimatedCall('Chase Your Cross Neighbor',
      formation:Formation('Couples Facing Out'),
      from:'Couples Facing Out',parts:'3.7',
      paths:[
        UmTurnRight.skew(-2.0,0.0) +
            LeadRight.changeBeats(3.5).scale(3.5,1.5) +
            UmTurnRight.skew(-0.5,-0.5),

        FlipRight +
            ExtendRight.changeBeats(2).scale(2.0,1.75) +
            SwingLeft.scale(0.75,0.75) +
            HingeLeft.skew(0.0,-0.25)
      ]),

  AnimatedCall('Chase Your Cross Neighbor',
      formation:Formation('Lines Facing Out'),
      from:'Lines Facing Out',parts:'3.7',
      paths:[
        UmTurnRight.skew(-2.0,0.0) +
            LeadRight.changeBeats(3.5).scale(3.5,1.5) +
            UmTurnRight.skew(-0.5,-0.5),

        FlipRight +
            ExtendRight.changeBeats(2).scale(2.0,1.75) +
            SwingLeft.scale(0.75,0.75) +
            HingeLeft.skew(0.0,-0.25),

        UmTurnRight.skew(-2.0,0.0) +
            LeadRight.changeBeats(3.5).scale(3.5,1.5) +
            UmTurnRight.skew(-0.5,-0.5),

        FlipRight +
            ExtendRight.changeBeats(2).scale(2.0,1.75) +
            SwingLeft.scale(0.75,0.75) +
            HingeLeft.skew(0.0,-0.25)
      ]),

  AnimatedCall('Chase Your Cross Neighbor',
      formation:Formation('Trade By'),
      from:'Trade By',parts:'3',
      paths:[
        UmTurnRight.skew(-2.0,0.0) +
            LeadRight.changeBeats(2).scale(0.5,1.0) +
            UmTurnRight,

        FlipRight +
            ExtendRight.scale(1.0,1.5) +
            SwingLeft.scale(0.5,0.5) +
            HingeLeft.scale(0.5,0.5),

        UmTurnRight.skew(-2.0,0.0) +
            LeadRight.changeBeats(2).scale(0.5,1.0) +
            UmTurnRight,

        FlipRight +
            ExtendRight.scale(1.0,1.5) +
            SwingLeft.scale(0.5,0.5) +
            HingeLeft.scale(0.5,0.5)
      ]),

  AnimatedCall('Left Chase Your Cross Neighbor',
      formation:Formation('Couples Facing Out'),
      from:'Couples Facing Out',parts:'3.7',
      paths:[
        FlipLeft +
            ExtendLeft.changeBeats(2).scale(2.0,1.75) +
            SwingRight.scale(0.75,0.75) +
            HingeRight.skew(0.0,0.25),

        UmTurnLeft.skew(-2.0,0.0) +
            LeadLeft.changeBeats(3.5).scale(3.5,1.5) +
            UmTurnLeft.skew(-0.5,0.5)
      ]),

  AnimatedCall('Left Chase Your Cross Neighbor',
      formation:Formation('Lines Facing Out'),
      from:'Lines Facing Out',parts:'3.7',
      paths:[
        FlipLeft +
            ExtendLeft.changeBeats(2).scale(2.0,1.75) +
            SwingRight.scale(0.75,0.75) +
            HingeRight.skew(0.0,0.25),

        UmTurnLeft.skew(-2.0,0.0) +
            LeadLeft.changeBeats(3.5).scale(3.5,1.5) +
            UmTurnLeft.skew(-0.5,0.5),

        FlipLeft +
            ExtendLeft.changeBeats(2).scale(2.0,1.75) +
            SwingRight.scale(0.75,0.75) +
            HingeRight.skew(0.0,0.25),

        UmTurnLeft.skew(-2.0,0.0) +
            LeadLeft.changeBeats(3.5).scale(3.5,1.5) +
            UmTurnLeft.skew(-0.5,0.5),

      ]),

  AnimatedCall('Left Chase Your Cross Neighbor',
      formation:Formation('Trade By'),
      from:'Trade By',parts:'3',
      paths:[
        FlipLeft +
            ExtendLeft.scale(1.0,1.5) +
            SwingRight.scale(0.5,0.5) +
            HingeRight.scale(0.5,0.5),

        UmTurnLeft.skew(-2.0,0.0) +
            LeadLeft.changeBeats(2).scale(0.5,1.0) +
            UmTurnLeft,

        FlipLeft +
            ExtendLeft.scale(1.0,1.5) +
            SwingRight.scale(0.5,0.5) +
            HingeRight.scale(0.5,0.5),

        UmTurnLeft.skew(-2.0,0.0) +
            LeadLeft.changeBeats(2).scale(0.5,1.0) +
            UmTurnLeft,

      ]),

  ];