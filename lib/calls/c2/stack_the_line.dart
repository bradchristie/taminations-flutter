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

  final List<AnimatedCall> StackTheLine = [

    AnimatedCall('Stack the Line',
      formation:Formation('Two-Faced Lines RH'),
      from:'Right-Hand Two-Faced Lines',
      parts: '1.5',
      paths:[
          QuarterRight.skew(1,0) +
              DodgeLeft,

          QuarterLeft.skew(1,0),

          QuarterLeft.skew(-1,0) +
              ExtendLeft.scale(2, 2).changeBeats(3),

          QuarterRight.skew(-1,0) +
              Forward_2.changeBeats(3)
      ]),

    AnimatedCall('Stack the Line',
      formation:Formation('Two-Faced Lines LH'),
      from:'Left-Hand Two-Faced Lines',
      parts: '1.5',
      paths:[
          QuarterLeft.skew(-1, 0) +
              ExtendLeft.scale(2, 2).changeBeats(3),

        QuarterRight.skew(-1, 0) +
            Forward_2.changeBeats(3),

          QuarterRight.skew(1, 0) +
              DodgeLeft,

          QuarterLeft.skew(1,0)
      ]),

    AnimatedCall('Stack the Line',
      formation:Formation('Ocean Waves RH BGBG'),
      from:'Right-Hand Waves',
      paths:[
          QuarterRight.skew(1,0) +
              DodgeLeft,

          QuarterRight.skew(-1,0) +
              Forward_2.changeBeats(3),

          QuarterRight.skew(1,0) +
              DodgeLeft,

          QuarterRight.skew(-1,0) +
              Forward_2.changeBeats(3)
      ]),

    AnimatedCall('Stack the Line',
      formation:Formation('Ocean Waves LH BGBG'),
      from:'Left-Hand Waves',
      parts: '1.5',
      paths:[
        QuarterLeft.skew(-1.0,0.0) +
            CrossLeft.changehands(Hands.NONE),

        QuarterLeft.skew(1.0,0.0),

        QuarterLeft.skew(-1.0,0.0) +
            CrossLeft.changehands(Hands.NONE),

        QuarterLeft.skew(1.0,0.0)
      ]),

    AnimatedCall('Stack the Line',
      formation:Formation('Double Pass Thru'),
      from:'Double Pass Thru',
      parts: '1.5',
      paths:[
        QuarterRight.skew(0, 0.5) +
              DodgeLeft,

        QuarterLeft.skew(0, -0.5),

        QuarterRight.skew(0, 0.5) +
            Forward_3,

        QuarterLeft.skew(0, -0.5) +
            ExtendLeft.changeBeats(3).scale(3, 2)
      ]),

    AnimatedCall('Stack the Line',
      formation:Formation('Completed Double Pass Thru'),
      from:'Completed Double Pass Thru',
      parts: '1.5',
      paths:[
          QuarterLeft.skew(0, -0.5) +
              ExtendLeft.changeBeats(3).scale(3, 2),

          QuarterRight.skew(0, 0.5) +
              Forward_3,

          QuarterLeft.skew(0, -0.5),

          QuarterRight.skew(0, 0.5) +
              DodgeLeft
      ]),

    AnimatedCall('Stack the Line',
      formation:Formation('Column RH GBGB'),
      from:'Right-Hand Columns',
      parts: '1.5',
      paths:[
        QuarterRight.skew(0,.5) +
            Forward_3,

        QuarterRight.skew(0,.5) +
            DodgeLeft,

        QuarterRight.skew(0,.5) +
            Forward_3,

        QuarterRight.skew(0,.5) +
            DodgeLeft
      ]),

    AnimatedCall('Stack the Line',
      formation:Formation('Column LH GBGB'),
      from:'Left-Hand Columns',
      paths:[
        QuarterLeft.skew(0, -0.5),

        QuarterLeft.skew(0, -0.5) +
            CrossLeft.changehands(Hands.NONE).scale(1.5, 1),

        QuarterLeft.skew(0, -0.5),

        QuarterLeft.skew(0, -0.5) +
            CrossLeft.changehands(Hands.NONE).scale(1.5, 1),
      ]),

    AnimatedCall('Stack the Line',
      formation:Formation('T-Bone UDLL'),
      from:'T-Bones',parts:'1.5',
      paths:[
          QuarterRight +
          DodgeLeft.changeBeats(2),

          QuarterRight +
          Forward_2,

          QuarterRight +
          Forward_2,

          QuarterRight +
          DodgeLeft.changeBeats(2)
      ]),
  ];
