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
import '../../formation.dart';
import '../../moves.dart';

  final List<AnimatedCall> CircleToAWave = [

    AnimatedCall('Circle to a Wave',
      formation:Formation('Facing Couples Compact'),
      from:'Facing Couples',parts:'2.25',
      paths:[
          EighthRight.skew(0.5,0.0) +
          CounterRotateLeft_1p414_1p414.changeBeats(1.5).changehands(3) +
          EighthLeft.changeBeats(3).skew(1.767,1.767),

          EighthLeft.skew(0.5,0.0) +
          CounterRotateLeft_1p414_1p414.changeBeats(1.5).changehands(3) +
          EighthRight.changeBeats(3).skew(1.05,1.767)
      ]),

    AnimatedCall('Circle to a Wave',
      formation:Formation('Normal Lines Compact'),
      from:'Normal Lines',parts:'2.25',
      paths:[
          EighthRight.skew(0.5,0.0) +
          CounterRotateLeft_1p414_1p414.changeBeats(1.5).changehands(7) +
          EighthLeft.changeBeats(3).skew(1.414,1.414),

          EighthLeft.skew(0.5,0.0) +
          CounterRotateLeft_1p414_1p414.changeBeats(1.5).changehands(7) +
          EighthRight.changeBeats(3).skew(1.414,1.414),

          EighthRight.skew(0.5,0.0) +
          CounterRotateLeft_1p414_1p414.changeBeats(1.5).changehands(7) +
          EighthLeft.changeBeats(3).skew(1.414,1.414),

          EighthLeft.skew(0.5,0.0) +
          CounterRotateLeft_1p414_1p414.changeBeats(1.5).changehands(7) +
          EighthRight.changeBeats(3).skew(1.414,1.414)
      ]),

    AnimatedCall('Circle to a Wave',
      formation:Formation('Eight Chain Thru'),
      from:'Eight Chain Thru',parts:'2.25',
      paths:[
          EighthRight +
          CounterRotateLeft_1p414_1p414.changeBeats(1.5).changehands(7) +
          EighthLeft.changeBeats(3).skew(1.767,1.767),

          EighthLeft +
          CounterRotateLeft_1p414_1p414.changeBeats(1.5).changehands(7) +
          EighthRight.changeBeats(3).skew(1.05,1.767),

          EighthRight.skew(0.05,0.0) +
          CounterRotateLeft_1p414_1p414.changeBeats(1.5).changehands(7) +
          EighthLeft.changeBeats(3).skew(1.767,1.767),

          EighthLeft.skew(0.05,0.0) +
          CounterRotateLeft_1p414_1p414.changeBeats(1.5).changehands(7) +
          EighthRight.changeBeats(3).skew(1.05,1.767)
      ]),

    AnimatedCall('Circle 1/2 to a Wave',
      formation:Formation('Facing Couples Compact'),
      group:' ',parts:'3.75',
      paths:[
          EighthRight.skew(0.5,0.0) +
          CounterRotateLeft_1p414_1p414.changeBeats(1.5).changehands(3) +
          CounterRotateLeft_1p414_1p414.changeBeats(1.5).changehands(3) +
          EighthLeft.changeBeats(3).skew(1.767,1.767),

          EighthLeft.skew(0.5,0.0) +
          CounterRotateLeft_1p414_1p414.changeBeats(1.5).changehands(3) +
          CounterRotateLeft_1p414_1p414.changeBeats(1.5).changehands(3) +
          EighthRight.changeBeats(3).skew(1.05,1.767)
      ]),

    AnimatedCall('All 4 Couples Circle to a Wave',
      formation:Formation('Static Square'),
      group:' ',
      paths:[
          Forward.changehands(3).scale(0.59,0.59) +
          cl +
          cl +
          Forward_5.scale(1.08,1.0),

          incircle2 +
          cl +
          cl +
          EighthRight +
          DodgeLeft.skew(-0.57,0.0),

          Forward.changehands(3).scale(0.59,0.59) +
          cl +
          cl +
          Forward_5.scale(1.08,1.0),

          incircle2 +
          cl +
          cl +
          EighthRight +
          DodgeLeft.skew(-0.57,0.0)
      ]),

    AnimatedCall('As Couples Circle to a Wave',
      formation:Formation('Normal Lines Compact'),
      group:' ',
      paths:[
          EighthRight.changeBeats(1).changehands(2).skew(0.5,-1.0) +
      Path.fromMovement(Movement.fromData(beats: 2, hands: Hands.BOTH, cx1: 0.354, cy1: 1.061, cx2: 1.768, cy2: 1.768, x2: 2.828, y2: 1.414, cx3: 0.55, cx4: 1, cy4: -0.45, x4: 1, y4: -1  )) +
          EighthLeft.changeBeats(1).changehands(2).skew(-0.353,0.353) +
          ExtendLeft.changeBeats(3).changehands(2).scale(2.5,0.5),

          EighthRight.changeBeats(1).changehands(3).skew(-0.5,0.0) +
      Path.fromMovement(Movement.fromData(beats: 2, hands: Hands.BOTH, cx1: -.354, cy1: 1.061, cx2: 0.353, cy2: 2.474, x2: 1.414, y2: 2.828, cx3: 0.55, cx4: 1, cy4: -0.45, x4: 1, y4: -1  )) +
          EighthLeft.changeBeats(1).changehands(1).skew(0.707,0.707) +
          Forward.changeBeats(3).changehands(1).scale(2.5,1.0),

          EighthLeft.changeBeats(1).changehands(3).skew(-0.5,0.0) +
      Path.fromMovement(Movement.fromData(beats: 2, hands: Hands.BOTH, cx1: 0.354, cy1: 1.061, cx2: 1.768, cy2: 1.768, x2: 2.828, y2: 1.414, cx3: 0.55, cx4: 1, cy4: -0.45, x4: 1, y4: -1  )) +
          EighthRight.changeBeats(1).changehands(2).skew(0.707,0.707) +
          DodgeLeft.changehands(2).scale(1.0,1.5).skew(0.5,0.0),

          EighthLeft.changeBeats(1).changehands(1).skew(0.5,1.0) +
      Path.fromMovement(Movement.fromData(beats: 2, hands: Hands.BOTH, cx1: -.354, cy1: 1.061, cx2: 0.353, cy2: 2.474, x2: 1.414, y2: 2.828, cx3: 0.55, cx4: 1, cy4: -0.45, x4: 1, y4: -1  )) +
          EighthRight.changeBeats(1).changehands(1).skew(-0.353,1.061) +
          DodgeLeft.changehands(1).scale(1.0,1.25).skew(0.5,0.0)
      ]),

    AnimatedCall('Concentric Circle to a Wave',
      formation:Formation('Double Pass Thru'),
      group:' ',
      paths:[
          CounterRotateRight_4_2.changeBeats(4).changehands(2) +
          ExtendLeft.changeBeats(2).scale(2.0,1.0) +
          Forward_2 +
          ExtendRight.changeBeats(2).scale(2.0,1.0),

          CounterRotateRight_2_4.changeBeats(4).changehands(1) +
          DodgeLeft,

          EighthRight.changehands(2) +
          CounterRotateLeft_1p414_1p414.changeBeats(1.5).changehands(3) +
          EighthLeft.changeBeats(3).skew(1.414,1.414),

          EighthLeft.changehands(1) +
          CounterRotateLeft_1p414_1p414.changeBeats(1.5).changehands(3) +
          EighthRight.changeBeats(3).skew(1.414,1.414)
      ]),

    AnimatedCall('Cross Concentric Circle to a Wave',
      formation:Formation('Double Pass Thru'),
      group:' ',
      paths:[
          Stand.changeBeats(5) +
          EighthRight.changeBeats(2).changehands(2).skew(2.0,0.0) +
          CounterRotateLeft_1p414_1p414.changeBeats(1.5).changehands(3) +
          EighthLeft.changeBeats(3).skew(1.414,1.414),

          Stand.changeBeats(5) +
          EighthLeft.changeBeats(2).changehands(1).skew(2.0,0.0) +
          CounterRotateLeft_1p414_1p414.changeBeats(1.5).changehands(3) +
          EighthRight.changeBeats(3).skew(1.414,1.414),

          EighthRight.changehands(2) +
          CounterRotateLeft_1p414_1p414.changeBeats(1.5).changehands(3) +
          EighthLeft.changeBeats(5).skew(2.818,2.818),

          EighthLeft.changehands(1) +
          CounterRotateLeft_1p414_1p414.changeBeats(1.5).changehands(3) +
          EighthRight.changeBeats(5).skew(0.0,2.828)
      ]),
  ];

