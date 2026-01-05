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

  final List<AnimatedCall> Rotate = [

    AnimatedCall('Rotate 1/4',
      formation:Formation('Completed Double Pass Thru'),
      group:' ',fractions:'1.5',
      paths:[
          HingeLeft.scale(0.5,1.0) +
          HingeLeft.changeBeats(4).changehands(Hands.LEFT).scale(3.5,3.5),

          BackHingeRight.scale(0.5,1.0) +
          HingeLeft.changeBeats(4).changehands(Hands.BOTH).scale(2.5,2.5),

          HingeLeft.scale(0.5,1.0) +
          HingeLeft.changeBeats(4).changehands(Hands.BOTH).scale(1.5,1.5),

          BackHingeRight.scale(0.5,1.0) +
          HingeLeft.changeBeats(4).changehands(Hands.BOTH).scale(0.5,0.5)
      ]),

    AnimatedCall('Reverse Rotate 1/4',
      formation:Formation('Completed Double Pass Thru'),
      group:' ',fractions:'1.5',
      paths:[
          BackHingeLeft.scale(0.5,1.0) +
          HingeRight.changeBeats(4).changehands(Hands.LEFT).scale(2.5,2.5),

          HingeRight.scale(0.5,1.0) +
          HingeRight.changeBeats(4).changehands(Hands.BOTH).scale(3.5,3.5),

          BackHingeLeft.scale(0.5,1.0) +
          HingeRight.changeBeats(4).changehands(Hands.BOTH).scale(0.5,0.5),

          HingeRight.scale(0.5,1.0) +
          HingeRight.changeBeats(4).changehands(Hands.BOTH).scale(1.5,1.5)
      ]),

    AnimatedCall('Single Rotate 1/4',
      formation:Formation('Completed Double Pass Thru'),
      group:' ',fractions:'1.5',
      paths:[
          QuarterLeft.skew(0.0,-1.0) +
          CounterRotateLeft_5_1.changeBeats(4).changehands(Hands.LEFT),

          QuarterLeft.skew(0.0,1.0) +
          CounterRotateLeft_1_5.changeBeats(4).changehands(Hands.LEFT),

          QuarterLeft.skew(0.0,-1.0) +
          CounterRotateLeft_3_m1.changeBeats(4).changehands(Hands.BOTH),

          QuarterLeft.skew(0.0,1.0) +
          CounterRotateLeft_m1_3.changeBeats(4).changehands(Hands.BOTH)
      ]),

    AnimatedCall('Reverse Single Rotate 1/4',
      formation:Formation('Completed Double Pass Thru'),
      group:' ',fractions:'1.5',
      paths:[
          QuarterRight.skew(0.0,-1.0) +
          CounterRotateRight_1_m5.changeBeats(4).changehands(Hands.RIGHT),

          QuarterRight.skew(0.0,1.0) +
          CounterRotateRight_5_m1.changeBeats(4).changehands(Hands.RIGHT),

          QuarterRight.skew(0.0,-1.0) +
          CounterRotateRight_m1_m3.changeBeats(4).changehands(Hands.BOTH),

          QuarterRight.skew(0.0,1.0) +
          CounterRotateRight_3_1.changeBeats(4).changehands(Hands.BOTH)
      ]),

    AnimatedCall('Split Single Rotate 1/4',
      formation:Formation('Completed Double Pass Thru'),
      group:' ',fractions:'1.5',
      paths:[
          QuarterLeft +
          CounterRotateLeft_2_0.changeBeats(2).changehands(Hands.LEFT),

          QuarterLeft +
          CounterRotateLeft_0_2.changeBeats(2).changehands(Hands.LEFT),

          QuarterRight +
          CounterRotateLeft_0_2.changeBeats(2).changehands(Hands.LEFT),

          QuarterRight +
          CounterRotateLeft_2_0.changeBeats(2).changehands(Hands.LEFT)
      ]),
  ];

