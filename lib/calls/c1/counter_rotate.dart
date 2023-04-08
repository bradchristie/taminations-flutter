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

import '../../common_dart.dart';
import '../../formation.dart';
import '../../formations.dart';
import '../../moves.dart';
import '../../animated_call.dart';

  final List<AnimatedCall> CounterRotate = [ 

    AnimatedCall('Counter Rotate',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:3,y:1.5,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:1.5,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1.5,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:1.5,angle:90),
  ]),
      from:'Right-Hand Waves',
      paths:[
          CounterRotateRight_4p5_m1p5.changeBeats(5),

          CounterRotateLeft_m0p5_2p5.changeBeats(5).changehands(1),

          CounterRotateLeft_2p5_m0p5.changeBeats(5).changehands(1),

          CounterRotateRight_1p5_m4p5.changeBeats(5)
      ]),

    AnimatedCall('Counter Rotate',
      formation:Formations.OceanWavesLHBGGB,
      from:'Left-Hand Waves',
      paths:[
          CounterRotateLeft_1_5.changeBeats(5),

          CounterRotateRight_3_1.changeBeats(5).changehands(2),

          CounterRotateRight_m1_m3.changeBeats(5).changehands(2),

          CounterRotateLeft_5_1.changeBeats(5)
      ]),

    AnimatedCall('Counter Rotate',
      formation:Formation('', [
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
      formation:Formations.DiamondsRHGirlPoints,
      from:'Right-Hand Diamonds',
      paths:[
          LeadRight.changeBeats(5).scale(3.0,3.0),

          CounterRotateRight_5_m1.changeBeats(5),

          HingeLeft.changeBeats(5),

          CounterRotateRight_1_m5.changeBeats(5)
      ]),

    AnimatedCall('Counter Rotate',
      formation:Formations.DiamondsRHPTPGirlPoints,
      from:'Point to Point Diamonds',
      paths:[
          CounterRotateRight_4_2.changeBeats(5).changehands(2),

          HingeLeft.changeBeats(5),

          CounterRotateRight_m2_m4.changeBeats(5).changehands(2),

          LeadRight.changeBeats(5).scale(5.0,5.0)
      ]),

    AnimatedCall('Counter Rotate',
      formation:Formations.NormalLines,
      from:'Normal Lines',
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
      formation:Formations.InvertedLinesEndsFacingOut,
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
      formation:Formations.InvertedLinesEndsFacingIn,
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
      formation:Formations.TwomFacedLinesRH,
      from:'Right-Hand Two-Faced Lines',
      paths:[
          CounterRotateRight_5_m1.changeBeats(5).changehands(2),

          CounterRotateRight_3_1.changeBeats(5).changehands(3),

          CounterRotateRight_m1_m3.changeBeats(5).changehands(3),

          CounterRotateRight_1_m5.changeBeats(5).changehands(2)
      ]),

    AnimatedCall('Counter Rotate',
      formation:Formations.TwomFacedLinesLH,
      from:'Left-Hand Two-Faced Lines',
      paths:[
          CounterRotateLeft_1_5.changeBeats(5).changehands(1),

          CounterRotateLeft_m1_3.changeBeats(5).changehands(3),

          CounterRotateLeft_3_m1.changeBeats(5).changehands(3),

          CounterRotateLeft_5_1.changeBeats(5).changehands(1)
      ]),

    AnimatedCall('Counter Rotate',
      formation:Formations.QuarterTag,
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
      formation:Formations.HourglassFacingRHBox,
      from:'Facing Hourglass',
      paths:[
          CounterRotateRight_1_m5.changeBeats(5),

          LeadLeft.changeBeats(5).scale(3.0,3.0),

          CounterRotateRight_5_m1.changeBeats(5),

          HingeLeft.changeBeats(5)
      ]),

    AnimatedCall('Counter Rotate',
      formation:Formations.ColumnRHGBGB,
      from:'Right-Hand Columns',
      paths:[
          CounterRotateRight_m2_m4.changeBeats(5).changehands(2),

          CounterRotateRight_0_m2.changeBeats(5).changehands(2),

          CounterRotateRight_2_0.changeBeats(5).changehands(2),

          CounterRotateRight_4_2.changeBeats(5).changehands(2)
      ]),

    AnimatedCall('Counter Rotate',
      formation:Formations.ColumnLHGBGB,
      from:'Left-Hand Columns',
      paths:[
          CounterRotateLeft_4_m2.changeBeats(5).changehands(1),

          CounterRotateLeft_2_0.changeBeats(5).changehands(1),

          CounterRotateLeft_0_2.changeBeats(5).changehands(1),

          CounterRotateLeft_m2_4.changeBeats(5).changehands(1)
      ]),

    AnimatedCall('Counter Rotate',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:3,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:270),
  ]),
      from:'Magic Columns, Right-Hand Centers',
      paths:[
          CounterRotateLeft_4_m2.changeBeats(5).changehands(1),

          CounterRotateRight_0_m2.changeBeats(5).changehands(2),

          CounterRotateRight_2_0.changeBeats(5).changehands(2),

          CounterRotateLeft_m2_4.changeBeats(5).changehands(1)
      ]),

    AnimatedCall('Counter Rotate',
      formation:Formations.MagicColumnLH,
      from:'Magic Columnns, Left-Hand Centers',
      paths:[
          CounterRotateRight_m2_m4.changeBeats(5).changehands(2),

          CounterRotateLeft_2_0.changeBeats(5).changehands(1),

          CounterRotateLeft_0_2.changeBeats(5).changehands(1),

          CounterRotateRight_4_2.changeBeats(5).changehands(2)
      ]),

    AnimatedCall('Counter Rotate',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-3,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-5,angle:180),
  ]),
      from:'Parallelogram',
      paths:[
          CounterRotateRight_3_1.changehands(2),

          CounterRotateRight_m1_m3.changehands(2),

          CounterRotateLeft_5_1,

          CounterRotateRight_2_m4.scale(1.5,1.75)
      ]),

    AnimatedCall('Points Counter Rotate',
      formation:Formations.DiamondsRHGirlPoints,
      from:'Right-Hand Diamonds',
      paths:[
          Path(),

          CounterRotateRight_5_m1.changeBeats(5).skew(1.0,0.0),

          Path(),

          CounterRotateRight_1_m5.changeBeats(5).skew(1.0,0.0)
      ]),
  ];

