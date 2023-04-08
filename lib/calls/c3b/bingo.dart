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

  final List<AnimatedCall> Bingo = [ 

    AnimatedCall('Bingo',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:1,y:2,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-2,angle:270),
  ]),
      from:'Right-Hand Box',fractions:'2.25',
      paths:[
          WheelThruRight.changeBeats(4.5),

          QuarterLeft.skew(-0.333,0.333) +
          QuarterLeft.skew(0.333,0.333) +
          QuarterLeft.skew(0.333,-0.333)
      ]),

    AnimatedCall('Bingo',
      formation:Formations.BoxLH,
      from:'Left-Hand Box',fractions:'2.25',
      paths:[
          QuarterRight.skew(-0.333,-0.333) +
          QuarterRight.skew(0.333,-0.333) +
          QuarterRight.skew(0.333,0.333),

          WheelThruLeft.changeBeats(4.5)
      ]),

    AnimatedCall('Bingo',
      formation:Formations.OceanWavesRHBGBG,
      from:'Right-Hand Waves',
      paths:[
          LeadRight.changeBeats(4.5).scale(3.0,2.0),

          QuarterLeft.skew(-0.333,0.0) +
          QuarterLeft.skew(0.0,0.333) +
          QuarterLeft.skew(0.333,0.0),

          LeadRight.changeBeats(4.5).scale(3.0,2.0),

          QuarterLeft.skew(-0.333,0.0) +
          QuarterLeft.skew(0.0,0.333) +
          QuarterLeft.skew(0.333,0.0)
      ]),

    AnimatedCall('Bingo',
      formation:Formations.OceanWavesLHBGBG,
      from:'Left-Hand Waves',
      paths:[
          QuarterRight.skew(-0.333,0.0) +
          QuarterRight.skew(0.0,-0.333) +
          QuarterRight.skew(0.333,0.0),

          LeadLeft.changeBeats(4.5).scale(3.0,2.0),

          QuarterRight.skew(-0.333,0.0) +
          QuarterRight.skew(0.0,-0.333) +
          QuarterRight.skew(0.333,0.0),

          LeadLeft.changeBeats(4.5).scale(3.0,2.0)
      ]),

    AnimatedCall('Bingo',
      formation:Formations.ColumnRHGBGB,
      from:'Right-Hand Columns',
      paths:[
          QuarterLeft.skew(0.0,0.333) +
          QuarterLeft.skew(0.333,0.0) +
          QuarterLeft.skew(0.0,-0.333),

          LeadRight.changeBeats(4.5).scale(2.0,3.0),

          QuarterLeft.skew(0.0,0.333) +
          QuarterLeft.skew(0.333,0.0) +
          QuarterLeft.skew(0.0,-0.333),

          LeadRight.changeBeats(4.5).scale(2.0,3.0)
      ]),

    AnimatedCall('Bingo',
      formation:Formations.ColumnLHGBGB,
      from:'Left-Hand Columns',
      paths:[
          LeadLeft.changeBeats(4.5).scale(2.0,3.0),

          QuarterRight.skew(0.0,-0.333) +
          QuarterRight.skew(0.333,0.0) +
          QuarterRight.skew(0.0,0.333),

          LeadLeft.changeBeats(4.5).scale(2.0,3.0),

          QuarterRight.skew(0.0,-0.333) +
          QuarterRight.skew(0.333,0.0) +
          QuarterRight.skew(0.0,0.333)
      ]),

    AnimatedCall('Bingo',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:1,y:1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-1,angle:270),
  ]),
      from:'T-Bone Box',
      paths:[
          LeadLeft.changeBeats(4.5).scale(2.0,2.0),

          QuarterLeft.skew(0.25,0.25) +
          QuarterLeft +
          QuarterLeft.skew(0.25,0.25)
      ]),

    AnimatedCall('As Couples Bingo',
      formation:Formations.TwomFacedLinesRH,
      group:' ',
      paths:[
          LeadRight.changeBeats(3).changehands(2).scale(3.5,3.0) +
          ExtendLeft.changeBeats(3).changehands(2).scale(2.0,1.5),

          LeadRight.changeBeats(3).changehands(1).scale(2.5,1.0) +
          ExtendLeft.changeBeats(3).changehands(1).scale(2.0,0.5),

          HingeLeft.changeBeats(2).scale(2.0,2.0).skew(0.33,-0.33) +
          HingeLeft.changeBeats(2).scale(2.0,2.0).skew(-0.33,-0.33) +
          HingeLeft.changeBeats(2).scale(2.0,2.0).skew(-0.33,0.33),

          QuarterLeft.changeBeats(2).changehands(2).skew(0.33,-0.33) +
          QuarterLeft.changeBeats(2).changehands(2).skew(-0.33,-0.33) +
          QuarterLeft.changeBeats(2).changehands(2).skew(-0.33,0.33)
      ]),

    AnimatedCall('Tandem Bingo',
      formation:Formations.ColumnRHGBGB,
      group:' ',
      paths:[
          CounterRotateLeft_0_2 +
          CounterRotateLeft_0_2 +
          CounterRotateLeft_0_2,

          CounterRotateLeft_2_0 +
          CounterRotateLeft_2_0 +
          CounterRotateLeft_2_0,

          Forward +
          LeadRight.changeBeats(3).scale(1.0,2.0) +
          Forward_2,

          Forward_3 +
          LeadRight.changeBeats(3).scale(1.0,2.0)
      ]),

    AnimatedCall('In Your Block Bingo',
      formation:Formations.BlocksRH,
      group:' ',
      paths:[
          LeadRight.changeBeats(4.5).scale(4.0,4.0),

          QuarterLeft +
          QuarterLeft +
          QuarterLeft,

          LeadRight.changeBeats(4.5).scale(4.0,4.0),

          QuarterLeft +
          QuarterLeft +
          QuarterLeft
      ]),

    AnimatedCall('Once Removed Bingo',
      formation:Formations.TwomFacedLinesRH,
      group:' ',
      paths:[
          LeadRight.changeBeats(4.5).scale(3.0,4.0),

          Forward +
          LeadRight.changeBeats(3.5).scale(2.0,4.0),

          QuarterLeft.skew(-0.25,0.0) +
          QuarterLeft.skew(0.0,0.25) +
          QuarterLeft.skew(0.5,0.0),

          QuarterLeft.skew(-0.25,0.0) +
          QuarterLeft.skew(0.0,0.25) +
          QuarterLeft.skew(0.5,0.0)
      ]),

    AnimatedCall('Couples Twosome Bingo',
      formation:Formations.TwomFacedLinesRH,
      group:' ',
      paths:[
          LeadRight.changeBeats(4.5).scale(3.0,4.0),

          Forward +
          LeadRight.changeBeats(3.5).scale(2.0,4.0),

          QuarterLeft.skew(-0.25,0.0) +
          QuarterLeft.skew(0.0,0.25) +
          QuarterLeft.skew(0.5,0.0),

          QuarterLeft.skew(-0.25,0.0) +
          QuarterLeft.skew(0.0,0.25) +
          QuarterLeft.skew(0.5,0.0)
      ]),

    AnimatedCall('Tandem Twosome Bingo',
      formation:Formations.ColumnRHGBGB,
      group:' ',
      paths:[
          QuarterLeft.changeBeats(2).skew(0.0,0.5) +
          QuarterLeft.changeBeats(2).skew(0.25,0.0) +
          QuarterLeft.changeBeats(2).skew(0.0,-0.25),

          QuarterLeft.changeBeats(2).skew(0.0,0.5) +
          QuarterLeft.changeBeats(2).skew(0.25,0.0) +
          QuarterLeft.changeBeats(2).skew(0.0,-0.25),

          ExtendRight.changeBeats(2).scale(2.0,0.5) +
          Forward +
          LeadRight.changeBeats(3).scale(1.0,2.5),

          ExtendRight.changeBeats(2).scale(2.0,0.5) +
          Forward +
          LeadRight.changeBeats(3).scale(1.0,2.5)
      ]),
  ];

