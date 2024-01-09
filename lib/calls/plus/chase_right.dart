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

  final List<AnimatedCall> ChaseRight = [

    AnimatedCall('Chase Right',
      formation:Formation('Couples Facing Out Compact'),
      from:'Couples Facing Out',difficulty: 1,
      paths:[
          UmTurnRight.changeBeats(1.5).skew(-.5,0.0) +
          Forward_2 +
          RunRight.changeBeats(2.5).skew(.5,0.0),

          RunRight.changeBeats(2.5) +
          Forward_3.changeBeats(3.5)
      ]),

    AnimatedCall('Chase Right',
      formation:Formation('Couples Facing Out Far'),
      from:'Couples Facing Out Far',difficulty: 1,noDisplay: true,
      paths:[
          UmTurnRight.changeBeats(1.5).skew(-1.0,0.0) +
          Forward_4 +
          RunRight.changeBeats(2.5).skew(1.0,0.0),

          RunRight.changeBeats(2.5) +
          Forward_6.changeBeats(5.5)
      ]),

    AnimatedCall('Chase Right',
      formation:Formation('Lines Facing Out'),
      from:'Lines Facing Out',difficulty: 1,
      paths:[
          UmTurnRight.changeBeats(1.5).skew(-1.0,0.0) +
          Forward_2 +
          RunRight.changeBeats(2.5).skew(1.0,0.0),

          RunRight.changeBeats(2.5) +
          Forward_4.changeBeats(3.5),

          UmTurnRight.changeBeats(1.5).skew(-1.0,0.0) +
          Forward_2 +
          RunRight.changeBeats(2.5).skew(1.0,0.0),

          RunRight.changeBeats(2.5) +
          Forward_4.changeBeats(3.5)
      ]),

    AnimatedCall('Chase Right',
      formation:Formation('Trade By'),
      from:'Trade By',difficulty: 2,
      paths:[
          UmTurnRight.changeBeats(1.5) +
          Forward_2 +
          FlipRight.changeBeats(1.5),

          RunRight +
          Forward_2,

          UmTurnRight.changeBeats(1.5) +
          Forward_2 +
          FlipRight.changeBeats(1.5),

          FlipRight +
          Forward_2
      ]),

    AnimatedCall('Chase Right',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:0),
  ]),
      from:'T-Bones 1',difficulty: 3,
      paths:[
          RunRight +
          Forward_2,

          RunRight +
          Forward_2,

          RunRight +
          Forward_2,

          RunRight.scale(0.5,1.0) +
          Forward_2
      ]),

    AnimatedCall('Chase Right',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:90),
  ]),
      from:'T-Bones 2',difficulty: 3,
      paths:[
          UmTurnRight.changeBeats(1.5).skew(-1.0,0.0) +
          Forward +
          RunRight.changeBeats(2.5).scale(0.5,1.0),

          UmTurnRight.changeBeats(1.5).skew(-1.0,0.0) +
          Forward +
          RunRight.changeBeats(2.5).scale(0.5,1.0),

          UmTurnRight.changeBeats(1.5).skew(-1.0,0.0) +
          Forward +
          RunRight.changeBeats(2.5).scale(0.5,1.0),

          UmTurnRight.changeBeats(1.5).skew(-1.0,0.0) +
          Forward +
          RunRight.changeBeats(2.5).scale(0.5,1.0)
      ]),

    AnimatedCall('Chase Right',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:1,angle:90),
  ]),
      from:'T-Bones 3',difficulty: 3,
      paths:[
          RunRight.scale(0.5,1.0) +
          Forward_2,

          UmTurnRight.changeBeats(1.5).skew(-1.0,0.0) +
          Forward +
          RunRight.changeBeats(2.5).scale(0.5,1.0),

          UmTurnRight.changeBeats(1.5).skew(-1.0,0.0) +
          Forward +
          RunRight.changeBeats(2.5).scale(0.5,1.0),

          RunRight +
          Forward_2
      ]),

    AnimatedCall('Left Chase',
      formation:Formation('Couples Facing Out Compact'),
      from:'Couples Facing Out',difficulty: 2,
        paths:[
          RunLeft.changeBeats(2.5) +
              Forward_3.changeBeats(3.5),

          UmTurnLeft.changeBeats(1.5).skew(-.5,0.0) +
              Forward_2 +
              RunLeft.changeBeats(2.5).skew(.5,0.0)
        ]),

    AnimatedCall('Left Chase',
      formation:Formation('Couples Facing Out Far'),
      from:'Couples Facing Out Far',difficulty: 2,noDisplay: true,
      paths:[
          RunLeft +
          Forward_6.changeBeats(5),

          UmTurnLeft.changeBeats(1.5) +
          Forward_6.changeBeats(5) +
          FlipLeft.changeBeats(1.5)
      ]),

    AnimatedCall('Left Chase',
      formation:Formation('Lines Facing Out'),
      from:'Lines Facing Out',difficulty: 2,
      paths:[
          RunLeft +
          Forward_4.changeBeats(3),

          UmTurnLeft.changeBeats(1.5) +
          Forward_4.changeBeats(3) +
          FlipLeft.changeBeats(1.5),

          RunLeft +
          Forward_4.changeBeats(3),

          UmTurnLeft.changeBeats(1.5) +
          Forward_4.changeBeats(3) +
          FlipLeft.changeBeats(1.5)
      ]),

    AnimatedCall('Left Chase',
      formation:Formation('Trade By'),
      from:'Trade By',difficulty: 2,
      paths:[
          RunLeft +
          Forward_2,

          UmTurnLeft.changeBeats(1.5) +
          Forward_2 +
          FlipLeft.changeBeats(1.5),

          FlipLeft +
          Forward_2,

          UmTurnLeft.changeBeats(1.5) +
          Forward_2 +
          FlipLeft.changeBeats(1.5)
      ]),

    AnimatedCall('Left Chase',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:0),
  ]),
      from:'T-Bones 1',difficulty: 3,
      paths:[
          UmTurnLeft.changeBeats(1.5).skew(-1.0,0.0) +
          Forward +
          RunLeft.changeBeats(2.5).scale(0.5,1.0),

          UmTurnLeft.changeBeats(1.5).skew(-1.0,0.0) +
          Forward +
          RunLeft.changeBeats(2.5).scale(0.5,1.0),

          UmTurnLeft.changeBeats(1.5).skew(-1.0,0.0) +
          Forward +
          RunLeft.changeBeats(2.5).scale(0.5,1.0),

          UmTurnLeft.changeBeats(1.5).skew(-1.0,0.0) +
          Forward +
          RunLeft.changeBeats(2.5).scale(0.5,1.0)
      ]),

    AnimatedCall('Left Chase',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:90),
  ]),
      from:'T-Bones 2',difficulty: 3,
      paths:[
          RunLeft +
          Forward_2,

          RunLeft +
          Forward_2,

          RunLeft.scale(0.5,1.0) +
          Forward_2,

          RunLeft +
          Forward_2
      ]),

    AnimatedCall('Left Chase',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:1,angle:90),
  ]),
      from:'T-Bones 3',difficulty: 3,
      paths:[
          UmTurnLeft.changeBeats(1.5).skew(-1.0,0.0) +
          Forward +
          RunLeft.changeBeats(2.5).scale(0.5,1.0),

          RunLeft +
          Forward_2,

          RunLeft.scale(0.5,1.0) +
          Forward_2,

          UmTurnLeft.changeBeats(1.5).skew(-1.0,0.0) +
          Forward +
          RunLeft.changeBeats(2.5).scale(0.5,1.0)
      ]),
  ];

