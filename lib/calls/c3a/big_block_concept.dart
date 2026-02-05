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

  final List<AnimatedCall> BigBlockConcept = [

    AnimatedCall('Big Block Circulate',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:-3,y:1,angle:180),
        Dancer.fromData(gender:Gender.GIRL,x:-3,y:-3,angle:180),
        Dancer.fromData(gender:Gender.BOY,x:-1,y:3,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:0),
  ]),
      group:'Big Block',
      paths:[
          RunLeft +
          Forward_2,

          RunRight.changeBeats(5).scale(2.0,3.0) +
          Forward_2,

          Forward_4,

          Forward_4
      ]),

    AnimatedCall('Big Block Counter Rotate',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:3,y:3,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:1,y:1,angle:180),
        Dancer.fromData(gender:Gender.BOY,x:1,y:-3,angle:180),
        Dancer.fromData(gender:Gender.GIRL,x:3,y:-1,angle:0),
  ]),
      group:'Big Block',
      paths:[
          Back_2 +
          CounterRotateRight_2_m4.changeBeats(4),

          Stand.changeBeats(2) +
          CounterRotateLeft_2_0.changeBeats(4).changehands(Hands.LEFT) +
          Back_2,

          Stand.changeBeats(2) +
          CounterRotateRight_4_m2.changeBeats(4) +
          Back_2,

          Back_2 +
          CounterRotateLeft_0_2.changeBeats(4).changehands(Hands.LEFT)
      ]),

    AnimatedCall('Big Block Split Circulate',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:-3,y:1,angle:180),
        Dancer.fromData(gender:Gender.GIRL,x:-3,y:-3,angle:180),
        Dancer.fromData(gender:Gender.BOY,x:-1,y:3,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:0),
  ]),
      group:'Big Block',
      paths:[
          RunRight +
          Forward_2,

          RunRight +
          Forward_2,

          Forward_4,

          Forward_4
      ]),

    AnimatedCall('Big Block Split Counter Rotate',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:3,y:3,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:1,y:1,angle:180),
        Dancer.fromData(gender:Gender.BOY,x:1,y:-3,angle:180),
        Dancer.fromData(gender:Gender.GIRL,x:3,y:-1,angle:0),
  ]),
      group:'Big Block',
      paths:[
          CounterRotateRight_0_m2.changeBeats(4).skew(-2.0,0.0),

          CounterRotateRight_2_0.changeBeats(4).skew(2.0,0.0),

          CounterRotateRight_2_0.changeBeats(4).skew(2.0,0.0),

          CounterRotateRight_0_m2.changeBeats(4).skew(-2.0,0.0)
      ]),

    AnimatedCall('Big Block In Roll Circulate',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.GIRL,x:-3,y:1,angle:180),
        Dancer.fromData(gender:Gender.BOY,x:-3,y:-3,angle:180),
        Dancer.fromData(gender:Gender.GIRL,x:-1,y:3,angle:0),
        Dancer.fromData(gender:Gender.BOY,x:-1,y:-1,angle:0),
  ]),
      group:'Big Block',
      paths:[
          RunRight +
          Forward_2,

          RunRight +
          Forward_2,

          Forward_4,

          RunLeft.scale(0.5,1.0) +
          Forward_2
      ]),

    AnimatedCall('Big Block Trade Circulate',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:-3,y:-3,angle:180),
        Dancer.fromData(gender:Gender.GIRL,x:-1,y:1,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:-3,y:3,angle:0),
        Dancer.fromData(gender:Gender.BOY,x:-1,y:-1,angle:180),
  ]),
      group:'Big Block',
      paths:[
          RunRight.scale(0.6,0.9) +
          ExtendLeft_2.changeBeats(1).scale(1.0,0.1),

      Path.fromMovement(Movement.fromData(beats: 4, hands: Hands.NONE, cx1: 0, cy1: -1, cx2: 3.5, cy2: -4, x2: 4, y2: -4, cx3: 1, cx4: 1, cy4: -0.4, x4: 2, y4: -0.4  )),

      Path.fromMovement(Movement.fromData(beats: 4, hands: Hands.NONE, cx1: 4, cy1: 0, cx2: 3.5, cy2: -4, x2: 4, y2: -4, cx3: 1, cx4: 1, cy4: -0.4, x4: 2, y4: -0.4  )),

          ExtendLeft_2.changeBeats(1.5).scale(1.0,0.9) +
          RunLeft.scale(0.2,0.1)
      ]),
  ];

