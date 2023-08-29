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
import '../../common_dart.dart';
import '../../moves.dart';

  final List<AnimatedCall> Shakedown = [

    AnimatedCall('Shakedown',
      formation:Formation('Couples Facing Out Compact'),
      from:'Couples Facing Out',
      paths:[
          UmTurnRight.skew(-2.0,-1.0) +
          QuarterRight.skew(0.5,0.0),

          FlipRight.scale(1.0,1.5) +
          QuarterRight.skew(0.5,0.0)
      ]),

    AnimatedCall('Shakedown',
      formation:Formation('Trade By'),
      from:'Trade By',
      paths:[
          UmTurnRight.skew(-1.0,-1.0) +
          QuarterRight.skew(1.0,0.0),

          FlipRight +
          QuarterRight.skew(0.0,1.0),

          UmTurnRight.skew(-1.0,-1.0) +
          QuarterRight.skew(1.0,0.0),

          FlipRight +
          QuarterRight.skew(0.0,1.0)
      ]),

    AnimatedCall('Shakedown',
      formation:Formation('Lines Facing Out Compact'),
      from:'Lines Facing Out',
      paths:[
          UmTurnRight.skew(-1.5,-1.0) +
          LeadRight,

          FlipRight +
          QuarterRight.skew(0.5,0.0),

          UmTurnRight.skew(-1.5,-0.5) +
          LeadRight.scale(1.0,0.5),

          FlipRight +
          QuarterRight.skew(0.5,0.0)
      ]),

    AnimatedCall('Left Shakedown',
      formation:Formation('Couples Facing Out Compact'),
      from:'Couples Facing Out',
      paths:[
          FlipLeft.scale(1.0,1.5) +
          QuarterLeft.skew(0.5,0.0),

          UmTurnLeft.skew(-2.0,1.0) +
          QuarterLeft.skew(0.5,0.0)
      ]),

    AnimatedCall('Left Shakedown',
      formation:Formation('Trade By'),
      from:'Trade By',
      paths:[
          FlipLeft +
          QuarterLeft.skew(0.0,-1.0),

          UmTurnLeft.skew(-1.0,1.0) +
          QuarterLeft.skew(1.0,0.0),

          FlipLeft +
          QuarterLeft.skew(0.0,-1.0),

          UmTurnLeft.skew(-1.0,1.0) +
          QuarterLeft.skew(1.0,0.0)
      ]),

    AnimatedCall('Left Shakedown',
      formation:Formation('Lines Facing Out Compact'),
      from:'Lines Facing Out',
      paths:[
          FlipLeft +
          QuarterLeft.skew(0.5,0.0),

          UmTurnLeft.skew(-1.5,0.5) +
          LeadLeft.scale(1.0,0.5),

          FlipLeft +
          QuarterLeft.skew(0.5,0.0),

          UmTurnLeft.skew(-1.5,1.0) +
          LeadLeft
      ]),

    AnimatedCall('All 8 Shakedown',
      formation:Formation('Static Facing Out'),
      group:' ',
      paths:[
          FlipRight.changeBeats(5).scale(1.0,2.0) +
          QuarterRight.changeBeats(3).skew(2.0,0.0),

          UmTurnRight.changeBeats(5).skew(-2.0,-2.0) +
          QuarterRight.changeBeats(3).skew(2.0,0.0),

          FlipRight.changeBeats(5).scale(1.0,2.0) +
          QuarterRight.changeBeats(3).skew(2.0,0.0),

          UmTurnRight.changeBeats(5).skew(-2.0,-2.0) +
          QuarterRight.changeBeats(3).skew(2.0,0.0)
      ]),

    AnimatedCall('As Couples Shakedown',
      formation:Formation('Lines Facing Out Compact'),
      from:'Lines Facing Out',group:' ',
      paths:[
          BeauWheel.scale(1.0,-1.0).skew(-2.0,-0.5) +
          QuarterRight.changehands(Hands.LEFT).skew(0.5,0.0),

          BelleWheel.scale(1.0,-1.0).skew(-2.0,-0.5) +
          HingeRight.scale(2.0,2.0).skew(0.5,0.0),

          RunRight.changehands(Hands.LEFT).skew(1.5,0.0) +
          QuarterRight.changehands(Hands.LEFT).skew(0.0,0.5),

          RunRight.changehands(Hands.RIGHT).scale(3.0,3.0).skew(1.5,0.0) +
          HingeRight.scale(2.0,2.0).skew(0.0,0.5)
      ]),

    AnimatedCall('Butterfly Shakedown',
      formation:Formation('Butterfly Trade By'),
      group:' ',
      paths:[
          LeadRight.changeBeats(3).scale(1.0,3.0) +
          FlipRight.scale(1.0,0.5).skew(3.0,0.0),

          UmTurnRight.skew(-1.0,0.0) +
          LeadRight.changeBeats(2).scale(1.0,2.0),

          QuarterRight.skew(0.0,-1.0) +
          QuarterRight.skew(1.0,0.0) +
          QuarterRight,

          UmTurnRight.skew(-1.0,-2.0) +
          QuarterRight.skew(1.0,0.0)
      ]),

    AnimatedCall('Concentric Shakedown',
      formation:Formation('Completed Double Pass Thru'),
      from:'Completed Double Pass Thru',group:' ',
      paths:[
          UmTurnRight.skew(-2.0,-2.0) +
          QuarterRight.skew(2.0,0.0),

          FlipRight.skew(-1.0,-1.0) +
          QuarterRight.skew(1.0,1.0),

          UmTurnRight.skew(-1.0,0.0) +
          QuarterRight.skew(1.0,0.0),

          FlipRight.scale(1.0,0.67) +
          QuarterRight.skew(0.0,0.67)
      ]),

    AnimatedCall('"O" Shakedown',
      formation:Formation('O Trade By'),
      group:' ',
      paths:[
          QuarterRight.skew(0.0,-1.0) +
          QuarterRight.skew(1.0,0.0) +
          QuarterRight,

          UmTurnRight.skew(-1.0,-2.0) +
          QuarterRight.skew(1.0,0.0),

          LeadRight.changeBeats(3).scale(0.5,3.0) +
          FlipRight.scale(1.0,0.25).skew(3.0,0.0),

          UmTurnRight.skew(-1.0,0.0) +
          LeadRight.changeBeats(2).scale(1.0,2.0)
      ]),

    AnimatedCall('Stretch Shakedown (from columns)',
      formation:Formation('Trade By'),
      from:'Trade By',group:' ',
      paths:[
          UmTurnRight.skew(-2.0,-1.0) +
          QuarterRight.skew(2.0,0.0),

          FlipRight +
          QuarterRight.skew(0.0,1.0),

          UmTurnRight.skew(-1.0,-1.0) +
          QuarterRight.skew(1.0,0.0),

          FlipRight.skew(1.0,0.0) +
          QuarterRight.skew(-1.0,1.0)
      ]),

    AnimatedCall('Stretch Shakedown (from lines)',
      formation:Formation('Lines Facing Out Compact'),
      from:'Lines Facing Out',group:' ',
      paths:[
          UmTurnRight.skew(-1.0,-1.0) +
          LeadRight.scale(1.5,1.0),

          FlipRight +
          QuarterRight.skew(0.5,0.0),

          UmTurnRight.skew(-1.0,-2.5) +
          LeadRight.scale(1.5,0.5),

          FlipRight.scale(1.0,2.0) +
          QuarterRight.skew(0.5,0.0)
      ]),

    AnimatedCall('As Couples Left Shakedown',
      formation:Formation('Lines Facing Out Compact'),
      from:'Lines Facing Out',group:' ',
      paths:[
          RunLeft.changehands(Hands.LEFT).scale(3.0,3.0).skew(1.5,0.0) +
          HingeLeft.scale(2.0,2.0).skew(0.0,-0.5),

          RunLeft.changehands(Hands.RIGHT).skew(1.5,0.0) +
          QuarterLeft.changehands(Hands.RIGHT).skew(0.0,-0.5),

          BelleWheel.skew(-2.0,0.5) +
          HingeLeft.scale(2.0,2.0).skew(0.5,0.0),

          BeauWheel.skew(-2.0,0.5) +
          QuarterLeft.changehands(Hands.RIGHT).skew(0.5,0.0)
      ]),

    AnimatedCall('Concentric Left Shakedown',
      formation:Formation('Completed Double Pass Thru'),
      from:'Completed Double Pass Thru',group:' ',
      paths:[
          FlipLeft.skew(-1.0,1.0) +
          QuarterLeft.skew(1.0,-1.0),

          UmTurnLeft.skew(-2.0,2.0) +
          QuarterLeft.skew(2.0,0.0),

          FlipLeft.scale(1.0,0.67) +
          QuarterLeft.skew(0.0,-0.67),

          UmTurnLeft.skew(-1.0,0.0) +
          QuarterLeft.skew(1.0,0.0)
      ]),

    AnimatedCall('Stretch Left Shakedown (from columns)',
      formation:Formation('Trade By'),
      from:'Trade By',group:' ',
      paths:[
          FlipLeft +
          QuarterLeft.skew(0.0,-1.0),

          UmTurnLeft.skew(-2.0,1.0) +
          QuarterLeft.skew(2.0,0.0),

          FlipLeft.skew(1.0,0.0) +
          QuarterLeft.skew(-1.0,-1.0),

          UmTurnLeft.skew(-1.0,1.0) +
          QuarterLeft.skew(1.0,0.0)
      ]),

    AnimatedCall('Stretch Left Shakedown (from lines)',
      formation:Formation('Lines Facing Out Compact'),
      from:'Lines Facing Out',group:' ',
      paths:[
          FlipLeft.scale(1.0,2.0) +
          QuarterLeft.skew(0.5,0.0),

          UmTurnLeft.skew(-1.0,2.5) +
          LeadLeft.scale(1.5,0.5),

          FlipLeft +
          QuarterLeft.skew(0.5,0.0),

          UmTurnLeft.skew(-1.0,1.0) +
          LeadLeft.scale(1.5,1.0)
      ]),
  ];

