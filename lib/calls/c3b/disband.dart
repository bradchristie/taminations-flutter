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

  final List<AnimatedCall> Disband = [ 

    AnimatedCall('Disband',
      formation:Formations.OceanWavesRHBGGB,
      from:'Right-Hand Waves',parts:'3.5',
      paths:[
          Forward_2 +
          QuarterLeft.changehands(1).skew(1.0,0.0) +
          RunLeft +
          Forward,

          CounterRotateLeft_0_2.changeBeats(3.5).changehands(1).skew(-1.0,0.0) +
          FlipRight.skew(1.0,0.0),

          CounterRotateLeft_2_0.changeBeats(3.5).changehands(1).skew(1.0,0.0) +
          FlipRight.skew(-1.0,0.0),

          RunLeft.changeBeats(2).skew(-2.0,-1.0) +
          HingeLeft +
          Forward_5
      ]),

    AnimatedCall('Disband',
      formation:Formations.OceanWavesLHBGGB,
      from:'Left-Hand Waves',parts:'3.5',
      paths:[
          RunRight.changeBeats(2).skew(-2.0,1.0) +
          HingeRight +
          Forward_5,

          CounterRotateRight_2_0.changeBeats(3.5).changehands(2).skew(1.0,0.0) +
          FlipLeft.skew(-1.0,0.0),

          CounterRotateRight_0_m2.changeBeats(3.5).changehands(2).skew(-1.0,0.0) +
          FlipLeft.skew(1.0,0.0),

          Forward_2 +
          QuarterRight.changehands(2).skew(1.0,0.0) +
          RunRight +
          Forward
      ]),

    AnimatedCall('Disband',
      formation:Formations.TwomFacedLinesRH,
      from:'Right-Hand Two-Faced Lines',parts:'3.5',
      paths:[
          Forward_2 +
          QuarterLeft.changehands(1).skew(1.0,0.0) +
          RunLeft +
          Forward,

          CounterRotateRight_2_0.changeBeats(3.5).changehands(2).skew(1.0,0.0) +
          FlipLeft.skew(-1.0,0.0),

          CounterRotateRight_0_m2.changeBeats(3.5).changehands(2).skew(-1.0,0.0) +
          FlipLeft.skew(1.0,0.0),

          RunLeft.changeBeats(2).skew(-2.0,-1.0) +
          HingeLeft +
          Forward_5
      ]),

    AnimatedCall('Disband',
      formation:Formations.TwomFacedLinesLH,
      from:'Left-Hand Two-Faced Lines',parts:'3.5',
      paths:[
          RunRight.changeBeats(2).skew(-2.0,1.0) +
          HingeRight +
          Forward_5,

          CounterRotateLeft_0_2.changeBeats(3.5).changehands(1).skew(-1.0,0.0) +
          FlipRight.skew(1.0,0.0),

          CounterRotateLeft_2_0.changeBeats(3.5).changehands(1).skew(1.0,0.0) +
          FlipRight.skew(-1.0,0.0),

          Forward_2 +
          QuarterRight.changehands(2).skew(1.0,0.0) +
          RunRight +
          Forward
      ]),

    AnimatedCall('Disband',
      formation:Formations.ColumnRHGBGB,
      from:'Right-Hand Columns',parts:'4',
      paths:[
          RunLeft.changeBeats(3).scale(1.0,1.25).skew(-3.0,0.0) +
          HingeLeft.changeBeats(1).scale(1.0,0.5) +
          Forward_5,

          CounterRotateRight_0_m2.changeBeats(4).changehands(2) +
          FlipLeft.skew(1.0,0.0),

          CounterRotateRight_2_0.changeBeats(4).changehands(2) +
          FlipLeft.skew(-1.0,0.0),

          ExtendLeft.changeBeats(3).scale(3.0,1.5) +
          HingeLeft.changeBeats(1).scale(1.0,0.5) +
          RunLeft +
          Forward
      ]),

    AnimatedCall('Disband',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:1,y:3,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:1,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:3,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:270),
  ]),
      from:'Left-Hand Columns',parts:'4',
      paths:[
          RunRight.changeBeats(3).scale(1.0,1.25).skew(-3.0,0.0) +
          HingeRight.changeBeats(1).scale(1.0,0.5) +
          Forward_5,

          CounterRotateLeft_0_2.changeBeats(4).changehands(1) +
          FlipRight.skew(1.0,0.0),

          ExtendRight.changeBeats(3).scale(3.0,1.5) +
          HingeRight.changeBeats(1).scale(1.0,0.5) +
          RunRight +
          Forward,

          CounterRotateLeft_2_0.changeBeats(4).changehands(1) +
          FlipRight.skew(-1.0,0.0)
      ]),
  ];

