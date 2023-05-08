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
      formation:Formation('Wave RH'),
      from:'Right-Hand Wave',parts:'1.5;4',difficulty: 1,
      taminator: '''
      After the Hinge, be sure to let go of hands.  Do not hold
      hands again until the end of the call.
    ''',
      paths:[
          HingeRight +
          Forward_4 +
          RunRight,

          HingeRight +
          RunRight +
          Forward_2 +
          UmTurnRight.skew(2.0,0.0)
      ]),

    AnimatedCall('Linear Cycle',
      formation:Formation('Wave LH'),
      from:'Left-Hand Wave',parts:'1.5;4',difficulty: 2,
      paths:[
          HingeLeft +
          Forward_4 +
          RunLeft,

          HingeLeft +
          RunLeft +
          Forward_2 +
          UmTurnLeft.skew(2.0,0.0)
      ]),

    AnimatedCall('Linear Cycle',
      formation:Formation('Ocean Waves RH BGGB'),
      from:'Right-Hand Waves',parts:'1.5;4',difficulty: 1,
      taminator: '''
    Linear Cycle is NOT Recycle and Sweep a Quarter,
    ''',
      paths:[
          HingeRight +
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

          HingeRight +
          Forward_4 +
          RunRight
      ]),

    AnimatedCall('Linear Cycle',
      formation:Formation('Ocean Waves LH BGGB'),
      from:'Left-Hand Waves',parts:'1.5;4',difficulty: 2,
      paths:[
          HingeLeft +
          Forward_4 +
          RunLeft,

          HingeLeft +
          RunLeft +
          Forward_2 +
          UmTurnLeft.skew(2.0,0.0),

          HingeLeft +
          RunLeft +
          Forward_2 +
          UmTurnLeft.skew(2.0,0.0),

          HingeLeft +
          Forward_4 +
          RunLeft
      ]),

    AnimatedCall('Linear Cycle',
      formation:Formation('Tidal Wave RH BGGB'),
      from:'Right-Hand Tidal Wave',parts:'1.5;3',difficulty: 1,
      paths:[
          HingeRight.scale(1.0,0.5) +
          Forward_2 +
          FlipRight,

          HingeRight.scale(1.0,0.5) +
          FlipRight +
          Forward +
          UmTurnRight.changeBeats(1).skew(1.0,0.0),

          HingeRight.scale(1.0,0.5) +
          FlipRight +
          Forward +
          UmTurnRight.changeBeats(1).skew(1.0,0.0),

          HingeRight.scale(1.0,0.5) +
          Forward_2 +
          FlipRight
      ]),

    AnimatedCall('Linear Cycle',
      formation:Formation('Tidal Wave LH BGGB'),
      from:'Left-Hand Tidal Wave',parts:'1.5;3',difficulty: 2,
      paths:[
          HingeLeft.scale(1.0,0.5) +
          Forward_2 +
          FlipLeft,

          HingeLeft.scale(1.0,0.5) +
          FlipLeft +
          Forward +
          UmTurnLeft.changeBeats(1).skew(1.0,0.0),

          HingeLeft.scale(1.0,0.5) +
          FlipLeft +
          Forward +
          UmTurnLeft.changeBeats(1).skew(1.0,0.0),

          HingeLeft.scale(1.0,0.5) +
          Forward_2 +
          FlipLeft
      ]),
  ];

