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

  final List<AnimatedCall> SingleWheel = [

    AnimatedCall('Single Wheel',
      formation:Formation('Facing Couples'),
      from:'Facing Couples',
      paths:[
          UmTurnRight.skew(1.0,-1.0),

          UmTurnLeft.skew(-1.0,1.0)
      ]),

    AnimatedCall('Single Wheel',
      formation:Formation('Couples Facing Out'),
      from:'Couples Facing Out',
      paths:[
          UmTurnLeft.skew(-1.0,1.0),

          UmTurnRight.skew(1.0,-1.0)
      ]),

    AnimatedCall('Single Wheel',
      formation:Formation('Box RH'),
      from:'Right-Hand Box',
      paths:[
          UmTurnRight.skew(1.0,-1.0),

          UmTurnRight.skew(1.0,-1.0)
      ]),

    AnimatedCall('Single Wheel',
      formation:Formation('Box LH'),
      from:'Left-Hand Box',
      paths:[
          UmTurnLeft.skew(1.0,1.0),

          UmTurnLeft.skew(1.0,1.0)
      ]),

    AnimatedCall('Single Wheel',
      formation:Formation('Wave RH'),
      from:'Right-Hand Wave',
      paths:[
          FlipRight.changeBeats(4).skew(1.5,0.0),

          UmTurnRight.changeBeats(4).skew(1.5,0.0)
      ]),

    AnimatedCall('Single Wheel',
      formation:Formation('Wave LH'),
      from:'Left-Hand Wave',
      paths:[
          FlipLeft.changeBeats(4).skew(1.5,0.0),

          UmTurnLeft.changeBeats(4).skew(1.5,0.0)
      ]),

    AnimatedCall('Single Wheel',
      formation:Formation('Lines Facing Out'),
      from:'Lines Facing Out',
      paths:[
          FlipLeft.skew(-1.0,0.0),

          UmTurnRight.skew(1.0,0.0),

          UmTurnLeft.skew(-1.0,0.0),

          FlipRight.skew(1.0,0.0)
      ]),

    AnimatedCall('Single Wheel',
      formation:Formation('Two-Faced Lines RH'),
      from:'Right-Hand Two-Faced Lines',
      paths:[
          FlipRight.skew(1.0,0.0),

          UmTurnLeft.skew(-1.0,0.0),

          UmTurnLeft.skew(-1.0,0.0),

          FlipRight.skew(1.0,0.0)
      ]),

    AnimatedCall('Single Wheel',
      formation:Formation('Ocean Waves RH BGBG'),
      from:'Right-Hand Waves',
      paths:[
          FlipRight.skew(1.0,0.0),

          UmTurnRight.skew(1.0,0.0),

          UmTurnRight.skew(1.0,0.0),

          FlipRight.skew(1.0,0.0)
      ]),

    AnimatedCall('Single Wheel',
      formation:Formation('Ocean Waves LH BGBG'),
      from:'Left-Hand Waves',
      paths:[
          FlipLeft.skew(1.0,0.0),

          UmTurnLeft.skew(1.0,0.0),

          UmTurnLeft.skew(1.0,0.0),

          FlipLeft.skew(1.0,0.0)
      ]),

    AnimatedCall('Single Wheel',
      formation:Formation('Completed Double Pass Thru'),
      from:'Completed Double Pass Thru',
      paths:[
          FlipLeft.skew(-0.5,-1.0),

          FlipRight.skew(0.5,1.0),

          FlipLeft.skew(-0.5,-1.0),

          FlipRight.skew(0.5,1.0)
      ]),

    AnimatedCall('Single Wheel',
      formation:Formation('Tidal Wave RH BGGB'),
      from:'Right-Hand Tidal Wave',
      paths:[
          UmTurnRight.changeBeats(4).skew(1.5,-0.5),

          UmTurnRight.changeBeats(4).skew(1.5,-0.5),

          UmTurnRight.changeBeats(4).skew(1.5,-0.5),

          UmTurnRight.changeBeats(4).skew(1.5,-0.5)
      ]),

    AnimatedCall('Single Wheel',
      formation:Formation('Tidal Wave LH BGGB'),
      from:'Left-Hand Tidal Wave',
      paths:[
          UmTurnLeft.changeBeats(4).skew(1.5,0.5),

          UmTurnLeft.changeBeats(4).skew(1.5,0.5),

          UmTurnLeft.changeBeats(4).skew(1.5,0.5),

          UmTurnLeft.changeBeats(4).skew(1.5,0.5)
      ]),

    AnimatedCall('Single Wheel',
      formation:Formation('Two-Faced Tidal Line RH'),
      from:'Right-Hand Tidal Two-Faced Line',
      paths:[
          UmTurnRight.changeBeats(4).skew(1.5,-0.5),

          UmTurnLeft.changeBeats(4).skew(-1.5,0.5),

          UmTurnLeft.changeBeats(4).skew(-1.5,0.5),

          UmTurnRight.changeBeats(4).skew(1.5,-0.5)
      ]),

    AnimatedCall('Single Wheel',
      formation:Formation('Two-Faced Tidal Line LH'),
      from:'Left-Hand Tidal Two-Faced Line',
      paths:[
          UmTurnLeft.changeBeats(4).skew(-1.5,0.5),

          UmTurnRight.changeBeats(4).skew(1.5,-0.5),

          UmTurnRight.changeBeats(4).skew(1.5,-0.5),

          UmTurnLeft.changeBeats(4).skew(-1.5,0.5)
      ]),

    AnimatedCall('Single Wheel',
      formation:Formation('Tidal Line RH'),
      from:'Right-Hand Tidal Line',
      paths:[
          UmTurnRight.changeBeats(4).skew(1.5,-0.5),

          UmTurnLeft.changeBeats(4).skew(-1.5,0.5),

          UmTurnRight.changeBeats(4).skew(1.5,-0.5),

          UmTurnLeft.changeBeats(4).skew(-1.5,0.5)
      ]),

    AnimatedCall('Single Wheel',
      formation:Formation('Tidal Line LH'),
      from:'Left-Hand Tidal Line',
      paths:[
          UmTurnRight.changeBeats(4).skew(1.5,-0.5),

          UmTurnLeft.changeBeats(4).skew(-1.5,0.5),

          UmTurnRight.changeBeats(4).skew(1.5,-0.5),

          UmTurnLeft.changeBeats(4).skew(-1.5,0.5)
      ]),

    AnimatedCall('Single Wheel 3 Times',
      formation:Formation('Tidal Wave RH BGGB'),
      from:'Tidal Wave',fractions:'3;3',
      paths:[
          UmTurnRight.skew(2.0,-0.5) +
          FlipLeft.skew(-1.0,0.0) +
          UmTurnRight.skew(0.5,-1.0),

          UmTurnRight.skew(2.0,-0.5) +
          FlipRight.skew(1.0,0.0) +
          UmTurnLeft.skew(-0.5,1.0),

          UmTurnRight.skew(2.0,-0.5) +
          UmTurnRight.skew(1.0,0.0) +
          UmTurnRight.skew(0.5,-1.0),

          UmTurnRight.skew(2.0,-0.5) +
          UmTurnLeft.skew(-1.0,0.0) +
          UmTurnLeft.skew(-0.5,1.0)
      ]),
  ];

