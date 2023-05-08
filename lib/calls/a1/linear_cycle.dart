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

import '../../animated_call.dart';
import '../../formation.dart';
import '../../moves.dart';

  final List<AnimatedCall> LinearCycle = [

    AnimatedCall('Linear Cycle',
      formation:Formation('Two-Faced Line RH'),
      from:'Right-Hand Two-Faced Line',parts:'1.5;4',
      paths:[
          HingeRight +
          Forward_4 +
          RunRight,

          QuarterLeft.skew(-1.0,1.0) +
          RunRight +
          Forward_2 +
          UmTurnRight.skew(2.0,0.0)
      ]),

    AnimatedCall('Linear Cycle',
      formation:Formation('Two-Faced Line LH'),
      from:'Left-Hand Two-Faced Line',parts:'1.5;4',
      paths:[
          HingeRight +
          RunRight +
          Forward_2 +
          UmTurnRight.skew(2.0,0.0),

          QuarterLeft.skew(-1.0,1.0) +
          Forward_4 +
          RunRight
      ]),

    AnimatedCall('Linear Cycle',
      formation:Formation('Lines Facing Out'),
      from:'Lines Facing Out',parts:'1.5;4',
      paths:[
          QuarterLeft.skew(-1.0,1.0) +
          Forward_4 +
          RunRight,

          HingeRight +
          RunRight +
          Forward_2 +
          UmTurnRight.skew(2.0,0.0),

          QuarterLeft.skew(-1.0,1.0) +
          RunRight +
          Forward_2 +
          UmTurnRight.skew(2.0,0.0),

          HingeRight +
          Forward_4 +
          RunRight
      ]),

    AnimatedCall('Linear Cycle',
      formation:Formation('Two-Faced Lines RH'),
      from:'Right-Hand Two-Faced Lines',parts:'1.5;4',
      paths:[
          HingeRight +
          Forward_4 +
          RunRight,

          QuarterLeft.skew(-1.0,1.0) +
          RunRight +
          Forward_2 +
          UmTurnRight.skew(2.0,0.0),

          QuarterLeft.skew(-1.0,1.0) +
          RunRight +
          Forward_2 +
          UmTurnRight.skew(2.0,0.0),

          HingeRight +
          Forward_4 +
          RunRight
      ]),

    AnimatedCall('Linear Cycle',
      formation:Formation('Two-Faced Lines LH'),
      from:'Left-Hand Two-Faced Lines',parts:'1.5;4',
      paths:[
          QuarterLeft.skew(-1.0,1.0) +
          Forward_4 +
          RunRight,

          HingeRight +
          RunRight +
          Forward_2 +
          UmTurnRight.skew(2.0,0.0),

          HingeRight +
          RunRight +
          Forward_2 +
          UmTurnRight.skew(2.0,0.0),

          QuarterLeft.skew(-1.0,1.0) +
          Forward_4 +
          RunRight
      ]),

    AnimatedCall('Linear Cycle',
      formation:Formation('Inverted Lines Ends Facing In'),
      from:'Inverted Lines, Ends Facing In',parts:'1.5;4',
      paths:[
          HingeRight +
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          Forward_2 +
          RunRight.scale(1.0,1.25),

          HingeRight +
          RunRight.scale(1.0,1.25) +
          Forward_2 +
          UmTurnRight.changeBeats(2).skew(2.0,-0.5),

          HingeLeft +
          RunLeft.scale(1.0,0.75) +
          Forward_2 +
          UmTurnLeft.changeBeats(2).skew(2.0,-0.5),

          HingeLeft +
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          Forward_2 +
          RunLeft.scale(1.0,0.75)
      ]),

    AnimatedCall('Linear Cycle',
      formation:Formation('Inverted Lines Ends Facing Out'),
      from:'Inverted Lines, Ends Facing Out',parts:'1.5;4',
      paths:[
          HingeLeft +
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          Forward_2 +
          RunLeft.scale(1.0,0.75),

          HingeLeft +
          RunLeft.scale(1.0,0.75) +
          Forward_2 +
          UmTurnLeft.changeBeats(2).skew(2.0,-0.5),

          HingeRight +
          RunRight.scale(1.0,1.25) +
          Forward_2 +
          UmTurnRight.changeBeats(2).skew(2.0,-0.5),

          HingeRight +
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          Forward_2 +
          RunRight.scale(1.0,1.25)
      ]),

    AnimatedCall('Linear Cycle',
      formation:Formation('3 and 1 Lines #5'),
      from:'3 and 1 Lines',
      paths:[
          HingeRight +
          Forward_4 +
          RunRight,

          HingeRight +
          RunRight +
          Forward_2 +
          UmTurnRight.skew(2.0,0.0),

          QuarterLeft.skew(-1.0,1.0) +
          RunRight +
          Forward_2 +
          UmTurnRight.skew(2.0,0.0),

          HingeRight +
          Forward_4 +
          RunRight
      ]),

    AnimatedCall('Linear Cycle',
      formation:Formation('Two-Faced Tidal Line RH'),
      from:'Right-Hand Two-Faced Tidal Line',parts:'1.5;4',
      paths:[
          HingeRight.scale(1.0,0.5) +
          Forward_2 +
          RunRight.scale(0.5,1.0),

          QuarterLeft.skew(-1.0,0.5) +
          RunRight +
          UmTurnRight.skew(2.0,0.0),

          QuarterLeft.skew(-1.0,0.5) +
          RunRight.scale(0.5,1.0) +
          UmTurnRight.skew(2.0,0.0),

          HingeRight.scale(1.0,0.5) +
          Forward_2 +
          RunRight
      ]),

    AnimatedCall('Linear Cycle',
      formation:Formation('Two-Faced Tidal Line LH'),
      from:'Left-Hand Two-Faced Tidal Line',parts:'1.5;4',
      paths:[
          QuarterLeft.skew(-1.0,0.5) +
          Forward_2 +
          RunRight.scale(0.5,1.0),

          HingeRight.scale(1.0,0.5) +
          RunRight +
          UmTurnRight.skew(2.0,0.0),

          HingeRight.scale(1.0,0.5) +
          RunRight.scale(0.5,1.0) +
          UmTurnRight.skew(2.0,0.0),

          QuarterLeft.skew(-1.0,0.5) +
          Forward_2 +
          RunRight
      ]),

    AnimatedCall('Linear Cycle',
      formation:Formation('Tidal Line RH'),
      from:'Right-Hand Tidal Line',parts:'1.5;4',
      paths:[
          HingeRight.scale(1.0,0.5) +
          Forward_2 +
          RunRight.scale(0.5,1.0),

          QuarterLeft.skew(-1.0,0.5) +
          RunRight +
          UmTurnRight.skew(2.0,0.0),

          HingeRight.scale(1.0,0.5) +
          RunRight.scale(0.5,1.0) +
          UmTurnRight.skew(2.0,0.0),

          QuarterLeft.skew(-1.0,0.5) +
          Forward_2 +
          RunRight
      ]),

    AnimatedCall('Linear Cycle',
      formation:Formation('Tidal Line LH'),
      from:'Left-Hand Tidal Line',parts:'1.5;4',
      paths:[
          HingeRight.scale(1.0,0.5) +
          RunRight +
          UmTurnRight.skew(2.0,0.0),

          QuarterLeft.skew(-1.0,0.5) +
          Forward_2 +
          RunRight.scale(0.5,1.0),

          HingeRight.scale(1.0,0.5) +
          Forward_2 +
          RunRight,

          QuarterLeft.skew(-1.0,0.5) +
          RunRight.scale(0.5,1.0) +
          UmTurnRight.skew(2.0,0.0)
      ]),

    AnimatedCall('Linear Cycle',
      formation:Formation('Tidal Inverted Line RH'),
      from:'Right-Hand Tidal Inverted Line',parts:'1.5;4',
      paths:[
          HingeRight.scale(1.0,0.5) +
          ExtendLeft.changeBeats(2).scale(1.0,0.5) +
          Forward +
          RunRight.scale(0.5,1.25),

          HingeRight.scale(1.0,0.5) +
          RunRight.scale(1.0,1.25) +
          Forward +
          UmTurnRight.changeBeats(2).skew(1.0,-0.5),

          HingeLeft.scale(1.0,0.5) +
          RunLeft.scale(0.5,0.75) +
          Forward +
          UmTurnLeft.changeBeats(2).skew(1.0,-0.5),

          HingeLeft.scale(1.0,0.5) +
          ExtendLeft.changeBeats(2).scale(1.0,0.5) +
          Forward +
          RunLeft.scale(1.0,0.75)
      ]),

    AnimatedCall('Linear Cycle',
      formation:Formation('Tidal Inverted Line LH'),
      from:'Left-Hand Tidal Inverted Line',parts:'1.5;4',
      paths:[
          HingeLeft.scale(1.0,0.5) +
          ExtendLeft.changeBeats(2).scale(1.0,0.5) +
          Forward +
          RunLeft.scale(0.5,0.75),

          HingeLeft.scale(1.0,0.5) +
          RunLeft.scale(0.5,0.75) +
          Forward +
          UmTurnLeft.changeBeats(2).skew(1.0,-0.5),

          HingeRight.scale(1.0,0.5) +
          RunRight.scale(0.5,1.25) +
          Forward +
          UmTurnRight.changeBeats(2).skew(1.0,-0.5),

          HingeRight.scale(1.0,0.5) +
          ExtendLeft.changeBeats(2).scale(1.0,0.5) +
          Forward +
          RunRight.scale(0.5,1.25)
      ]),

    AnimatedCall('Left Linear Cycle',
      formation:Formation('Two-Faced Line RH'),
      from:'Right-Hand Two-Faced Line',parts:'1.5;4',
      paths:[
          QuarterRight.skew(-1.0,-1.0) +
          Forward_4 +
          RunLeft,

          HingeLeft +
          RunLeft +
          Forward_2 +
          UmTurnLeft.skew(2.0,0.0)
      ]),

    AnimatedCall('Left Linear Cycle',
      formation:Formation('Two-Faced Line LH'),
      from:'Left-Hand Two-Faced Line',parts:'1.5;4',
      paths:[
          QuarterRight.skew(-1.0,-1.0) +
          RunLeft +
          Forward_2 +
          UmTurnLeft.skew(2.0,0.0),

          HingeLeft +
          Forward_4 +
          RunLeft
      ]),

    AnimatedCall('Left Linear Cycle',
      formation:Formation('Lines Facing Out'),
      from:'Lines Facing Out',parts:'1.5;4',
      paths:[
          HingeLeft +
          Forward_4 +
          RunLeft,

          QuarterRight.skew(-1.0,-1.0) +
          RunLeft +
          Forward_2 +
          UmTurnLeft.skew(2.0,0.0),

          HingeLeft +
          RunLeft +
          Forward_2 +
          UmTurnLeft.skew(2.0,0.0),

          QuarterRight.skew(-1.0,-1.0) +
          Forward_4 +
          RunLeft
      ]),

    AnimatedCall('Left Linear Cycle',
      formation:Formation('Two-Faced Tidal Line RH'),
      from:'Right-Hand Two-Faced Tidal Line',parts:'1.5;4',
      paths:[
          QuarterRight.skew(-1.0,-0.5) +
          Forward_2 +
          RunLeft.scale(0.5,1.0),

          HingeLeft.scale(1.0,0.5) +
          RunLeft +
          UmTurnLeft.skew(2.0,0.0),

          HingeLeft.scale(1.0,0.5) +
          RunLeft.scale(0.5,1.0) +
          UmTurnLeft.skew(2.0,0.0),

          QuarterRight.skew(-1.0,-0.5) +
          Forward_2 +
          RunLeft
      ]),

    AnimatedCall('Left Linear Cycle',
      formation:Formation('Two-Faced Tidal Line LH'),
      from:'Left-Hand Two-Faced Tidal Line',parts:'1.5;4',
      paths:[
          HingeLeft.scale(1.0,0.5) +
          Forward_2 +
          RunLeft.scale(0.5,1.0),

          QuarterRight.skew(-1.0,-0.5) +
          RunLeft +
          UmTurnLeft.skew(2.0,0.0),

          QuarterRight.skew(-1.0,-0.5) +
          RunLeft.scale(0.5,1.0) +
          UmTurnLeft.skew(2.0,0.0),

          HingeLeft.scale(1.0,0.5) +
          Forward_2 +
          RunLeft
      ]),

    AnimatedCall('Left Linear Cycle',
      formation:Formation('Tidal Line RH'),
      from:'Right-Hand Tidal Line',parts:'1.5;4',
      paths:[
          QuarterRight.skew(-1.0,-0.5) +
          Forward_2 +
          RunLeft.scale(0.5,1.0),

          HingeLeft.scale(1.0,0.5) +
          RunLeft +
          UmTurnLeft.skew(2.0,0.0),

          QuarterRight.skew(-1.0,-0.5) +
          RunLeft.scale(0.5,1.0) +
          UmTurnLeft.skew(2.0,0.0),

          HingeLeft.scale(1.0,0.5) +
          Forward_2 +
          RunLeft
      ]),

    AnimatedCall('Left Linear Cycle',
      formation:Formation('Tidal Line LH'),
      from:'Left-Hand Tidal Line',parts:'1.5;4',
      paths:[
          QuarterRight.skew(-1.0,-0.5) +
          RunLeft +
          UmTurnLeft.skew(2.0,0.0),

          HingeLeft.scale(1.0,0.5) +
          Forward_2 +
          RunLeft.scale(0.5,1.0),

          QuarterRight.skew(-1.0,-0.5) +
          Forward_2 +
          RunLeft,

          HingeLeft.scale(1.0,0.5) +
          RunLeft.scale(0.5,1.0) +
          UmTurnLeft.skew(2.0,0.0)
      ]),

    AnimatedCall('As Couples Linear Cycle',
      formation:Formation('Tidal Line RH'),
      group:' ',
      paths:[
          HingeRight.changeBeats(3).scale(1.5,1.5) +
          Forward_4 +
          RunRight.changeBeats(4).changehands(2).scale(1.5,2.25),

          HingeRight.changeBeats(3).changehands(1).scale(0.5,0.5) +
          Forward_4 +
          RunRight.changeBeats(4).changehands(1).scale(0.5,0.75),

          QuarterLeft.changeBeats(3).changehands(2).skew(-1.5,0.5) +
          RunRight.scale(1.5,1.5) +
          Forward_4 +
          BelleWheel.scale(1.0,-1.0).skew(0.0,1.5),

          QuarterLeft.changeBeats(3).changehands(1).skew(-0.5,1.5) +
          RunRight.scale(0.5,0.5) +
          Forward_4 +
          BeauWheel.scale(1.0,-1.0).skew(0.0,0.5)
      ]),
  ];

