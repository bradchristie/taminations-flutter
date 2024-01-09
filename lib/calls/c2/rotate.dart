/*

  Taminations Square Dance Animations
  Copyright (C) 2024 Brad Christie

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
      formation:Formation('Normal Lines'),
      group:' ',
      paths:[
          HingeRight +
          HingeLeft.changeBeats(3).changehands(Hands.BOTH).scale(0.5,1.0),

          BackHingeLeft +
          HingeLeft.changeBeats(3).scale(1.5,3.0),

          HingeRight +
          HingeLeft.changeBeats(3).changehands(Hands.BOTH).scale(0.5,1.0),

          BackHingeLeft +
          HingeLeft.changeBeats(3).scale(1.5,3.0)
      ]),

    AnimatedCall('Rotate 1/2',
      formation:Formation('Normal Lines'),
      group:' ',fractions:'4.5',
      paths:[
          HingeRight +
          HingeLeft.changeBeats(3).changehands(Hands.BOTH).scale(0.5,1.0) +
          HingeLeft.changeBeats(3).changehands(Hands.BOTH).scale(1.0,0.5),

          BackHingeLeft +
          HingeLeft.changeBeats(3).scale(1.5,3.0) +
          HingeLeft.changeBeats(3).scale(3.0,1.5),

          HingeRight +
          HingeLeft.changeBeats(3).changehands(Hands.BOTH).scale(0.5,1.0) +
          HingeLeft.changeBeats(3).changehands(Hands.BOTH).scale(1.0,0.5),

          BackHingeLeft +
          HingeLeft.changeBeats(3).scale(1.5,3.0) +
          HingeLeft.changeBeats(3).scale(3.0,1.5)
      ]),

    AnimatedCall('Rotate 3/4',
      formation:Formation('Normal Lines'),
      group:' ',fractions:'4.5;3',
      paths:[
          HingeRight +
          HingeLeft.changeBeats(3).changehands(Hands.BOTH).scale(0.5,1.0) +
          HingeLeft.changeBeats(3).changehands(Hands.BOTH).scale(1.0,0.5) +
          HingeLeft.changeBeats(3).changehands(Hands.BOTH).scale(0.5,1.0),

          BackHingeLeft +
          HingeLeft.changeBeats(3).scale(1.5,3.0) +
          HingeLeft.changeBeats(3).scale(3.0,1.5) +
          HingeLeft.changeBeats(3).scale(1.5,3.0),

          HingeRight +
          HingeLeft.changeBeats(3).changehands(Hands.BOTH).scale(0.5,1.0) +
          HingeLeft.changeBeats(3).changehands(Hands.BOTH).scale(1.0,0.5) +
          HingeLeft.changeBeats(3).changehands(Hands.BOTH).scale(0.5,1.0),

          BackHingeLeft +
          HingeLeft.changeBeats(3).scale(1.5,3.0) +
          HingeLeft.changeBeats(3).scale(3.0,1.5) +
          HingeLeft.changeBeats(3).scale(1.5,3.0)
      ]),

    AnimatedCall('Rotate 1/2 and Spread',
      formation:Formation('Normal Lines'),
      group:'  ',fractions:'4.5;3',
      paths:[
          HingeRight +
          HingeLeft.changeBeats(3).changehands(Hands.BOTH).scale(0.5,1.0) +
          LeadLeft.changeBeats(3).scale(3.0,0.5),

          BackHingeLeft +
          HingeLeft.changeBeats(3).scale(1.5,3.0) +
          LeadLeft.changeBeats(3).scale(1.0,1.5),

          HingeRight +
          HingeLeft.changeBeats(3).changehands(Hands.BOTH).scale(0.5,1.0) +
          LeadLeft.changeBeats(3).scale(3.0,0.5),

          BackHingeLeft +
          HingeLeft.changeBeats(3).scale(1.5,3.0) +
          LeadLeft.changeBeats(3).scale(1.0,1.5)
      ]),

    AnimatedCall('Rotate 1/2 and Roll',
      formation:Formation('Normal Lines'),
      group:'  ',fractions:'4.5;3',
      paths:[
          HingeRight +
          HingeLeft.changeBeats(3).changehands(Hands.BOTH).scale(0.5,1.0) +
          HingeLeft.changeBeats(3).changehands(Hands.BOTH).scale(1.0,0.5) +
          QuarterLeft.changeBeats(2).skew(-1.0,0.0),

          BackHingeLeft +
          HingeLeft.changeBeats(3).scale(1.5,3.0) +
          HingeLeft.changeBeats(3).scale(3.0,1.5) +
          QuarterLeft.changeBeats(2).skew(-1.0,0.0),

          HingeRight +
          HingeLeft.changeBeats(3).changehands(Hands.BOTH).scale(0.5,1.0) +
          HingeLeft.changeBeats(3).changehands(Hands.BOTH).scale(1.0,0.5) +
          QuarterLeft.changeBeats(2).skew(1.0,0.0),

          BackHingeLeft +
          HingeLeft.changeBeats(3).scale(1.5,3.0) +
          HingeLeft.changeBeats(3).scale(3.0,1.5) +
          QuarterLeft.changeBeats(2).skew(1.0,0.0)
      ]),

    AnimatedCall('All 4 Couples Rotate 1/2',
      formation:Formation('Static Square'),
      group:'   ',
      paths:[
          ExtendRight.changeBeats(4).changehands(Hands.RIGHT).scale(3.0,2.0) +
          HingeLeft.changeBeats(4).changehands(Hands.BOTH),

          ExtendRight.changeBeats(4).changehands(Hands.LEFT).scale(3.0,2.0) +
          HingeLeft.changeBeats(4).changehands(Hands.LEFT).scale(3.0,3.0),

          ExtendRight.changeBeats(4).changehands(Hands.RIGHT).scale(3.0,2.0) +
          HingeLeft.changeBeats(4).changehands(Hands.BOTH),

          ExtendRight.changeBeats(4).changehands(Hands.LEFT).scale(3.0,2.0) +
          HingeLeft.changeBeats(4).changehands(Hands.LEFT).scale(3.0,3.0)
      ]),

    AnimatedCall('Reverse Rotate 3/4',
      formation:Formation('Normal Lines'),
      from:'Lines',fractions:'4.5;3',
      paths:[
          BackHingeRight +
          HingeRight.changeBeats(3).scale(1.5,3.0) +
          HingeRight.changeBeats(3).scale(3.0,1.5) +
          HingeRight.changeBeats(3).scale(1.5,3.0),

          HingeLeft +
          HingeRight.changeBeats(3).changehands(Hands.BOTH).scale(0.5,1.0) +
          HingeRight.changeBeats(3).changehands(Hands.BOTH).scale(1.0,0.5) +
          HingeRight.changeBeats(3).changehands(Hands.BOTH).scale(0.5,1.0),

          BackHingeRight +
          HingeRight.changeBeats(3).scale(1.5,3.0) +
          HingeRight.changeBeats(3).scale(3.0,1.5) +
          HingeRight.changeBeats(3).scale(1.5,3.0),

          HingeLeft +
          HingeRight.changeBeats(3).changehands(Hands.BOTH).scale(0.5,1.0) +
          HingeRight.changeBeats(3).changehands(Hands.BOTH).scale(1.0,0.5) +
          HingeRight.changeBeats(3).changehands(Hands.BOTH).scale(0.5,1.0)
      ]),

    AnimatedCall('Single Rotate 1/4',
      formation:Formation('Normal Lines'),
      from:'Lines',
      paths:[
          QuarterRight +
          CounterRotateLeft_2_0.changeBeats(3),

          QuarterRight +
          CounterRotateLeft_0_2.changeBeats(3).skew(0.0,2.0),

          QuarterRight +
          CounterRotateLeft_2_0.changeBeats(3),

          QuarterRight +
          CounterRotateLeft_0_2.changeBeats(3).skew(0.0,2.0)
      ]),

    AnimatedCall('Single Rotate 1/4',
      formation:Formation('Ocean Waves RH BGBG'),
      from:'Waves',
      paths:[
          QuarterRight +
          CounterRotateLeft_2_0.changeBeats(3),

          QuarterLeft +
          CounterRotateLeft_0_2.changeBeats(3).skew(0.0,2.0),

          QuarterRight +
          CounterRotateLeft_2_0.changeBeats(3),

          QuarterLeft +
          CounterRotateLeft_0_2.changeBeats(3).skew(0.0,2.0)
      ]),

    AnimatedCall('Reverse Single Rotate 1/4',
      formation:Formation('Normal Lines'),
      from:'Lines',
      paths:[
          QuarterLeft +
          CounterRotateRight_0_m2.changeBeats(3).skew(0.0,-2.0),

          QuarterLeft +
          CounterRotateRight_2_0.changeBeats(3),

          QuarterLeft +
          CounterRotateRight_0_m2.changeBeats(3).skew(0.0,-2.0),

          QuarterLeft +
          CounterRotateRight_2_0.changeBeats(3)
      ]),

    AnimatedCall('Reverse Single Rotate 1/4',
      formation:Formation('Ocean Waves RH BGBG'),
      from:'Waves',
      paths:[
          QuarterLeft +
          CounterRotateRight_0_m2.changeBeats(3).skew(0.0,-2.0),

          QuarterRight +
          CounterRotateRight_2_0.changeBeats(3),

          QuarterLeft +
          CounterRotateRight_0_m2.changeBeats(3).skew(0.0,-2.0),

          QuarterRight +
          CounterRotateRight_2_0.changeBeats(3)
      ]),
  ];

