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

  final List<AnimatedCall> ReverseCheckpoint = [

    AnimatedCall('Reverse Checkpoint Follow to a Diamond by Box Circulate',
      formation:Formation('Two-Faced Lines RH'),
      group:'Reverse Checkpoint',
      paths:[
          Stand.changeBeats(5) +
          Forward_2 +
          ExtendRight.changeBeats(2).scale(2.0,2.0),

          Forward_2.changeBeats(1.5).skew(0.0,-0.125) +
          SwingRight.scale(0.875,0.875) +
          LeadRight.changeBeats(2).skew(3.0,0.125),

          RunRight.changeBeats(4) +
          Forward_2.changeBeats(2.5),

          Stand.changeBeats(5) +
          RunRight.changeBeats(4).scale(1.0,2.0)
      ]),

    AnimatedCall('Reverse Checkpoint Hinge by Cast Off 3/4',
      formation:Formation('Ocean Waves LH BGGB'),
      group:'Reverse Checkpoint',
      paths:[
          DodgeLeft +
          HingeLeft.scale(0.5,1.0) +
          SwingLeft.scale(0.5,0.5),

          HingeRight +
          DodgeLeft.changehands(Hands.LEFT).scale(1.0,0.25),

          HingeRight +
          DodgeLeft.scale(1.0,0.25),

          DodgeLeft +
          HingeLeft.scale(0.5,1.0) +
          SwingLeft.scale(0.5,0.5)
      ]),

    AnimatedCall('Reverse Checkpoint Recycle by Touch 1/4',
      formation:Formation('Double Pass Thru'),
      group:'Reverse Checkpoint',
      paths:[
          Stand.changeBeats(2.5) +
          ExtendLeft.changeBeats(3).scale(3.0,2.5) +
          HingeRight.scale(1.0,0.5),

          Stand.changeBeats(2.5) +
          ExtendRight.changeBeats(3).scale(3.0,1.5) +
          HingeRight.scale(1.0,0.5),

          UmTurnRight.changeBeats(3).skew(1.0,0.0),

      Path.fromMovement(Movement.fromData(beats: 3, hands: Hands.NONE, cx1: -1, cy1: 2, cx2: 1, cy2: 4, x2: 1, y2: 4, cx3: 1, cx4: 2, cy4: 2, x4: 3, y4: 2  )) +
          DodgeLeft
      ]),
  ];

