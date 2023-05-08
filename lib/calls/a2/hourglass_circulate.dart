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

  final List<AnimatedCall> HourglassCirculate = [

    AnimatedCall('Hourglass Circulate',
      formation:Formation('Hourglass RH BP'),
      from:'Right-Hand Hourglass',
      paths:[
          LeadRight.changeBeats(4).scale(1.0,3.0),

          LeadRight.changeBeats(4).scale(3.0,1.0),

          ExtendRight.changeBeats(4).scale(2.0,2.0),

          ExtendLeft.changeBeats(4).scale(2.0,2.0)
      ]),

    AnimatedCall('Hourglass Circulate',
      formation:Formation('Hourglass LH BP'),
      from:'Left-Hand Hourglass',
      paths:[
          ExtendLeft.changeBeats(4).scale(2.0,2.0),

          LeadLeft.changeBeats(4).scale(3.0,1.0),

          LeadLeft.changeBeats(4).scale(1.0,3.0),

          ExtendRight.changeBeats(4).scale(2.0,2.0)
      ]),

    AnimatedCall('Hourglass Circulate',
      formation:Formation('Hourglass Facing LH Box'),
      from:'Facing Hourglass, Left-Hand Box',
      taminator: '''
    All dancers pass right shoulders.
    ''',
      paths:[
          ExtendLeft.changeBeats(3).scale(1.0,2.0) +
          Forward,

          Forward_2.changeBeats(2.7) +
          LeadRight.changeBeats(1.3),

          QuarterLeft.changeBeats(2.7).skew(0.0,2.0) +
          ExtendRight.changeBeats(1.3),

          ExtendLeft.changeBeats(3).scale(1.0,2.0) +
          Forward
      ]),

    AnimatedCall('Hourglass Circulate',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:2,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:3,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:3,y:2,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:0,angle:90),
  ]),
      from:'Facing Hourglass, Right-Hand Box',
      paths:[
          LeadRight.changeBeats(1.5) +
          Forward_2.changeBeats(2.5),

          ExtendLeft.changeBeats(1.5) +
          QuarterLeft.changeBeats(2.5).skew(2.0,0.0),

          Forward.changeBeats(1.3) +
          ExtendRight.changeBeats(2.7).scale(1.0,2.0),

          Forward.changeBeats(1.3) +
          ExtendRight.changeBeats(2.7).scale(1.0,2.0)
      ]),

    AnimatedCall('Big Hourglass Circulate',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:2,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:5,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:3,y:2,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:0,angle:270),
  ]),
      from:'Big Right-Hand Hourglass',noDisplay: true,
      paths:[
          LeadRight.changeBeats(4).scale(3.0,3.0),

          LeadRight.changeBeats(4).scale(3.0,3.0),

          Forward.changeBeats(1.3) +
          ExtendRight.changeBeats(2.7).scale(1.0,2.0),

          Forward.changeBeats(1.3) +
          ExtendLeft.changeBeats(2.7).scale(1.0,2.0)
      ]),

    AnimatedCall('Big Hourglass Circulate',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:2,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:5,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:3,y:2,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:0,angle:90),
  ]),
      from:'Big Left-Hand Hourglass',noDisplay: true,
      paths:[
          Forward.changeBeats(1.3) +
          ExtendLeft.changeBeats(2.7).scale(1.0,2.0),

          LeadLeft.changeBeats(4).scale(3.0,3.0),

          LeadLeft.changeBeats(4).scale(3.0,3.0),

          Forward.changeBeats(1.3) +
          ExtendRight.changeBeats(2.7).scale(1.0,2.0)
      ]),

    AnimatedCall('Cut the Hourglass',
      formation:Formation('Hourglass RH GP'),
      from:'Right-Hand Hourglass',
      paths:[
          DodgeRight +
          SwingRight,

          Forward_2 +
          LeadRight,

          DodgeRight +
          SwingRight,

          ExtendLeft.changeBeats(4).scale(2.0,2.0)
      ]),

    AnimatedCall('Cut the Hourglass',
      formation:Formation('Hourglass LH BP'),
      from:'Left-Hand Hourglass',
      paths:[
          DodgeLeft +
          SwingLeft,

          Forward_2 +
          LeadLeft,

          DodgeLeft +
          SwingLeft,

          ExtendRight.changeBeats(4).scale(2.0,2.0)
      ]),

    AnimatedCall('Cut the Hourglass',
      formation:Formation('Hourglass Facing LH Box'),
      from:'Facing Hourglass with Right-Hand Diamond',
      paths:[
          DodgeLeft +
          SwingLeft,

          Forward_2 +
          LeadRight,

          DodgeLeft +
          SwingLeft,

          ExtendLeft.changeBeats(4).scale(2.0,2.0)
      ]),

    AnimatedCall('Cut the Hourglass',
      formation:Formation('Hourglass Facing RH Box'),
      from:'Facing Hourglass with Left-Hand Diamond',
      paths:[
          DodgeRight +
          SwingRight,

          Forward_2 +
          LeadLeft,

          DodgeRight +
          SwingRight,

          ExtendRight.changeBeats(4).scale(2.0,2.0)
      ]),

    AnimatedCall('Cut the Hourglass',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:0,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:1,angle:0),
  ]),
      from:'Hourglass Box Facing Out',
      paths:[
          DodgeRight +
          RunRight,

          Forward_2 +
          LeadRight,

          DodgeLeft +
          FlipLeft,

          ExtendLeft.changeBeats(4).scale(2.0,2.0)
      ]),

    AnimatedCall('Cut the Hourglass',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:0,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:1,angle:0),
  ]),
      from:'Hourglass Box Facing In',
      paths:[
          DodgeLeft +
          FlipLeft,

          Forward_2 +
          LeadRight,

          DodgeRight +
          RunRight,

          ExtendLeft.changeBeats(4).scale(2.0,2.0)
      ]),

    AnimatedCall('Cut the Hourglass',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:0,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:1,angle:180),
  ]),
      from:'Hourglass Box 2 Facing Out',noDisplay: true,
      paths:[
          DodgeRight +
          RunRight,

          Forward_2 +
          LeadLeft,

          DodgeLeft +
          FlipLeft,

          ExtendRight.changeBeats(4).scale(2.0,2.0)
      ]),

    AnimatedCall('Cut the Hourglass',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:0,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:1,angle:180),
  ]),
      from:'Hourglass Box 2 Facing In',noDisplay: true,
      paths:[
          DodgeLeft +
          FlipLeft,

          Forward_2 +
          LeadLeft,

          DodgeRight +
          RunRight,

          ExtendRight.changeBeats(4).scale(2.0,2.0)
      ]),

    AnimatedCall('Flip the Hourglass',
      formation:Formation('Hourglass RH BP'),
      from:'Right-Hand Hourglass',
      paths:[
          FlipRight,

          Forward_2 +
          LeadRight,

          FlipRight,

          ExtendLeft.changeBeats(4).scale(2.0,2.0)
      ]),

    AnimatedCall('Flip the Hourglass',
      formation:Formation('Hourglass LH BP'),
      from:'Left-Hand Hourglass',
      paths:[
          FlipLeft,

          Forward_2 +
          LeadLeft,

          FlipLeft,

          ExtendRight.changeBeats(4).scale(2.0,2.0)
      ]),

    AnimatedCall('Flip the Hourglass',
      formation:Formation('Hourglass Facing LH Box'),
      from:'Facing Hourglass with Right-Hand Diamond',
      paths:[
          FlipLeft.changeBeats(4),

          Forward_2 +
          LeadRight,

          FlipLeft.changeBeats(4),

          ExtendLeft.changeBeats(4).scale(2.0,2.0)
      ]),

    AnimatedCall('Flip the Hourglass',
      formation:Formation('Hourglass Facing RH Box'),
      from:'Facing Hourglass with Left-Hand Diamond',
      paths:[
          FlipRight.changeBeats(4),

          Forward_2 +
          LeadLeft,

          FlipRight.changeBeats(4),

          ExtendRight.changeBeats(4).scale(2.0,2.0)
      ]),

    AnimatedCall('Flip the Hourglass',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:0,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:1,angle:0),
  ]),
      from:'Hourglass Box Facing Out',
      paths:[
          FlipRight.changeBeats(4),

          Forward_2 +
          LeadRight.changeBeats(2),

          FlipLeft.changeBeats(4),

          ExtendLeft.changeBeats(4).scale(2.0,2.0)
      ]),

    AnimatedCall('Flip the Hourglass',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:0,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:1,angle:0),
  ]),
      from:'Hourglass Box Facing In',
      paths:[
          FlipLeft.changeBeats(4),

          Forward_2 +
          LeadRight,

          FlipRight.changeBeats(4),

          ExtendLeft.changeBeats(4).scale(2.0,2.0)
      ]),

    AnimatedCall('Flip the Hourglass',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:0,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:1,angle:180),
  ]),
      from:'Hourglass Box 2 Facing Out',noDisplay: true,
      paths:[
          FlipRight.changeBeats(4),

          Forward_2 +
          LeadLeft,

          FlipLeft.changeBeats(4),

          ExtendRight.changeBeats(4).scale(2.0,2.0)
      ]),

    AnimatedCall('Flip the Hourglass',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:0,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:1,angle:180),
  ]),
      from:'Hourglass Box 2 Facing In',noDisplay: true,
      paths:[
          FlipLeft.changeBeats(4),

          Forward_2 +
          LeadLeft,

          FlipRight.changeBeats(4),

          ExtendRight.changeBeats(4).scale(2.0,2.0)
      ]),

    AnimatedCall('Flip the Hourglass and Roll',
      formation:Formation('Hourglass RH BP'),
      group:' ',
      taminator: '''
      Note that the very centers do not Roll
    ''',
      paths:[
          FlipRight +
          QuarterRight.skew(1.0,0.0),

          Forward_2 +
          LeadRight +
          QuarterRight.skew(1.0,0.0),

          FlipRight +
          QuarterRight.skew(-1.0,0.0),

          ExtendLeft.changeBeats(4).scale(1.0,2.0)
      ]),
  ];

