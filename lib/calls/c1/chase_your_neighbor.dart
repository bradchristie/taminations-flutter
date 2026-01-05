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

  final List<AnimatedCall> ChaseYourNeighbor = [

    AnimatedCall('Chase Your Neighbor',
      formation:Formation('Couples Facing Out'),
      from:'Couples Facing Out',parts:'3.7',
      paths:[
          UmTurnRight.skew(-2.0,0.0) +
          LeadRight.changeBeats(3.5).scale(3.5,1.5) +
          UmTurnRight.skew(-0.5,-0.5),

          FlipRight +
          ExtendRight.changeBeats(2).scale(2.0,0.25) +
          SwingRight.scale(0.75,0.75) +
          HingeRight.skew(0.0,0.25)
      ]),

    AnimatedCall('Chase Your Neighbor',
      formation:Formation('Lines Facing Out'),
      from:'Lines Facing Out',parts:'3.7',
      paths:[
          UmTurnRight.skew(-2.0,0.0) +
          LeadRight.changeBeats(3.5).scale(3.5,1.5) +
          UmTurnRight.skew(-0.5,-0.5),

          FlipRight +
          ExtendRight.changeBeats(2).scale(2.0,0.25) +
          SwingRight.scale(0.75,0.75) +
          HingeRight.skew(0.0,0.25),

          UmTurnRight.skew(-2.0,0.0) +
          LeadRight.changeBeats(3.5).scale(3.5,1.5) +
          UmTurnRight.skew(-0.5,-0.5),

          FlipRight +
          ExtendRight.changeBeats(2).scale(2.0,0.25) +
          SwingRight.scale(0.75,0.75) +
          HingeRight.skew(0.0,0.25)
      ]),

    AnimatedCall('Chase Your Neighbor',
      formation:Formation('Trade By'),
      from:'Trade By',parts:'3',
      paths:[
          UmTurnRight.skew(-2.0,0.0) +
          LeadRight.changeBeats(2).scale(0.5,1.0) +
          UmTurnRight,

          FlipRight +
          ExtendRight.scale(1.0,0.5) +
          SwingRight.scale(0.5,0.5) +
          HingeRight.scale(0.5,0.5),

          UmTurnRight.skew(-2.0,0.0) +
          LeadRight.changeBeats(2).scale(0.5,1.0) +
          UmTurnRight,

          FlipRight +
          ExtendRight.scale(1.0,0.5) +
          SwingRight.scale(0.5,0.5) +
          HingeRight.scale(0.5,0.5)
      ]),

    AnimatedCall('Left Chase Your Neighbor',
      formation:Formation('Couples Facing Out'),
      from:'Couples Facing Out',parts:'3.7',
      paths:[
          FlipLeft +
          ExtendLeft.changeBeats(2).scale(2.0,0.25) +
          SwingLeft.scale(0.75,0.75) +
          HingeLeft.skew(0.0,-0.25),

          UmTurnLeft.skew(-2.0,0.0) +
          LeadLeft.changeBeats(3.5).scale(3.5,1.5) +
          UmTurnLeft.skew(-0.5,0.5)
      ]),

    AnimatedCall('Left Chase Your Neighbor',
      formation:Formation('Lines Facing Out'),
      from:'Lines Facing Out',parts:'3.7',
      paths:[
          FlipLeft +
          ExtendLeft.changeBeats(2).scale(2.0,0.25) +
          SwingLeft.scale(0.75,0.75) +
          HingeLeft.skew(0.0,-0.25),

          UmTurnLeft.skew(-2.0,0.0) +
          LeadLeft.changeBeats(3.5).scale(3.5,1.5) +
          UmTurnLeft.skew(-0.5,0.5),

          FlipLeft +
          ExtendLeft.changeBeats(2).scale(2.0,0.25) +
          SwingLeft.scale(0.75,0.75) +
          HingeLeft.skew(0.0,-0.25),

          UmTurnLeft.skew(-2.0,0.0) +
          LeadLeft.changeBeats(3.5).scale(3.5,1.5) +
          UmTurnLeft.skew(-0.5,0.5)
      ]),

    AnimatedCall('Left Chase Your Neighbor',
      formation:Formation('Trade By'),
      from:'Trade By',parts:'3',
      paths:[
          FlipLeft +
          ExtendLeft.scale(1.0,0.5) +
          SwingLeft.scale(0.5,0.5) +
          HingeLeft.scale(0.5,0.5),

          UmTurnLeft.skew(-2.0,0.0) +
          LeadLeft.changeBeats(2).scale(0.5,1.0) +
          UmTurnLeft,

          FlipLeft +
          ExtendLeft.scale(1.0,0.5) +
          SwingLeft.scale(0.5,0.5) +
          HingeLeft.scale(0.5,0.5),

          UmTurnLeft.skew(-2.0,0.0) +
          LeadLeft.changeBeats(2).scale(0.5,1.0) +
          UmTurnLeft
      ]),

    AnimatedCall('All 8 Chase Your Neighbor',
      formation:Formation('Static Facing Out'),
      group:' ',parts:'4.3',
      paths:[
          FlipRight +
          Forward_3 +
          CastRight,

          UmTurnRight.skew(-3.0,0.0) +
          LeadRight.changeBeats(4).scale(3.5,1.5) +
          UmTurnRight.skew(-0.5,-0.5),

          FlipRight +
          Forward_3 +
          CastRight,

          UmTurnRight.skew(-3.0,0.0) +
          LeadRight.changeBeats(4).scale(3.5,1.5) +
          UmTurnRight.skew(-0.5,-0.5)
      ]),

    AnimatedCall('As Couples Chase Your Neighbor',
      formation:Formation('Lines Facing Out'),
      from:'Lines Facing Out',group:' ',parts:'6',
      paths:[
          BackRunLeft.changehands(Hands.LEFT).skew(-1.0,0.0) +
          Forward_3.changehands(Hands.LEFT) +
          LeadRight.changeBeats(3).changehands(Hands.LEFT).scale(0.5,1.0) +
          BackRunLeft.scale(0.5,0.5),

          RunRight.changehands(Hands.RIGHT).skew(-1.0,0.0) +
          Forward_3.changehands(Hands.RIGHT) +
          LeadRight.changeBeats(3).changehands(Hands.RIGHT).scale(1.5,3.0) +
          RunRight.scale(0.5,0.5),

          RunRight.changeBeats(6).changehands(Hands.LEFT) +
          ExtendRight.changeBeats(3).changehands(Hands.LEFT).scale(2.0,0.5) +
          RunRight.changeBeats(4).scale(0.5,0.5) +
          HingeRight.changeBeats(2).scale(0.5,0.5),

          RunRight.changeBeats(6).changehands(Hands.RIGHT).scale(3.0,3.0) +
          ExtendRight.changeBeats(3).changehands(Hands.RIGHT).scale(2.0,1.5) +
          RunRight.changeBeats(4).scale(1.5,1.5) +
          HingeRight.changeBeats(2).scale(1.5,1.5)
      ]),

    AnimatedCall('Concentric Chase Your Neighbor',
      formation:Formation('Lines Facing Out'),
      group:' ',
      paths:[
          FlipRight.changeBeats(5).scale(1.0,0.5).skew(-2.0,0.0) +
          LeadRight.changeBeats(6).scale(4.5,4.0) +
          RunRight.changeBeats(4).scale(0.5,0.5),

          UmTurnRight.skew(-2.0,0.0) +
          LeadRight.changeBeats(2).scale(1.5,1.0) +
          UmTurnRight,

          FlipRight +
          ExtendRight.changeBeats(2).scale(2.0,0.5) +
          CastRight.scale(0.5,0.5),

          RunRight.changeBeats(6).scale(2.5,2.75).skew(-2.0,0.0) +
          CastRight.changeBeats(9).changehands(0).scale(2.5,2.5)
      ]),

    AnimatedCall('Tandem Chase Your Neighbor',
      formation:Formation('Completed Double Pass Thru'),
      group:' ',
      paths:[
          FlipRight.skew(-2.0,0.0) +
          Forward_2 +
          LeadRight.changeBeats(4).scale(3.0,3.0) +
          RunRight.scale(0.5,0.5) +
          Forward_2,

          RunRight.skew(-1.0,0.0) +
          Forward_3 +
          QuarterRight.changeBeats(3).changehands(Hands.GRIPRIGHT).skew(0.0,-2.0) +
          QuarterRight.changeBeats(3).changehands(Hands.GRIPRIGHT).skew(0.0,-2.0) +
          QuarterRight.changeBeats(4).changehands(Hands.GRIPRIGHT).skew(0.0,-3.0),

          Forward_2 +
          FlipRight.skew(-2.0,0.0) +
          Forward_2 +
          LeadRight.changeBeats(4).scale(3.0,3.0) +
          FlipRight.scale(1.0,0.5).skew(2.0,0.0),

          Forward_2 +
          RunRight.skew(-1.0,0.0) +
          Forward +
          QuarterRight.changeBeats(3).changehands(Hands.GRIPRIGHT).skew(2.0,0.0) +
          QuarterRight.changeBeats(3).changehands(Hands.GRIPRIGHT).skew(2.0,0.0) +
          QuarterRight.changeBeats(4).changehands(Hands.GRIPRIGHT).skew(2.0,1.0)
      ]),

    AnimatedCall('Triple Box Chase Your Neighbor',
      formation:Formation('Phantom Lines Out'),
      group:' ',parts:'3.7',
      paths:[
          FlipRight +
          ExtendRight.changeBeats(2).scale(2.0,0.25) +
          SwingRight.scale(0.75,0.75) +
          HingeRight.skew(0.0,0.25),

          UmTurnRight.skew(-2.0,0.0) +
          LeadRight.changeBeats(3.5).scale(3.5,1.5) +
          UmTurnRight.skew(-0.5,-0.5),

          FlipRight +
          ExtendRight.changeBeats(2).scale(2.0,0.25) +
          SwingRight.scale(0.75,0.75) +
          HingeRight.skew(0.0,0.25),

          UmTurnRight.skew(-2.0,0.0) +
          LeadRight.changeBeats(3.5).scale(3.5,1.5) +
          UmTurnRight.skew(-0.5,-0.5),

          FlipRight +
          ExtendRight.changeBeats(2).scale(2.0,0.25) +
          SwingRight.scale(0.75,0.75) +
          HingeRight.skew(0.0,0.25),

          UmTurnRight.skew(-2.0,0.0) +
          LeadRight.changeBeats(3.5).scale(3.5,1.5) +
          UmTurnRight.skew(-0.5,-0.5)
      ]),
  ];

