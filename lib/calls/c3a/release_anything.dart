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

  final List<AnimatedCall> ReleaseAnything = [

    AnimatedCall('Release Ah So',
      formation:Formation('Quarter Tag'),
      group:'Release',fractions:'3',
      paths:[
          ExtendLeft.changeBeats(3).scale(3.0,2.0) +
          RunRight.changeBeats(6).changehands(Hands.RIGHT).scale(1.25,2.0).skew(1.0,0.0),

          Stand.changeBeats(3) +
          UmTurnRight.changeBeats(6).changehands(Hands.RIGHT),

          Forward_3 +
          RunRight.changeBeats(6).changehands(Hands.RIGHT).scale(1.5,2.0),

          Stand.changeBeats(3) +
          UmTurnRight.changeBeats(6).changehands(Hands.RIGHT).skew(-1.0,0.0)
      ]),

    AnimatedCall('Release Crossfire',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-3,angle:0),
  ]),
      group:'Release',fractions:'3',
      paths:[
          Stand.changeBeats(3) +
          RunLeft +
          Forward.scale(0.5,1.0),

          ExtendRight.changeBeats(3).scale(3.0,2.0) +
          RunLeft.changeBeats(4).scale(1.5,2.0).skew(0.75,0.0),

          Stand.changeBeats(3) +
          SwingLeft +
          Forward.scale(0.75,1.0),

          Forward_3 +
          RunLeft.changeBeats(4).scale(1.5,2.0).skew(1.0,0.0)
      ]),

    AnimatedCall('Release Cycle and Wheel',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:3,y:1,angle:180),
  ]),
      group:'Release',fractions:'3',
      paths:[
          Stand.changeBeats(3) +
          UmTurnRight.changeBeats(6).changehands(Hands.LEFT).skew(1.0,0.0),

          Forward_3 +
          RunRight.changeBeats(6).scale(1.5,2.0),

          ExtendLeft.changeBeats(3).scale(3.0,2.0) +
          RunRight.changeBeats(6).changehands(Hands.RIGHT).scale(1.5,2.0).skew(1.0,0.0),

          Stand.changeBeats(3) +
          UmTurnRight +
          UmTurnRight
      ]),

    AnimatedCall('Release Left Turn and Deal',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-3,angle:0),
  ]),
      group:'Release',fractions:'3',
      paths:[
          Stand.changeBeats(3) +
          FlipLeft,

          ExtendRight.changeBeats(3).scale(3.0,2.0) +
          FlipLeft.skew(1.0,0.0),

          Stand.changeBeats(3) +
          FlipLeft.skew(1.0,0.0),

          Forward_3 +
          FlipLeft
      ]),

    AnimatedCall('Release Linear Cycle',
      formation:Formation('Quarter Tag'),
      group:'Release',fractions:'3;1.5;3',
      paths:[
          ExtendLeft.changeBeats(3).scale(3.0,2.0) +
          HingeRight.scale(0.75,1.0) +
          Forward_3.scale(1.167,1.0) +
          RunRight.scale(0.75,0.75),

          Stand.changeBeats(3) +
          HingeRight.scale(0.75,1.0) +
          RunRight.scale(0.75,0.75) +
          Forward_2 +
          UmTurnRight.skew(1.5,0.0),

          Forward_3 +
          HingeRight.scale(0.75,1.0) +
          Forward_3.scale(1.167,1.0) +
          RunRight.scale(0.75,0.75),

          Stand.changeBeats(3) +
          HingeRight.scale(0.75,1.0) +
          RunRight.scale(0.75,0.75) +
          Forward_2 +
          UmTurnRight.skew(1.5,0.0)
      ]),

    AnimatedCall('Release Offset Waves Out Roll Circulate',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:3,y:1,angle:180),
  ]),
      group:'Release',fractions:'3',
      paths:[
          Stand.changeBeats(3) +
          Forward_2 +
          RunLeft.skew(1.0,0.0),

          Forward_3 +
          RunRight.changeBeats(4).scale(1.5,3.0).skew(-1.0,0.0) +
          Forward_2,

          ExtendLeft.changeBeats(3).scale(3.0,2.0) +
          FlipRight,

          Stand.changeBeats(3) +
          RunRight
      ]),

    AnimatedCall('Release Recycle',
      formation:Formation('Quarter Tag'),
      group:'Release',
      paths:[
          ExtendLeft.changeBeats(3).scale(3.0,2.0) +
          RunRight.changeBeats(4).skew(1.0,-2.0),

          Stand.changeBeats(3) +
          RunRight.changeBeats(2).scale(0.5,0.5) +
          RunRight.changeBeats(2).scale(0.5,0.5),

          Forward_3 +
          RunRight.changeBeats(4).skew(0.0,-2.0),

          Stand.changeBeats(3) +
          RunRight.changeBeats(2).scale(0.5,0.5).skew(-0.5,0.0) +
          RunRight.changeBeats(2).scale(0.5,0.5).skew(0.5,0.0)
      ]),
  ];

