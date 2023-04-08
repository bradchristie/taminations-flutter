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
import '../../formations.dart';
import '../../moves.dart';

  final List<AnimatedCall> CoupleUp = [

    AnimatedCall('Couple Up',
      formation:Formations.BoxRH,
      from:'Right-Hand Box',parts:'4',
      paths:[
          Forward_4 +
          UmTurnRight,

          RunRight.changeBeats(4)
      ]),

    AnimatedCall('Couple Up',
      formation:Formations.BoxLH,
      from:'Left-Hand Box',parts:'4',
      paths:[
          RunLeft.changeBeats(4),

          Forward_4 +
          UmTurnLeft
      ]),

    AnimatedCall('Couple Up',
      formation:Formations.OceanWavesRHBGGB,
      from:'Right-Hand Waves',parts:'4',
      paths:[
          Forward_4 +
          UmTurnRight,

          RunRight.changeBeats(4),

          Forward_4 +
          UmTurnRight,

          RunRight.changeBeats(4)
      ]),

    AnimatedCall('Couple Up',
      formation:Formations.OceanWavesLHBGGB,
      from:'Left-Hand Waves',parts:'4',
      paths:[
          RunLeft.changeBeats(4),

          Forward_4 +
          UmTurnLeft,

          RunLeft.changeBeats(4),

          Forward_4 +
          UmTurnLeft
      ]),

    AnimatedCall('Couple Up',
      formation:Formations.ColumnRHGBGB,
      from:'Right-Hand Columns',parts:'3',
      paths:[
          RunRight,

          Forward_2.changeBeats(3) +
          UmTurnRight,

          RunRight.scale(0.5,1.0),

          Forward_2.changeBeats(3) +
          UmTurnRight
      ]),

    AnimatedCall('Couple Up',
      formation:Formations.ColumnLHGBGB,
      from:'Left-Hand Columns',parts:'3',
      paths:[
          Forward_2.changeBeats(3) +
          UmTurnLeft,

          RunLeft.scale(0.5,1.0),

          Forward_2.changeBeats(3) +
          UmTurnLeft,

          RunLeft
      ]),

    AnimatedCall('Counter Couple Up',
      formation:Formations.OceanWavesRHBGGB,
      group:'  ',parts:'4',
      paths:[
          CounterRotateRight_5_m1.changeBeats(4),

          CounterRotateLeft_m1_3.changeBeats(4) +
          UmTurnRight,

          CounterRotateLeft_3_m1.changeBeats(4),

          CounterRotateRight_1_m5.changeBeats(4) +
          UmTurnRight
      ]),

    AnimatedCall('Split Counter Couple Up',
      formation:Formations.OceanWavesRHBGGB,
      group:'  ',parts:'3',
      paths:[
          CounterRotateRight_2_0.changeBeats(3).changehands(2).skew(1.0,0.0),

          CounterRotateRight_0_m2.changeBeats(3).changehands(2).skew(-1.0,0.0) +
          UmTurnRight,

          CounterRotateRight_2_0.changeBeats(3).changehands(2).skew(1.0,0.0),

          CounterRotateRight_0_m2.changeBeats(3).changehands(2).skew(-1.0,0.0) +
          UmTurnRight
      ]),

    AnimatedCall('Trade Couple Up',
      formation:Formations.OceanWavesRHBGGB,
      group:'  ',parts:'4',
      paths:[
          Forward +
          ExtendRight.changeBeats(3).scale(3.0,2.0) +
          UmTurnLeft,

          RunLeft.changeBeats(4).scale(0.5,2.0),

          Forward +
          ExtendRight.changeBeats(3).scale(3.0,2.0) +
          UmTurnLeft,

          RunRight.changeBeats(4).scale(1.5,2.0)
      ]),

    AnimatedCall('Trade Like a Couple Up',
      formation:Formations.OceanWavesRHBGGB,
      group:'  ',parts:'3',
      paths:[
          SwingRight +
          UmTurnRight,

          SwingRight,

          SwingRight +
          UmTurnRight,

          SwingRight
      ]),

    AnimatedCall('As Couples Couple Up',
      formation:Formations.TwomFacedLinesRH,
      group:' ',parts:'4',
      paths:[
          Forward_4.changehands(2) +
          BeauReverseWheel.scale(0.67,1.0),

          Forward_4.changehands(1) +
          BelleReverseWheel.scale(0.67,1.0),

          RunRight.changeBeats(4).changehands(1),

          RunRight.changeBeats(4).changehands(2).scale(3.0,3.0)
      ]),

    AnimatedCall('Concentric Couple Up',
      formation:Formations.OceanWavesRHBGGB,
      group:' ',parts:'4',
      paths:[
          Forward_4 +
          UmTurnRight,

          RunLeft.changeBeats(4),

          Forward_4 +
          UmTurnLeft,

          RunRight.changeBeats(4).scale(2.0,3.0)
      ]),

    AnimatedCall('Once Removed Couple Up',
      formation:Formations.TwomFacedLinesRH,
      group:' ',parts:'4',
      paths:[
          Forward_4 +
          UmTurnRight,

          Forward_4 +
          UmTurnRight,

          RunRight.changeBeats(4).scale(1.0,2.0),

          RunRight.changeBeats(4).scale(1.0,2.0)
      ]),

    AnimatedCall('Tandem Couple Up',
      formation:Formations.ColumnRHGBGB,
      group:' ',
      paths:[
          RunRight +
          Forward_2,

          Forward_2 +
          RunRight,

          Forward_4 +
          Pivotbackwardright,

          Forward_4 +
          Pivotforwardleft
      ]),
  ];

