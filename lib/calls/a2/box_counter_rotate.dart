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

  final List<AnimatedCall> BoxCounterRotate = [

    AnimatedCall('Box Counter Rotate',
      formation:Formation('Box RH Compact'),
      from:'Right-Hand Box',
      paths:[
          CounterRotateRight_2p5_0p5.changeBeats(4).changehands(2),

          CounterRotateRight_m0p5_m2p5.changeBeats(4).changehands(2)
      ]),

    AnimatedCall('Box Counter Rotate',
      formation:Formation('Box LH Compact'),
      from:'Left-Hand Box',
      paths:[
          CounterRotateLeft_m0p5_2p5.changeBeats(4).changehands(5),

          CounterRotateLeft_2p5_m0p5.changeBeats(4).changehands(1)
      ]),

    AnimatedCall('Box Counter Rotate',
      formation:Formation('Facing Couples Compact'),
      from:'Facing Couples',
      paths:[
          ExtendLeft.changeBeats(2).scale(1.5,0.5) +
          QuarterRight.changeBeats(2).skew(1.0,0.0),

          ExtendLeft.changeBeats(2).scale(1.5,0.5) +
          QuarterLeft.changeBeats(2).skew(1.0,-1.0)
      ]),

    AnimatedCall('Box Counter Rotate',
      formation:Formation('Couples Facing Out Compact'),
      from:'Couples Facing Out',
      paths:[
          LeadLeftPassing.changeBeats(4).scale(1.0,2.5).skew(-1.5,0.0),

          LeadRightPassing.changeBeats(4).scale(2.0,2.5).skew(-2.5,0.0)
      ]),

    AnimatedCall('Box Counter Rotate',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:1,y:1,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:180),
  ],asymmetric:true),
      from:'T-Bone 1',noDisplay: true,
      paths:[
          CounterRotateLeft_0_2.changeBeats(4),

          CounterRotateLeft_0_2.changeBeats(4),

          CounterRotateLeft_0_2.changeBeats(4),

          CounterRotateLeft_0_2.changeBeats(4)
      ]),

    AnimatedCall('Box Counter Rotate',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:1,y:1,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:270),
  ],asymmetric:true),
      from:'T-Bone 2',noDisplay: true,
      paths:[
          CounterRotateLeft_0_2.changeBeats(4).changehands(1),

          CounterRotateLeft_0_2.changeBeats(4),

          CounterRotateLeft_0_2.changeBeats(4),

          CounterRotateLeft_2_0.changeBeats(4).changehands(1)
      ]),

    AnimatedCall('Box Counter Rotate',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:1,y:1,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:270),
  ],asymmetric:true),
      from:'T-Bone 3',noDisplay: true,
      paths:[
          CounterRotateLeft_0_2.changeBeats(4).changehands(1),

          CounterRotateLeft_0_2.changeBeats(4),

          CounterRotateLeft_2_0.changeBeats(4),

          CounterRotateLeft_2_0.changeBeats(4).changehands(1)
      ]),

    AnimatedCall('Box Counter Rotate',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:1,y:1,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-1,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:270),
  ],asymmetric:true),
      from:'T-Bone 4',noDisplay: true,
      paths:[
          CounterRotateLeft_0_2.changeBeats(4).changehands(1),

          CounterRotateLeft_2_0.changeBeats(4),

          CounterRotateLeft_2_0.changeBeats(4),

          CounterRotateLeft_2_0.changeBeats(4).changehands(1)
      ]),

    AnimatedCall('Box Counter Rotate',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:1,y:1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-1,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:270),
  ],asymmetric:true),
      from:'T-Bone 5',noDisplay: true,
      paths:[
          CounterRotateLeft_2_0.changeBeats(4),

          CounterRotateLeft_2_0.changeBeats(4),

          CounterRotateLeft_2_0.changeBeats(4),

          CounterRotateLeft_2_0.changeBeats(4)
      ]),

    AnimatedCall('Box Counter Rotate',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:1,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-1,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:90),
  ],asymmetric:true),
      from:'T-Bone 6',noDisplay: true,
      paths:[
          CounterRotateRight_0_m2.changeBeats(4),

          CounterRotateRight_0_m2.changeBeats(4),

          CounterRotateRight_0_m2.changeBeats(4),

          CounterRotateRight_0_m2.changeBeats(4)
      ]),

    AnimatedCall('Box Counter Rotate',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:1,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-1,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:0),
  ],asymmetric:true),
      from:'T-Bone 7',noDisplay: true,
      paths:[
          CounterRotateRight_0_m2.changeBeats(4),

          CounterRotateRight_0_m2.changeBeats(4),

          CounterRotateRight_0_m2.changeBeats(4).changehands(2),

          CounterRotateRight_2_0.changeBeats(4).changehands(2)
      ]),

    AnimatedCall('Box Counter Rotate',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:1,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-1,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:0),
  ],asymmetric:true),
      from:'T-Bone 8',noDisplay: true,
      paths:[
          CounterRotateRight_0_m2.changeBeats(4),

          CounterRotateRight_0_m2.changeBeats(4).changehands(2),

          CounterRotateRight_2_0.changeBeats(4).changehands(2),

          CounterRotateRight_2_0.changeBeats(4)
      ]),

    AnimatedCall('Box Counter Rotate',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:1,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:0),
  ],asymmetric:true),
      from:'T-Bone 9',noDisplay: true,
      paths:[
          CounterRotateRight_0_m2.changeBeats(4).changehands(2),

          CounterRotateRight_2_0.changeBeats(4).changehands(2),

          CounterRotateRight_2_0.changeBeats(4),

          CounterRotateRight_2_0.changeBeats(4)
      ]),

    AnimatedCall('Box Counter Rotate',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:1,y:1,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:0),
  ],asymmetric:true),
      from:'T-Bone 10',noDisplay: true,
      paths:[
          CounterRotateRight_2_0.changeBeats(4),

          CounterRotateRight_2_0.changeBeats(4),

          CounterRotateRight_2_0.changeBeats(4),

          CounterRotateRight_2_0.changeBeats(4)
      ]),

    AnimatedCall('Box Counter Rotate',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:1,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:270),
  ],asymmetric:true),
      from:'T-Bone 11',noDisplay: true,
      paths:[
          LeadRightPassing.changeBeats(4).scale(2.0,2.0).skew(-2.0,0.0),

          LeadLeftPassing.changeBeats(4).scale(1.0,2.0).skew(-1.0,0.0),

          LeadRightPassing.changeBeats(4).scale(2.0,2.0).skew(-2.0,0.0),

          QuarterLeft.changeBeats(4).skew(2.0,0.0)
      ]),

    AnimatedCall('Box Counter Rotate',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:1,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:180),
  ],asymmetric:true),
      from:'T-Bone 12',noDisplay: true,
      paths:[
          LeadRightPassing.changeBeats(4).scale(2.0,2.0).skew(-2.0,0.0),

          LeadLeftPassing.changeBeats(4).scale(1.0,2.0).skew(-1.0,0.0),

          ExtendLeft.changeBeats(2) +
          LeadRight.changeBeats(2),

          LeadLeftPassing.changeBeats(4).scale(1.0,2.0).skew(-1.0,0.0)
      ]),

    AnimatedCall('Box Counter Rotate',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:1,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-1,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:270),
  ],asymmetric:true),
      from:'T-Bone 13',noDisplay: true,
      paths:[
          LeadRightPassing.changeBeats(4).scale(2.0,2.0).skew(-2.0,0.0),

          QuarterLeft.changeBeats(4).skew(2.0,0.0),

          LeadRightPassing.changeBeats(4).scale(2.0,2.0).skew(-2.0,0.0),

          QuarterLeft.changeBeats(4).skew(2.0,0.0)
      ]),

    AnimatedCall('Box Counter Rotate',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:1,y:1,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:180),
  ],asymmetric:true),
      from:'T-Bone 14',noDisplay: true,
      paths:[
          ExtendLeft.changeBeats(2) +
          LeadRight.changeBeats(2),

          LeadLeftPassing.changeBeats(4).scale(1.0,2.0).skew(-1.0,0.0),

          ExtendLeft.changeBeats(2) +
          LeadRight.changeBeats(2),

          LeadLeftPassing.changeBeats(4).scale(1.0,2.0).skew(-1.0,0.0)
      ]),

    AnimatedCall('Box Counter Rotate',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:1,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-1,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:270),
  ],asymmetric:true),
      from:'T-Bone 15',noDisplay: true,
      paths:[
          LeadRightPassing.changeBeats(4).scale(2.0,2.0).skew(-2.0,0.0),

          QuarterLeft.changeBeats(4).skew(2.0,0.0),

          ExtendLeft.changeBeats(2) +
          LeadRight.changeBeats(2),

          QuarterLeft.changeBeats(4).skew(2.0,0.0)
      ]),

    AnimatedCall('Box Counter Rotate',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:1,y:1,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:270),
  ],asymmetric:true),
      from:'T-Bone 16',noDisplay: true,
      paths:[
          ExtendLeft.changeBeats(2) +
          LeadRight.changeBeats(2),

          QuarterLeft.changeBeats(4).skew(0.0,2.0),

          ExtendLeft.changeBeats(2) +
          LeadRight.changeBeats(2),

          QuarterLeft.changeBeats(4).skew(2.0,0.0)
      ]),

    AnimatedCall('Box Counter Rotate',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:1,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:270),
  ],asymmetric:true),
      from:'T-Bone 17',noDisplay: true,
      paths:[
          LeadRightPassing.changeBeats(4).scale(2.0,2.0).skew(-2.0,0.0),

          LeadLeftPassing.changeBeats(4).scale(1.0,2.0).skew(-1.0,0.0),

          ExtendLeft.changeBeats(2) +
          LeadRight.changeBeats(2),

          QuarterLeft.changeBeats(4).skew(2.0,0.0)
      ]),

    AnimatedCall('Box Counter Rotate',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:1,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-1,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:180),
  ],asymmetric:true),
      from:'T-Bone 18',noDisplay: true,
      paths:[
          LeadRightPassing.changeBeats(4).scale(2.0,2.0).skew(-2.0,0.0),

          QuarterLeft.changeBeats(4).skew(2.0,0.0),

          ExtendLeft.changeBeats(2) +
          LeadRight.changeBeats(2),

          QuarterLeft.changeBeats(4).skew(0.0,2.0)
      ]),

    AnimatedCall('Box Counter Rotate 3/4',
      formation:Formation('Box RH'),
      from:'Right-Hand Box',fractions:'4;4',
      paths:[
          CounterRotateRight_3_1.changeBeats(4).changehands(2) +
          CounterRotateRight_3_1.changeBeats(4).changehands(2) +
          CounterRotateRight_3_1.changeBeats(4).changehands(2),

          CounterRotateRight_m1_m3.changeBeats(4).changehands(2) +
          CounterRotateRight_m1_m3.changeBeats(4).changehands(2) +
          CounterRotateRight_m1_m3.changeBeats(4).changehands(2)
      ]),

    AnimatedCall('As Couples Box Counter Rotate',
      formation:Formation('Two-Faced Lines RH'),
      from:'Two-Faced Lines',group:' ',
      paths:[
          CounterRotateRight_5_m1.changeBeats(5).changehands(2),

          CounterRotateRight_3_1.changeBeats(5).changehands(3),

          CounterRotateRight_m1_m3.changeBeats(5).changehands(3),

          CounterRotateRight_1_m5.changeBeats(5).changehands(2)
      ]),

    AnimatedCall('Split Counter Rotate',
      formation:Formation('Ocean Waves RH BGBG'),
      from:'Right-Hand Waves',
      paths:[
          CounterRotateRight_2_0.changeBeats(4).changehands(2).scale(1.5,1.0),

          CounterRotateRight_0_m2.changeBeats(4).changehands(2).skew(-1.0,0.0),

          CounterRotateRight_2_0.changeBeats(4).changehands(2).scale(1.5,1.0),

          CounterRotateRight_0_m2.changeBeats(4).changehands(2).skew(-1.0,0.0)
      ]),

    AnimatedCall('Split Counter Rotate',
      formation:Formation('Ocean Waves LH GBBG'),
      from:'Left-Hand Waves',
      paths:[
          CounterRotateLeft_0_2.changeBeats(4).changehands(1).skew(-1.0,0.0),

          CounterRotateLeft_2_0.changeBeats(4).changehands(1).scale(1.5,1.0),

          CounterRotateLeft_0_2.changeBeats(4).changehands(1).skew(-1.0,0.0),

          CounterRotateLeft_2_0.changeBeats(4).changehands(1).scale(1.5,1.0)
      ]),

    AnimatedCall('Split Counter Rotate',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:3,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-3,angle:90),
  ]),
      from:'Right-Hand Columns',
      paths:[
          CounterRotateRight_0_m2.changeBeats(4).changehands(2).skew(0.0,-1.0),

          CounterRotateRight_2_0.changeBeats(4).changehands(2).skew(0.0,1.0),

          CounterRotateRight_0_m2.changeBeats(4).changehands(2).skew(0.0,-1.0),

          CounterRotateRight_2_0.changeBeats(4).changehands(2).skew(0.0,1.0)
      ]),

    AnimatedCall('Split Counter Rotate',
      formation:Formation('Column LH GBGB'),
      from:'Left-Hand Columns',
      paths:[
          CounterRotateLeft_2_0.changeBeats(4).changehands(1).skew(0.0,-1.0),

          CounterRotateLeft_0_2.changeBeats(4).changehands(1).skew(0.0,1.0),

          CounterRotateLeft_2_0.changeBeats(4).changehands(1).skew(0.0,-1.0),

          CounterRotateLeft_0_2.changeBeats(4).changehands(1).skew(0.0,1.0)
      ]),

    AnimatedCall('Split Counter Rotate',
      formation:Formation('Normal Lines'),
      from:'Lines',
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          QuarterRight.changeBeats(2).skew(1.0,-0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          QuarterLeft.changeBeats(2).skew(1.0,-0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          QuarterRight.changeBeats(2).skew(1.0,-0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          QuarterLeft.changeBeats(2).skew(1.0,-0.5)
      ]),

    AnimatedCall('Split Counter Rotate',
      formation:Formation('Lines Facing Out Compact'),
      from:'Lines Facing Out',
      paths:[
          LeadLeftPassing.changeBeats(4).scale(1.0,2.0).skew(-1.5,0.0),

          LeadRightPassing.changeBeats(4).scale(2.0,2.0).skew(-2.5,0.0),

          LeadLeftPassing.changeBeats(4).scale(1.0,2.0).skew(-1.5,0.0),

          LeadRightPassing.changeBeats(4).scale(2.0,2.0).skew(-2.5,0.0)
      ]),

    AnimatedCall('Split Counter Rotate',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:180),
  ]),
      from:'T-Bones 1',
      paths:[
          CounterRotateRight_2_0.changeBeats(4),

          CounterRotateRight_2_0.changeBeats(4).changehands(2),

          CounterRotateRight_0_m2.changeBeats(4).changehands(2),

          CounterRotateRight_0_m2.changeBeats(4)
      ]),

    AnimatedCall('Split Counter Rotate',
      formation:Formation('Diamonds RH Girl Points'),
      from:'Right-Hand Diamonds',
      paths:[
          HingeRight.changeBeats(3).skew(0.0,1.0),

          LeadRight.changeBeats(3).scale(2.0,3.0).skew(-1.0,0.0),

          HingeRight.changeBeats(3).skew(0.0,-1.0),

          LeadRight.changeBeats(3).scale(2.0,3.0).skew(1.0,0.0)
      ]),

    AnimatedCall('Split Counter Rotate',
      formation:Formation('Diamonds LH Girl Points'),
      from:'Left-Hand Diamonds',
      paths:[
          HingeLeft.changeBeats(3).skew(0.0,-1.0),

          LeadLeft.changeBeats(3).scale(2.0,3.0).skew(1.0,0.0),

          HingeLeft.changeBeats(3).skew(0.0,1.0),

          LeadLeft.changeBeats(3).scale(2.0,3.0).skew(-1.0,0.0)
      ]),

    AnimatedCall('Split Counter Rotate',
      formation:Formation('Diamonds Facing Girl Points'),
      from:'Facing Diamonds, Right-Hand Centers',
      paths:[
          HingeRight.changeBeats(3).skew(0.0,1.0),

          LeadLeft.changeBeats(3).scale(2.0,3.0).skew(1.0,0.0),

          HingeRight.changeBeats(3).skew(0.0,-1.0),

          LeadLeft.changeBeats(3).scale(2.0,3.0).skew(-1.0,0.0)
      ]),

    AnimatedCall('Split Counter Rotate',
      formation:Formation('Diamonds Facing LH Girl Points'),
      from:'Facing Diamonds, Left-Hand Centers',
      paths:[
          HingeLeft.changeBeats(3).skew(0.0,-1.0),

          LeadRight.changeBeats(3).scale(2.0,3.0).skew(-1.0,0.0),

          HingeLeft.changeBeats(3).skew(0.0,1.0),

          LeadRight.changeBeats(3).scale(2.0,3.0).skew(1.0,0.0)
      ]),

    AnimatedCall('Split Counter Rotate',
      formation:Formation('Diamonds RH PTP Girl Points'),
      from:'Right-Hand Point-to-Point Diamonds',
      paths:[
          HingeRight.changeBeats(3).skew(1.0,0.0),

          LeadRight.changeBeats(3).scale(3.0,2.0).skew(0.0,1.0),

          HingeRight.changeBeats(3).skew(-1.0,0.0),

          LeadRight.changeBeats(3).scale(3.0,2.0).skew(0.0,-1.0)
      ]),

    AnimatedCall('Split Counter Rotate',
      formation:Formation('Diamonds LH PTP Girl Points'),
      from:'Left-Hand Point-to-Point Diamonds',
      paths:[
          HingeLeft.changeBeats(3).skew(-1.0,0.0),

          LeadLeft.changeBeats(3).scale(3.0,2.0).skew(0.0,-1.0),

          HingeLeft.changeBeats(3).skew(1.0,0.0),

          LeadLeft.changeBeats(3).scale(3.0,2.0).skew(0.0,1.0)
      ]),

    AnimatedCall('Split Counter Rotate',
      formation:Formation('Diamonds Facing PTP'),
      from:'Facing Point-to-Point Diamonds, Right-Hand Centers',
      paths:[
          HingeRight.changeBeats(3).skew(1.0,0.0),

          LeadLeft.changeBeats(3).scale(3.0,2.0).skew(0.0,-1.0),

          HingeRight.changeBeats(3).skew(-1.0,0.0),

          LeadLeft.changeBeats(3).scale(3.0,2.0).skew(0.0,1.0)
      ]),

    AnimatedCall('Split Counter Rotate',
      formation:Formation('Diamonds Facing LH PTP'),
      from:'Facing Point-to-Point Diamonds, Left-Hand Centers',
      paths:[
          HingeLeft.changeBeats(3).skew(-1.0,0.0),

          LeadRight.changeBeats(3).scale(3.0,2.0).skew(0.0,1.0),

          HingeLeft.changeBeats(3).skew(1.0,0.0),

          LeadRight.changeBeats(3).scale(3.0,2.0).skew(0.0,-1.0)
      ]),
  ];

