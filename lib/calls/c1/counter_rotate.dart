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
import '../../moves.dart';

  final List<AnimatedCall> CounterRotate = [

    AnimatedCall('Counter Rotate',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:3,y:1.5,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:1.5,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1.5,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:1.5,angle:90),
  ]),
      from:'Right-Hand Waves',
      taminator: '''
    Click the Paths button to see the concentric circles the dancers follow.
    ''',
      paths:[
          CounterRotateRight_4p5_m1p5.changeBeats(5),

          CounterRotateLeft_m0p5_2p5.changeBeats(5).changehands(Hands.LEFT),

          CounterRotateLeft_2p5_m0p5.changeBeats(5).changehands(Hands.LEFT),

          CounterRotateRight_1p5_m4p5.changeBeats(5)
      ]),

    AnimatedCall('Counter Rotate',
      formation:Formation('Ocean Waves LH BGGB'),
      from:'Left-Hand Waves',
      paths:[
          CounterRotateLeft_1_5.changeBeats(5),

          CounterRotateRight_3_1.changeBeats(5).changehands(Hands.RIGHT),

          CounterRotateRight_m1_m3.changeBeats(5).changehands(Hands.RIGHT),

          CounterRotateLeft_5_1.changeBeats(5)
      ]),

    AnimatedCall('Counter Rotate',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-3.5,y:0,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:-2.5,y:0,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:-1.5,y:0,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-.5,y:0,angle:270),
  ]),
      from:'Right-Hand Tidal Wave',
      paths:[
          LeadRight.changeBeats(5).scale(3.5,3.5),

          LeadLeft.changeBeats(5).scale(2.5,2.5),

          LeadRight.changeBeats(5).scale(1.5,1.5),

          LeadLeft.changeBeats(5).scale(0.5,0.5)
      ]),

    AnimatedCall('Counter Rotate',
      formation:Formation('Diamonds RH Girl Points'),
      from:'Right-Hand Diamonds',
      paths:[
          LeadRight.changeBeats(5).scale(3.0,3.0),

          CounterRotateRight_5_m1.changeBeats(5),

          HingeLeft.changeBeats(5),

          CounterRotateRight_1_m5.changeBeats(5)
      ]),

    AnimatedCall('Counter Rotate',
      formation:Formation('Diamonds RH PTP Girl Points'),
      from:'Point to Point Diamonds',
      paths:[
          CounterRotateRight_4_2.changeBeats(5).changehands(Hands.RIGHT),

          HingeLeft.changeBeats(5),

          CounterRotateRight_m2_m4.changeBeats(5).changehands(Hands.RIGHT),

          LeadRight.changeBeats(5).scale(5.0,5.0)
      ]),

    AnimatedCall('Counter Rotate',
      formation:Formation('Normal Lines'),
      from:'Normal Lines',
      taminator: '''
    Tha dancers cannot follow concentric circles here because they would collide.
    Instead, each dancer needs to know where to go, pass right shoulders
    with the one ahead, then go to that spot.
    ''',
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          LeadRight.changeBeats(3).scale(3.0,1.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          QuarterRight.changeBeats(2).skew(1.0,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          QuarterLeft.changeBeats(2).skew(1.0,-1.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          LeadLeft.changeBeats(3).scale(3.0,0.5)
      ]),

    AnimatedCall('Counter Rotate',
      formation:Formation('Inverted Lines Ends Facing Out'),
      from:'Inverted Lines Centers Facing In',
      paths:[
          LeadLeft.changeBeats(3).scale(0.5,3.0) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          QuarterRight.changeBeats(2).skew(1.0,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          QuarterLeft.changeBeats(2).skew(1.0,-1.5),

          LeadRight.changeBeats(3).scale(1.5,3.0) +
          ExtendRight.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Counter Rotate',
      formation:Formation('Inverted Lines Ends Facing In'),
      from:'Inverted Lines Centers Facing Out',
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          LeadRight.changeBeats(3).scale(3.0,1.5),

          QuarterLeft.changeBeats(2).skew(-0.5,1.0) +
          ExtendLeft.changeBeats(3).scale(2.0,0.5),

          QuarterRight.changeBeats(2).skew(0.5,-1.0) +
          ExtendRight.changeBeats(3).scale(2.0,1.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          LeadLeft.changeBeats(3).scale(3.0,0.5)
      ]),

    AnimatedCall('Counter Rotate',
      formation:Formation('Two-Faced Lines RH'),
      from:'Right-Hand Two-Faced Lines',
      paths:[
          CounterRotateRight_5_m1.changeBeats(5).changehands(Hands.RIGHT),

          CounterRotateRight_3_1.changeBeats(5).changehands(Hands.BOTH),

          CounterRotateRight_m1_m3.changeBeats(5).changehands(Hands.BOTH),

          CounterRotateRight_1_m5.changeBeats(5).changehands(Hands.RIGHT)
      ]),

    AnimatedCall('Counter Rotate',
      formation:Formation('Two-Faced Lines LH'),
      from:'Left-Hand Two-Faced Lines',
      paths:[
          CounterRotateLeft_1_5.changeBeats(5).changehands(Hands.LEFT),

          CounterRotateLeft_m1_3.changeBeats(5).changehands(Hands.BOTH),

          CounterRotateLeft_3_m1.changeBeats(5).changehands(Hands.BOTH),

          CounterRotateLeft_5_1.changeBeats(5).changehands(Hands.LEFT)
      ]),

    AnimatedCall('Counter Rotate',
      formation:Formation('Quarter Tag'),
      from:'Quarter Tag',
      paths:[
          ExtendLeft.changeBeats(3).scale(3.0,2.5) +
          LeadRight.scale(1.0,0.5),

          ExtendRight.changeBeats(3).scale(3.0,1.5) +
          QuarterLeft.skew(1.0,-0.5),

          LeadRight.changeBeats(3).scale(3.0,3.0),

          HingeLeft
      ]),

    AnimatedCall('Counter Rotate',
      formation:Formation('Hourglass Facing RH Box'),
      from:'Facing Hourglass',
      paths:[
          CounterRotateRight_1_m5.changeBeats(5),

          LeadLeft.changeBeats(5).scale(3.0,3.0),

          CounterRotateRight_5_m1.changeBeats(5),

          HingeLeft.changeBeats(5)
      ]),

    AnimatedCall('Counter Rotate',
      formation:Formation('Column RH GBGB'),
      from:'Right-Hand Columns',
      paths:[
          CounterRotateRight_m2_m4.changeBeats(5).changehands(Hands.RIGHT),

          CounterRotateRight_0_m2.changeBeats(5).changehands(Hands.RIGHT),

          CounterRotateRight_2_0.changeBeats(5).changehands(Hands.RIGHT),

          CounterRotateRight_4_2.changeBeats(5).changehands(Hands.RIGHT)
      ]),

    AnimatedCall('Counter Rotate',
      formation:Formation('Column LH GBGB'),
      from:'Left-Hand Columns',
      paths:[
          CounterRotateLeft_4_m2.changeBeats(5).changehands(Hands.LEFT),

          CounterRotateLeft_2_0.changeBeats(5).changehands(Hands.LEFT),

          CounterRotateLeft_0_2.changeBeats(5).changehands(Hands.LEFT),

          CounterRotateLeft_m2_4.changeBeats(5).changehands(Hands.LEFT)
      ]),

    AnimatedCall('Counter Rotate',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:3,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:270),
  ]),
      from:'Magic Columns, Right-Hand Centers',
      paths:[
          CounterRotateLeft_4_m2.changeBeats(5).changehands(Hands.LEFT),

          CounterRotateRight_0_m2.changeBeats(5).changehands(Hands.RIGHT),

          CounterRotateRight_2_0.changeBeats(5).changehands(Hands.RIGHT),

          CounterRotateLeft_m2_4.changeBeats(5).changehands(Hands.LEFT)
      ]),

    AnimatedCall('Counter Rotate',
      formation:Formation('Magic Column LH'),
      from:'Magic Columnns, Left-Hand Centers',
      paths:[
          CounterRotateRight_m2_m4.changeBeats(5).changehands(Hands.RIGHT),

          CounterRotateLeft_2_0.changeBeats(5).changehands(Hands.LEFT),

          CounterRotateLeft_0_2.changeBeats(5).changehands(Hands.LEFT),

          CounterRotateRight_4_2.changeBeats(5).changehands(Hands.RIGHT)
      ]),

    AnimatedCall('Counter Rotate',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-3,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-5,angle:180),
  ]),
      from:'Parallelogram',
      paths:[
          CounterRotateRight_3_1.changehands(Hands.RIGHT),

          CounterRotateRight_m1_m3.changehands(Hands.RIGHT),

          CounterRotateLeft_5_1,

          CounterRotateRight_2_m4.scale(1.5,1.75)
      ]),

    AnimatedCall('Points Counter Rotate',
      formation:Formation('Diamonds RH Girl Points'),
      from:'Right-Hand Diamonds',
      paths:[
          Path(),

          CounterRotateRight_5_m1.changeBeats(5).skew(1.0,0.0),

          Path(),

          CounterRotateRight_1_m5.changeBeats(5).skew(1.0,0.0)
      ]),
  ];

