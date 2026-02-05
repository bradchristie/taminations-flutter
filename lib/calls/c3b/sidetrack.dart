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

  final List<AnimatedCall> Sidetrack = [

    AnimatedCall('Sidetrack',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:3,y:1,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:3,y:-1,angle:180),
        Dancer.fromData(gender:Gender.GIRL,x:1,y:-1,angle:180),
        Dancer.fromData(gender:Gender.BOY,x:1,y:1,angle:0),
  ]),
      from:'Right-Hand Columns',parts:'1.5;4',
      paths:[
          QuarterRight.skew(0.0,1.0) +
          CounterRotateRight_5_m1.changeBeats(4) +
          QuarterRight.skew(1.0,0.0),

          QuarterLeft.skew(0.0,1.0) +
          CounterRotateRight_1_m5.changeBeats(4) +
          QuarterRight.skew(-1.0,0.0),

          QuarterRight.skew(0.0,1.0) +
          CounterRotateLeft_3_m1.changeBeats(4) +
          QuarterLeft.skew(1.0,0.0),

          QuarterLeft.skew(0.0,1.0) +
          CounterRotateLeft_m1_3.changeBeats(4) +
          QuarterLeft.skew(-1.0,0.0)
      ]),

    AnimatedCall('Sidetrack',
      formation:Formation('Two-Faced Lines RH'),
      from:'Right-Hand Two-Faced Lines',parts:'1.5;4',
      paths:[
          QuarterLeft.skew(1.0,0.0) +
          CounterRotateRight_m2_m4.changeBeats(4).changehands(Hands.RIGHT) +
          QuarterRight.skew(0.0,1.0),

          QuarterLeft.skew(1.0,0.0) +
          CounterRotateRight_0_m2.changeBeats(4).changehands(Hands.RIGHT) +
          QuarterRight.skew(0.0,1.0),

          QuarterRight.skew(-1.0,0.0) +
          CounterRotateRight_2_0.changeBeats(4).changehands(Hands.RIGHT) +
          QuarterRight.skew(0.0,1.0),

          QuarterRight.skew(-1.0,0.0) +
          CounterRotateRight_4_2.changeBeats(4).changehands(Hands.RIGHT) +
          QuarterRight.skew(0.0,1.0)
      ]),

    AnimatedCall('Single Sidetrack',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:3,y:1,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:3,y:-1,angle:180),
        Dancer.fromData(gender:Gender.GIRL,x:1,y:-1,angle:180),
        Dancer.fromData(gender:Gender.BOY,x:1,y:1,angle:0),
  ]),
      from:'Right-Hand Columns',parts:'1.5;4',
      paths:[
          QuarterRight.skew(0.0,1.0) +
          LeadRight.changeBeats(4).scale(1.5,3.0) +
          QuarterRight,

          QuarterLeft.skew(0.0,1.0) +
          LeadRight.changeBeats(4).scale(1.5,3.0) +
          QuarterRight.skew(0.0,1.2),

          QuarterRight.skew(0.0,1.0) +
          HingeLeft.changeBeats(4).scale(0.5,1.0) +
          QuarterLeft.skew(0.0,0.4),

          QuarterLeft.skew(0.0,1.0) +
          HingeLeft.changeBeats(4).scale(0.5,1.0) +
          QuarterLeft.skew(0.0,-0.8)
      ]),

    AnimatedCall('Single Sidetrack',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:4.2,y:0,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:3.0,y:0,angle:0),
        Dancer.fromData(gender:Gender.BOY,x:1.8,y:0,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:0.6,y:0,angle:0),
  ]),
      from:'Column of 8',parts:'1.5;4',
      paths:[
          QuarterRight +
          LeadRight.changeBeats(4).scale(3.0,2.2) +
          QuarterRight.skew(1.0,0.0),

          QuarterLeft +
          HingeLeft.changeBeats(4).scale(1.0,0.6).skew(0.0,0.4) +
          QuarterLeft.skew(1.0,0.0),

          QuarterRight +
          HingeLeft.changeBeats(4).scale(1.0,0.6).skew(0.0,-0.4) +
          QuarterLeft.skew(-1.0,0.0),

          QuarterLeft +
          LeadRight.changeBeats(4).scale(3.0,1.4) +
          QuarterRight.skew(-1.0,0.0)
      ]),

    AnimatedCall('Split Sidetrack',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:3,y:1,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:3,y:-1,angle:180),
        Dancer.fromData(gender:Gender.GIRL,x:1,y:-1,angle:180),
        Dancer.fromData(gender:Gender.BOY,x:1,y:1,angle:0),
  ]),
      from:'Right-Hand Columns',parts:'1.5;2',
      paths:[
          QuarterRight +
          CounterRotateRight_2_0 +
          QuarterRight.skew(0.0,1.0),

          QuarterLeft +
          CounterRotateRight_0_m2 +
          QuarterRight.skew(0.0,1.0),

          QuarterRight +
          CounterRotateRight_2_0 +
          QuarterRight.skew(0.0,1.0),

          QuarterLeft +
          CounterRotateRight_0_m2 +
          QuarterRight.skew(0.0,1.0)
      ]),

    AnimatedCall('Split Sidetrack',
      formation:Formation('Ocean Waves RH BGBG'),
      from:'Right-Hand Waves',parts:'1.5;2',
      paths:[
          QuarterLeft.skew(1.0,0.0) +
          CounterRotateRight_0_m2 +
          QuarterRight,

          QuarterRight.skew(-1.0,0.0) +
          CounterRotateRight_2_0 +
          QuarterRight,

          QuarterLeft.skew(1.0,0.0) +
          CounterRotateRight_0_m2 +
          QuarterRight,

          QuarterRight.skew(-1.0,0.0) +
          CounterRotateRight_2_0 +
          QuarterRight
      ]),
  ];

