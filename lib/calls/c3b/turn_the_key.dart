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

  final List<AnimatedCall> TurnTheKey = [

    AnimatedCall('Turn the Key',
      formation:Formation('Ocean Waves RH BGGB'),
      from:'Right-Hand Waves',parts:'3;5',
      paths:[
          SwingRight +
          CounterRotateLeft_m1_3.changeBeats(5) +
          HingeRight,

          SwingRight +
          CounterRotateRight_5_m1.changeBeats(5) +
          HingeRight,

          SwingRight +
          CounterRotateRight_1_m5.changeBeats(5) +
          HingeRight,

          SwingRight +
          CounterRotateLeft_3_m1.changeBeats(5) +
          HingeRight
      ]),

    AnimatedCall('Turn the Key',
      formation:Formation('Ocean Waves LH BGGB'),
      from:'Left-Hand Waves',parts:'3;5',
      paths:[
          SwingLeft +
          CounterRotateRight_3_1.changeBeats(5) +
          HingeLeft,

          SwingLeft +
          CounterRotateLeft_1_5.changeBeats(5) +
          HingeLeft,

          SwingLeft +
          CounterRotateLeft_5_1.changeBeats(5) +
          HingeLeft,

          SwingLeft +
          CounterRotateRight_m1_m3.changeBeats(5) +
          HingeLeft
      ]),

    AnimatedCall('Turn the Key',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:2,y:1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:2,y:3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:3,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:1,angle:0),
  ]),
      from:'3 and 1 Lines #1',parts:'3;5',
      paths:[
          RunRight +
          LeadRight.changeBeats(3).scale(2.0,3.0) +
          ExtendRight.changeBeats(2).scale(2.0,1.0) +
          LeadRight,

          FlipLeft +
          CounterRotateRight_m1_m3.changeBeats(5) +
          QuarterLeft.skew(-1.0,1.0),

          SwingLeft +
          CounterRotateRight_3_1.changeBeats(5) +
          HingeLeft,

          SwingLeft +
          LeadLeft.changeBeats(3).scale(1.0,3.0) +
          Forward_2 +
          HingeLeft
      ]),

    AnimatedCall('Turn the Key',
      formation:Formation('3 and 1 Lines #2'),
      from:'3 and 1 Lines #2',parts:'3;4',
      paths:[
          SwingRight +
          QuarterLeft.changeBeats(2).skew(-1.0,1.0) +
          Forward_2 +
          HingeRight,

          SwingRight +
          CounterRotateRight_5_m1.changeBeats(4) +
          HingeRight,

          RunRight +
          CounterRotateRight_1_m5.changeBeats(4) +
          LeadRight,

          FlipLeft +
          QuarterRight.changeBeats(2).skew(0.0,-1.0) +
          ExtendRight.changeBeats(2).scale(2.0,1.0) +
          QuarterLeft.skew(-1.0,1.0)
      ]),

    AnimatedCall('Turn the Key',
      formation:Formation('3 and 1 Lines #3'),
      from:'3 and 1 Lines #3',parts:'3;4',
      paths:[
          RunRight +
          QuarterLeft.changeBeats(2).skew(-1.0,1.0) +
          Forward_2 +
          LeadRight,

          FlipLeft +
          CounterRotateLeft_1_5.changeBeats(4) +
          QuarterLeft.skew(-1.0,1.0),

          SwingLeft +
          CounterRotateLeft_5_1.changeBeats(4) +
          HingeLeft,

          SwingLeft +
          QuarterRight.changeBeats(2).skew(0.0,-1.0) +
          ExtendRight.changeBeats(2).scale(2.0,1.0) +
          HingeLeft
      ]),

    AnimatedCall('Turn the Key',
      formation:Formation('3 and 1 Lines #4'),
      from:'3 and 1 Lines #4',parts:'3;5',
      paths:[
          RunRight +
          CounterRotateLeft_m1_3.changeBeats(5).changehands(Hands.LEFT) +
          LeadRight,

          FlipLeft +
          LeadLeft.changeBeats(3).scale(1.0,3.0) +
          Forward_2 +
          QuarterLeft.skew(-1.0,1.0),

          SwingRight +
          LeadRight.changeBeats(3).scale(2.0,3.0) +
          ExtendRight.changeBeats(2).scale(2.0,1.0) +
          HingeRight,

          SwingRight +
          CounterRotateLeft_3_m1.changeBeats(5).changehands(Hands.LEFT) +
          HingeRight
      ]),

    AnimatedCall('Turn the Key',
      formation:Formation('3 and 1 Lines #5'),
      from:'3 and 1 Lines #5',parts:'3;5',
      paths:[
          SwingRight +
          CounterRotateLeft_m1_3.changeBeats(5).changehands(Hands.LEFT) +
          HingeRight,

          SwingRight +
          ExtendLeft.changeBeats(2).scale(2.0,1.0) +
          LeadRight.changeBeats(3).scale(3.0,2.0) +
          HingeRight,

          FlipLeft +
          Forward_2 +
          LeadLeft.changeBeats(3).scale(3.0,1.0) +
          QuarterLeft.skew(-1.0,1.0),

          RunRight +
          CounterRotateLeft_3_m1.changeBeats(5).changehands(Hands.LEFT) +
          LeadRight
      ]),

    AnimatedCall('Turn the Key',
      formation:Formation('3 and 1 Lines #6'),
      from:'3 and 1 Lines #6',parts:'3;4',
      paths:[
          SwingLeft +
          ExtendLeft.changeBeats(2).scale(2.0,1.0) +
          QuarterRight.changeBeats(2).skew(1.0,0.0) +
          HingeLeft,

          SwingLeft +
          CounterRotateLeft_1_5.changeBeats(4) +
          HingeLeft,

          FlipLeft +
          CounterRotateLeft_5_1.changeBeats(4) +
          QuarterLeft.skew(-1.0,1.0),

          RunRight +
          Forward_2 +
          QuarterLeft.changeBeats(2).skew(1.0,-1.0) +
          LeadRight
      ]),

    AnimatedCall('Turn the Key',
      formation:Formation('3 and 1 Lines #7'),
      from:'3 and 1 Lines #7',parts:'3;4',
      paths:[
          FlipLeft +
          ExtendLeft.changeBeats(2).scale(2.0,1.0) +
          QuarterRight.changeBeats(2).skew(1.0,0.0) +
          QuarterLeft.skew(-1.0,1.0),

          RunRight +
          CounterRotateRight_5_m1.changeBeats(4) +
          LeadRight,

          SwingRight +
          CounterRotateRight_1_m5.changeBeats(4) +
          HingeRight,

          SwingRight +
          Forward_2 +
          QuarterLeft.changeBeats(2).skew(1.0,-1.0) +
          HingeRight
      ]),

    AnimatedCall('Turn the Key',
      formation:Formation('3 and 1 Lines #8'),
      from:'3 and 1 Lines #8',parts:'3;5',
      paths:[
          FlipLeft +
          CounterRotateRight_3_1.changeBeats(5) +
          QuarterLeft.skew(-1.0,1.0),

          RunRight +
          ExtendLeft.changeBeats(2).scale(2.0,1.0) +
          LeadRight.changeBeats(3).scale(3.0,2.0) +
          LeadRight,

          SwingLeft +
          Forward_2 +
          LeadLeft.changeBeats(3).scale(3.0,1.0) +
          HingeLeft,

          SwingLeft +
          CounterRotateRight_m1_m3.changeBeats(5) +
          HingeLeft
      ]),

    AnimatedCall('Turn the Key',
      formation:Formation('Quarter Tag'),
      from:'Quarter Tag',parts:'3;5.5',
      paths:[
          RunRight +
          LeadRight.scale(1.5,1.0) +
          ExtendRight.changeBeats(4).scale(3.0,3.5) +
          LeadRight,

          FlipLeft +
          LeadLeft.scale(0.5,1.0) +
          Forward_2.changeBeats(1.5) +
          ExtendLeft.changeBeats(2.5).scale(1.0,2.5) +
          QuarterLeft.skew(-1.0,1.0),

          SwingRight +
          HingeLeft.changeBeats(5.5) +
          HingeRight,

          SwingRight +
          LeadRight.changeBeats(5.5).scale(3.0,3.0) +
          HingeRight
      ]),

    AnimatedCall('Turn the Key',
      formation:Formation('Tidal Wave RH BGBG'),
      from:'Tidal Wave',parts:'3;5',
      paths:[
          SwingRight.scale(0.5,0.5) +
          LeadLeft.changeBeats(5).scale(2.5,2.5) +
          HingeRight.scale(1.0,0.5),

          SwingRight.scale(0.5,0.5) +
          LeadRight.changeBeats(5).scale(3.5,3.5) +
          HingeRight.scale(1.0,0.5),

          SwingRight.scale(0.5,0.5) +
          HingeLeft.changeBeats(5).scale(0.5,0.5) +
          HingeRight.scale(1.0,0.5),

          SwingRight.scale(0.5,0.5) +
          LeadRight.changeBeats(5).scale(1.5,1.5) +
          HingeRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Split Turn the Key',
      formation:Formation('Ocean Waves RH BGGB'),
      from:'Right-Hand Waves',parts:'3;3',
      paths:[
          SwingRight +
          CounterRotateRight_0_m2.changeBeats(3).changehands(Hands.RIGHT).skew(-1.0,0.0) +
          HingeRight.scale(0.5,1.0),

          SwingRight +
          CounterRotateRight_2_0.changeBeats(3).changehands(Hands.RIGHT).skew(1.0,0.0) +
          HingeRight.scale(0.5,1.0),

          SwingRight +
          CounterRotateRight_0_m2.changeBeats(3).changehands(Hands.RIGHT).skew(-1.0,0.0) +
          HingeRight.scale(0.5,1.0),

          SwingRight +
          CounterRotateRight_2_0.changeBeats(3).changehands(Hands.RIGHT).skew(1.0,0.0) +
          HingeRight.scale(0.5,1.0)
      ]),

    AnimatedCall('Split Turn the Key',
      formation:Formation('Ocean Waves LH BGGB'),
      from:'Left-Hand Waves',parts:'3;3',
      paths:[
          SwingLeft +
          CounterRotateLeft_2_0.changeBeats(3).changehands(Hands.LEFT).skew(1.0,0.0) +
          HingeLeft.scale(0.5,1.0),

          SwingLeft +
          CounterRotateLeft_0_2.changeBeats(3).changehands(Hands.LEFT).skew(-1.0,0.0) +
          HingeLeft.scale(0.5,1.0),

          SwingLeft +
          CounterRotateLeft_2_0.changeBeats(3).changehands(Hands.LEFT).skew(1.0,0.0) +
          HingeLeft.scale(0.5,1.0),

          SwingLeft +
          CounterRotateLeft_0_2.changeBeats(3).changehands(Hands.LEFT).skew(-1.0,0.0) +
          HingeLeft.scale(0.5,1.0)
      ]),

    AnimatedCall('Split Turn the Key',
      formation:Formation('Column RH GBGB'),
      from:'Right-Hand Columns',parts:'3;3',
      paths:[
          SwingRight.scale(0.5,1.0) +
          CounterRotateRight_2_0.changeBeats(3).changehands(Hands.RIGHT).skew(0.0,1.0) +
          HingeRight,

          SwingRight.scale(0.5,1.0) +
          CounterRotateRight_0_m2.changeBeats(3).changehands(Hands.RIGHT).skew(0.0,-1.0) +
          HingeRight,

          SwingRight.scale(0.5,1.0) +
          CounterRotateRight_2_0.changeBeats(3).changehands(Hands.RIGHT).skew(0.0,1.0) +
          HingeRight,

          SwingRight.scale(0.5,1.0) +
          CounterRotateRight_0_m2.changeBeats(3).changehands(Hands.RIGHT).skew(0.0,-1.0) +
          HingeRight
      ]),

    AnimatedCall('Split Turn the Key',
      formation:Formation('Column LH GBGB'),
      from:'Left-Hand Columns',parts:'3;3',
      paths:[
          SwingLeft.scale(0.5,1.0) +
          CounterRotateLeft_0_2.changeBeats(3).changehands(Hands.LEFT).skew(0.0,1.0) +
          HingeLeft,

          SwingLeft.scale(0.5,1.0) +
          CounterRotateLeft_2_0.changeBeats(3).changehands(Hands.LEFT).skew(0.0,-1.0) +
          HingeLeft,

          SwingLeft.scale(0.5,1.0) +
          CounterRotateLeft_0_2.changeBeats(3).changehands(Hands.LEFT).skew(0.0,1.0) +
          HingeLeft,

          SwingLeft.scale(0.5,1.0) +
          CounterRotateLeft_2_0.changeBeats(3).changehands(Hands.LEFT).skew(0.0,-1.0) +
          HingeLeft
      ]),

    AnimatedCall('Split Turn the Key',
      formation:Formation('Tidal Wave RH BGGB'),
      from:'Right-Hand Tidal Wave',parts:'3;3',
      paths:[
          SwingRight.scale(0.5,0.5) +
          HingeLeft.changeBeats(3).scale(1.0,0.5) +
          HingeRight,

          SwingRight.scale(0.5,0.5) +
          LeadRight.changeBeats(3).scale(3.0,1.5) +
          HingeRight,

          SwingRight.scale(0.5,0.5) +
          LeadRight.changeBeats(3).scale(3.0,1.5) +
          HingeRight,

          SwingRight.scale(0.5,0.5) +
          HingeLeft.changeBeats(3).scale(1.0,0.5) +
          HingeRight
      ]),

    AnimatedCall('Split Turn the Key',
      formation:Formation('Tidal Wave LH BGGB'),
      from:'Left-Hand Tidal Wave',parts:'3;3',
      paths:[
          SwingLeft.scale(0.5,0.5) +
          HingeRight.changeBeats(3).scale(1.0,0.5) +
          HingeLeft,

          SwingLeft.scale(0.5,0.5) +
          LeadLeft.changeBeats(3).scale(3.0,1.5) +
          HingeLeft,

          SwingLeft.scale(0.5,0.5) +
          LeadLeft.changeBeats(3).scale(3.0,1.5) +
          HingeLeft,

          SwingLeft.scale(0.5,0.5) +
          HingeRight.changeBeats(3).scale(1.0,0.5) +
          HingeLeft
      ]),
  ];

