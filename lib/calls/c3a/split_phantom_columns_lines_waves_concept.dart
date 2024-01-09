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

  final List<AnimatedCall> SplitPhantomColumnsLinesWavesConcept = [

    AnimatedCall('Split Phantom Columns Triple Cross',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:3,y:1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.PHANTOM,x:3,y:3,angle:0),
        DancerModel.fromData(gender:Gender.PHANTOM,x:-3,y:3,angle:0),
        DancerModel.fromData(gender:Gender.PHANTOM,x:1,y:3,angle:0),
        DancerModel.fromData(gender:Gender.PHANTOM,x:-1,y:3,angle:0),
  ]),
      group:'Split Phantom Columns',
      paths:[
          ExtendRight.changeBeats(2).scale(2.0,2.0),

          ExtendRight.changeBeats(2).scale(2.0,2.0),

          Path(),

          ExtendRight.changeBeats(2).scale(2.0,2.0),

          Path(),

          ExtendRight.changeBeats(2).scale(2.0,2.0),

          ExtendRight.changeBeats(2).scale(2.0,2.0),

          ExtendRight.changeBeats(2).scale(2.0,2.0)
      ]),

    AnimatedCall('Split Phantom Columns Something New',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:3,y:1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.PHANTOM,x:3,y:3,angle:0),
        DancerModel.fromData(gender:Gender.PHANTOM,x:-3,y:3,angle:0),
        DancerModel.fromData(gender:Gender.PHANTOM,x:1,y:3,angle:0),
        DancerModel.fromData(gender:Gender.PHANTOM,x:-1,y:3,angle:0),
  ]),
      group:'Split Phantom Columns',
      paths:[
          ExtendLeft.changeBeats(3).scale(3.0,0.5),

          UmTurnRight.changeBeats(3).skew(1.0,-0.5),

          RunRight.scale(0.5,0.75),

          UmTurnRight.changeBeats(3).skew(2.0,-0.5),

          RunRight.scale(0.5,0.75),

          ExtendLeft.changeBeats(3).scale(3.0,0.5),

          UmTurnRight.changeBeats(3).skew(2.0,-0.5),

          UmTurnRight.changeBeats(3).skew(1.0,-0.5)
      ]),

    AnimatedCall('Split Phantom Lines Acey Deucey',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:3,y:1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-3,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.PHANTOM,x:3,y:3,angle:180),
        DancerModel.fromData(gender:Gender.PHANTOM,x:-3,y:3,angle:180),
        DancerModel.fromData(gender:Gender.PHANTOM,x:1,y:3,angle:180),
        DancerModel.fromData(gender:Gender.PHANTOM,x:-3,y:1,angle:180),
  ]),
      group:'Split Phantom Lines',
      paths:[
          SwingLeft.scale(0.5,1.0),

          SwingLeft.scale(0.5,1.0),

          Forward_2.changeBeats(3),

          SwingLeft.scale(0.5,1.0),

          Forward_2.changeBeats(3),

          RunLeft.scale(2.0,3.0),

          RunLeft.scale(2.0,3.0),

          SwingLeft.scale(0.5,1.0)
      ]),

    AnimatedCall('Split Phantom Lines Load the Boat',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:1,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-3,angle:0),
        DancerModel.fromData(gender:Gender.PHANTOM,x:3,y:3,angle:180),
        DancerModel.fromData(gender:Gender.PHANTOM,x:3,y:1,angle:180),
        DancerModel.fromData(gender:Gender.PHANTOM,x:3,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.PHANTOM,x:3,y:-3,angle:180),
  ]),
      group:'Split Phantom Lines',
      paths:[
          Forward_2 +
          LeadRight.changeBeats(3).scale(2.0,3.0) +
          LeadRight.changeBeats(3).scale(3.0,2.0) +
          QuarterRight.changeBeats(2).skew(2.0,0.0),

          Forward_2 +
          QuarterLeft +
          FlipLeft +
          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5),

          Forward_2 +
          QuarterRight +
          FlipRight +
          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5),

          Forward_2 +
          LeadLeft.changeBeats(3).scale(1.0,3.0) +
          LeadLeft.changeBeats(3).scale(3.0,1.0) +
          QuarterLeft.changeBeats(2).skew(2.0,0.0),

          Forward_2 +
          LeadLeft.changeBeats(3).scale(1.0,3.0) +
          LeadLeft.changeBeats(3).scale(3.0,1.0) +
          QuarterLeft.changeBeats(2).skew(2.0,0.0),

          Forward_2 +
          QuarterRight +
          FlipRight +
          Forward_2,

          Forward_2 +
          QuarterLeft +
          FlipLeft +
          Forward_2,

          Forward_2 +
          LeadRight.changeBeats(3).scale(1.0,3.0) +
          LeadRight.changeBeats(3).scale(3.0,1.0) +
          QuarterRight.changeBeats(2).skew(2.0,0.0)
      ]),

    AnimatedCall('Split Phantom Waves In Roll Circulate',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:1,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-3,angle:180),
        DancerModel.fromData(gender:Gender.PHANTOM,x:3,y:3,angle:0),
        DancerModel.fromData(gender:Gender.PHANTOM,x:3,y:1,angle:180),
        DancerModel.fromData(gender:Gender.PHANTOM,x:3,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.PHANTOM,x:3,y:-3,angle:180),
  ]),
      group:'Split Phantom Waves',
      paths:[
          Forward_2.changeBeats(3),

          FlipRight,

          FlipLeft,

          FlipRight,

          FlipRight,

          FlipLeft,

          FlipRight,

          Forward_2.changeBeats(3)
      ]),

    AnimatedCall('Split Phantom Waves Split Counter Rotate',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:1,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-3,angle:180),
        DancerModel.fromData(gender:Gender.PHANTOM,x:3,y:3,angle:0),
        DancerModel.fromData(gender:Gender.PHANTOM,x:3,y:1,angle:180),
        DancerModel.fromData(gender:Gender.PHANTOM,x:3,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.PHANTOM,x:3,y:-3,angle:180),
  ]),
      group:'Split Phantom Waves',
      paths:[
          CounterRotateRight_2_0.changehands(Hands.RIGHT),

          CounterRotateRight_0_m2.changehands(Hands.RIGHT),

          CounterRotateRight_2_0.changehands(Hands.RIGHT),

          CounterRotateRight_0_m2.changehands(Hands.RIGHT),

          CounterRotateRight_0_m2.changehands(Hands.RIGHT),

          CounterRotateRight_2_0.changehands(Hands.RIGHT),

          CounterRotateRight_0_m2.changehands(Hands.RIGHT),

          CounterRotateRight_2_0.changehands(Hands.RIGHT)
      ]),
  ];

