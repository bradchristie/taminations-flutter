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

  final List<AnimatedCall> WalkOutToAWave = [

    AnimatedCall('Walk Out to a Wave',
      formation:Formation('Column RH GBGB'),
      from:'Right-Hand Columns',
      paths:[
          RunRight.changeBeats(5).scale(1.0,2.0).skew(-1.0,0.0) +
          RunRight,

          RunRight.changeBeats(5).skew(1.0,0.0) +
          DodgeLeft,

          Forward_2.changeBeats(3) +
          UmTurnRight.changeBeats(2).skew(1.0,0.0),

          Forward_3.changeBeats(5) +
          ExtendLeft.changeBeats(3).scale(2.0,2.0)
      ]),

    AnimatedCall('Walk Out to a Wave',
      formation:Formation('Column LH GBGB'),
      from:'Left-Hand Columns',
      paths:[
          Forward_3.changeBeats(5) +
          ExtendRight.changeBeats(3).scale(2.0,2.0),

          Forward_2.changeBeats(3) +
          UmTurnLeft.changeBeats(2).skew(1.0,0.0),

          RunLeft.changeBeats(5).skew(1.0,0.0) +
          DodgeRight,

          RunLeft.changeBeats(5).scale(1.0,2.0).skew(-1.0,0.0) +
          RunLeft
      ]),

    AnimatedCall('Walk Out to a Wave',
      formation:Formation('Double Pass Thru'),
      from:'Double Pass Thru',
      paths:[
          ExtendLeft.scale(1.0,0.5) +
          Forward_2 +
          ExtendLeft.changeBeats(3).scale(2.0,1.5),

          ExtendLeft.scale(1.0,0.5) +
          Forward_2 +
          ExtendRight.changeBeats(3).scale(2.0,2.5),

          ExtendLeft.scale(1.0,0.5) +
          Forward +
          UmTurnRight.changeBeats(2).skew(1.0,-0.5),

          ExtendLeft.scale(1.0,0.5) +
          Forward +
          UmTurnLeft.changeBeats(2).skew(1.0,-0.5)
      ]),

    AnimatedCall('Walk Out to a Wave',
      formation:Formation('Completed Double Pass Thru'),
      from:'Completed Double Pass Thru',
      paths:[
          RunLeft.changeBeats(5).scale(2.0,2.0).skew(-1.0,0.0) +
          RunLeft,

          RunRight.changeBeats(5).scale(1.0,2.0).skew(-1.0,0.0) +
          RunRight,

          RunLeft.changeBeats(5).skew(1.0,0.0) +
          DodgeRight,

          FlipRight.changeBeats(5).skew(1.0,0.0) +
          DodgeLeft
      ]),

    AnimatedCall('Magic Walk Out to a Wave',
      formation:Formation('Magic Column RH'),
      from:'Magic Columns, Right-Hand Centers',
      paths:[
          Forward.changeBeats(2) +
          ExtendLeft.changeBeats(2).scale(1.0,2.0) +
          Forward +
          ExtendRight.changeBeats(4).scale(2.0,4.0),

          ExtendRight.changeBeats(2).scale(1.0,2.0) +
          RunLeft +
          DodgeRight,

          Forward_2.changeBeats(4) +
          UmTurnRight.changeBeats(4).skew(1.0,-2.0),

          RunLeft.changeBeats(5).scale(1.0,2.0).skew(-1.0,0.0) +
          RunLeft
      ]),

    AnimatedCall('Magic Walk Out to a Wave',
      formation:Formation('Magic Column LH'),
      from:'Magic Columns, Left-Hand Centers',
      paths:[
          RunRight.changeBeats(5).scale(1.0,2.0).skew(-1.0,0.0) +
          RunRight,

          Forward_2.changeBeats(4) +
          UmTurnLeft.changeBeats(4).skew(1.0,2.0),

          ExtendLeft.changeBeats(2).scale(1.0,2.0) +
          RunRight +
          DodgeLeft,

          Forward.changeBeats(2) +
          ExtendRight.changeBeats(2).scale(1.0,2.0) +
          Forward +
          ExtendLeft.changeBeats(4).scale(2.0,4.0)
      ]),
  ];

