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

  final List<AnimatedCall> ZConcept = [

    AnimatedCall('(From offset lines) "Z" Chase Right',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-1.5,y:2,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-1.5,y:0,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-1.5,y:-2,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-1.5,y:-4,angle:180),
  ]),
      group:'(From offset lines)',
      paths:[
          RunRight.skew(-1.0,0.0) +
          Forward +
          RunRight.changeBeats(2.5).skew(1.0,0.0),

          RunRight.changeBeats(4).scale(1.0,2.0) +
          Forward_3.changeBeats(2.5),

          RunRight.scale(1.0,0.75).skew(-1.0,0.0) +
          Forward +
          RunRight.changeBeats(2.5).scale(1.0,0.75).skew(1.0,0.0),

          RunRight.changeBeats(4).scale(1.0,1.75) +
          Forward_2.changeBeats(1.5) +
          ExtendLeft.scale(1.0,0.5)
      ]),

    AnimatedCall('(From offset lines) "Z" Shakedown',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-1.5,y:2,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-1.5,y:0,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-1.5,y:-2,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-1.5,y:-4,angle:180),
  ]),
      group:'(From offset lines)',
      paths:[
          UmTurnRight.skew(-2.0,-1.5) +
          QuarterRight.skew(0.5,0.5),

          FlipRight +
          QuarterRight.skew(0.5,0.0),

          UmTurnRight.skew(-2.0,-1.5) +
          QuarterRight.skew(0.5,0.5),

          FlipRight +
          QuarterRight.skew(0.5,0.0)
      ]),

    AnimatedCall('(From offset lines) "Z" Split Circulate',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-1.5,y:2,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1.5,y:0,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-1.5,y:-2,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-1.5,y:-4,angle:180),
  ]),
      group:'(From offset lines)',
      paths:[
          ExtendLeft.changeBeats(3).scale(3.0,2.0),

          RunRight,

          ExtendLeft.changeBeats(3).scale(3.0,2.0),

          RunRight
      ]),

    AnimatedCall('(From offset lines) "Z" Split Counter Rotate',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-1.5,y:2,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1.5,y:0,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-1.5,y:-2,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-1.5,y:-4,angle:180),
  ]),
      group:'(From offset lines)',
      paths:[
          CounterRotateRight_2_0.changeBeats(3).scale(1.25,1.0).skew(0.0,2.0),

          CounterRotateRight_0_m2.changeBeats(3).skew(-0.5,0.0),

          CounterRotateRight_2_0.changeBeats(3).scale(1.25,1.0).skew(0.0,2.0),

          CounterRotateRight_0_m2.changeBeats(3).skew(-0.5,0.0)
      ]),

    AnimatedCall('(From offset lines) "Z" Swap Around',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-1.5,y:2,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1.5,y:0,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1.5,y:-2,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-1.5,y:-4,angle:0),
  ]),
      group:'(From offset lines)',
      paths:[
          FlipRight,

          ExtendLeft.changeBeats(3).scale(3.0,2.0),

          FlipRight,

          ExtendLeft.changeBeats(3).scale(3.0,2.0)
      ]),

    AnimatedCall('(From offset lines) "Z" Walk and Dodge',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-1.5,y:2,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1.5,y:0,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-1.5,y:-2,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-1.5,y:-4,angle:180),
  ]),
      group:'(From offset lines)',
      paths:[
          ExtendLeft.changeBeats(3).scale(3.0,2.0),

          DodgeRight,

          ExtendLeft.changeBeats(3).scale(3.0,2.0),

          DodgeRight
      ]),

    AnimatedCall('(From offset columns) "Z" Split Circulate',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:2,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:4,y:-1,angle:180),
  ]),
      group:'(From offset columns)',
      paths:[
          FlipRight.skew(2.0,0.0),

          Forward_2.changeBeats(3),

          FlipRight.skew(2.0,0.0),

          Forward_2.changeBeats(3)
      ]),

    AnimatedCall('(From offset columns) "Z" Split Counter Rotate',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:2,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:4,y:-1,angle:180),
  ]),
      group:'(From offset columns)',
      paths:[
          CounterRotateRight_0_m2.changeBeats(3).skew(2.0,-0.5),

          CounterRotateRight_2_0.changeBeats(3).skew(0.0,0.5),

          CounterRotateRight_2_0.changeBeats(3).skew(0.0,-2.5),

          CounterRotateRight_2_0.changeBeats(3).skew(0.0,0.5)
      ]),

    AnimatedCall('(From offset columns) "Z" Split Sidetrack',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:2,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:4,y:-1,angle:180),
  ]),
      group:'(From offset columns)',
      paths:[
          QuarterRight.skew(0.0,0.5) +
          CounterRotateRight_2_0.changeBeats(3).skew(0.5,2.0) +
          QuarterRight.skew(0.0,0.5),

          QuarterLeft.skew(0.0,0.5) +
          CounterRotateRight_0_m2.changeBeats(3).skew(-0.5,0.0) +
          QuarterRight.skew(0.0,0.5),

          QuarterRight.skew(0.0,0.5) +
          CounterRotateRight_2_0.changeBeats(3).skew(0.5,2.0) +
          QuarterRight.skew(0.0,0.5),

          QuarterLeft.skew(0.0,0.5) +
          CounterRotateRight_0_m2.changeBeats(3).skew(-0.5,0.0) +
          QuarterRight.skew(0.0,0.5)
      ]),

    AnimatedCall('(From offset columns) "Z" Walk and Dodge',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:2,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:4,y:-1,angle:180),
  ]),
      group:'(From offset columns)',
      paths:[
          ExtendRight.changeBeats(2).scale(2.0,2.0),

          Forward_2,

          ExtendRight.changeBeats(2).scale(2.0,2.0),

          Forward_2
      ]),
  ];

