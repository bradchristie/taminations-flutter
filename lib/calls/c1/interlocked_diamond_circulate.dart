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

  final List<AnimatedCall> InterlockedDiamondCirculate = [

    AnimatedCall('Interlocked Diamond Circulate',
      formation:Formation('Interlocked Diamonds RH Girl Points'),
      from:'Right-Hand Interlocked Diamonds',
      paths:[
          LeadRight.changeBeats(3).scale(3.0,1.0),

          Stand +
          LeadRight.changeBeats(2).scale(3.0,3.0),

          LeadRight.changeBeats(3).scale(3.0,3.0),

          LeadRight.changeBeats(3).scale(1.0,3.0)
      ]),

    AnimatedCall('Interlocked Diamond Circulate',
      formation:Formation('Interlocked Diamonds LH Girl Points'),
      from:'Left-Hand Interlocked Diamonds',
      paths:[
          LeadLeft.changeBeats(3).scale(3.0,1.0),

          LeadLeft.changeBeats(3).scale(1.0,3.0),

          LeadLeft.changeBeats(3).scale(3.0,3.0),

          Stand.changeBeats(1) +
          LeadLeft.changeBeats(3).scale(3.0,3.0)
      ]),

    AnimatedCall('Interlocked Diamond Circulate',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-2,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:-2,angle:90),
  ]),
      from:'Facing Interlocked Diamonds 1',
      paths:[
          LeadRightPassing.changeBeats(3).scale(3.0,1.0),

          LeadLeftPassing.changeBeats(3).scale(1.0,3.0),

          LeadRight.changeBeats(3).scale(3.0,3.0),

          LeadLeftPassing.changeBeats(3).scale(3.0,3.0)
      ]),

    AnimatedCall('Interlocked Diamond Circulate',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-2,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:-2,angle:270),
  ]),
      from:'Facing Interlocked Diamonds 2',
      paths:[
          LeadLeftPassing.changeBeats(3).scale(3.0,1.0),

          LeadRight.changeBeats(3).scale(3.0,3.0),

          LeadLeftPassing.changeBeats(3).scale(3.0,3.0),

          LeadRightPassing.changeBeats(3).scale(1.0,3.0)
      ]),

    AnimatedCall('Interlocked Diamond Circulate',
      formation:Formation('Interlocked Diamonds RH PTP Girl Points'),
      from:'Right-Hand Point-to-Point Interlocked Diamonds',
      paths:[
          LeadRight.changeBeats(4).scale(4.0,1.0),

          LeadRight.changeBeats(3).scale(1.0,4.0),

          LeadRight.changeBeats(3).scale(2.0,1.0),

          LeadRight.changeBeats(3).scale(1.0,2.0)
      ]),

    AnimatedCall('Interlocked Diamond Circulate',
      formation:Formation('Interlocked Diamonds LH PTP Girl Points'),
      from:'Left-Hand Point-to-Point Interlocked Diamonds',
      paths:[
          LeadLeft.changeBeats(3).scale(2.0,1.0),

          LeadLeft.changeBeats(3).scale(1.0,4.0),

          LeadLeft.changeBeats(4).scale(4.0,1.0),

          LeadLeft.changeBeats(3).scale(1.0,2.0)
      ]),

    AnimatedCall('Interlocked Diamond Circulate',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:-3,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-5,angle:0),
  ]),
      from:'Facing Interlocked Diamonds 3',
      paths:[
          LeadRightPassing.changeBeats(3).scale(4.0,1.0),

          LeadLeftPassing.changeBeats(3).scale(1.0,4.0),

          LeadRightPassing.changeBeats(3).scale(2.0,1.0),

          LeadLeftPassing.changeBeats(3).scale(1.0,2.0)
      ]),

    AnimatedCall('Interlocked Diamond Circulate',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:-3,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-5,angle:180),
  ]),
      from:'Facing Interlocked Diamonds 4',
      paths:[
          LeadLeftPassing.changeBeats(3).scale(2.0,1.0),

          LeadRightPassing.changeBeats(3).scale(1.0,4.0),

          LeadLeftPassing.changeBeats(3).scale(4.0,1.0),

          LeadRightPassing.changeBeats(3).scale(1.0,2.0)
      ]),

    AnimatedCall('Cut the Interlocked Diamond',
      formation:Formation('Interlocked Diamonds RH Girl Points'),
      from:'Right-Hand Interlocked Diamonds',
      paths:[
          LeadRight.changeBeats(4).scale(3.0,1.0),

          DodgeRight +
          SwingRight,

          LeadRight.changeBeats(4).scale(3.0,3.0),

          DodgeRight +
          SwingRight
      ]),

    AnimatedCall('Cut the Interlocked Diamond',
      formation:Formation('Interlocked Diamonds LH Girl Points'),
      from:'Left-Hand Interlocked Diamonds',
      paths:[
          LeadLeft.changeBeats(4).scale(3.0,1.0),

          DodgeLeft +
          SwingLeft,

          LeadLeft.changeBeats(4).scale(3.0,3.0),

          DodgeLeft +
          SwingLeft
      ]),

    AnimatedCall('Cut the Interlocked Diamond',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-2,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:-2,angle:90),
  ]),
      from:'Left-Hand Points, Right-Hand Centers',
      paths:[
          Forward_2 +
          LeadRight,

          DodgeLeft +
          SwingLeft,

          LeadRight.changeBeats(4).scale(3.0,3.0),

          DodgeLeft +
          SwingLeft
      ]),

    AnimatedCall('Cut the Interlocked Diamond',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-2,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:-2,angle:90),
  ]),
      from:'Points Facing In, Right-Hand Centers',
      paths:[
          Forward_2 +
          LeadRight,

          DodgeRight +
          RunRight,

          LeadRight.changeBeats(4).scale(3.0,3.0),

          DodgeLeft +
          FlipLeft
      ]),

    AnimatedCall('Cut the Interlocked Diamond',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-2,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:-2,angle:270),
  ]),
      from:'Points Facing Out, Right-Hand Centers',
      paths:[
          Forward_2 +
          LeadRight,

          DodgeLeft +
          FlipLeft,

          LeadRight.changeBeats(4).scale(3.0,3.0),

          DodgeRight +
          RunRight
      ]),

    AnimatedCall('Cut the Interlocked Diamond',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-2,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:-2,angle:270),
  ]),
      from:'Right-Hand Points, Left-Hand Centers',
      paths:[
          LeadLeft.changeBeats(3).scale(3.0,1.0),

          DodgeRight +
          SwingRight,

          LeadLeft.changeBeats(4).scale(3.0,3.0),

          DodgeRight +
          SwingRight
      ]),

    AnimatedCall('Cut the Interlocked Diamond',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-2,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:-2,angle:90),
  ]),
      from:'Points Facing In, Left-Hand Centers',
      paths:[
          LeadLeft.changeBeats(3).scale(3.0,1.0),

          DodgeRight +
          RunRight,

          LeadLeft.changeBeats(4).scale(3.0,3.0),

          DodgeLeft +
          FlipLeft
      ]),

    AnimatedCall('Cut the Interlocked Diamond',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-2,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:-2,angle:270),
  ]),
      from:'Points Facing Out, Left-Hand Centers',
      paths:[
          LeadLeft.changeBeats(3).scale(3.0,1.0),

          DodgeLeft +
          FlipLeft,

          LeadLeft.changeBeats(4).scale(3.0,3.0),

          DodgeRight +
          RunRight
      ]),

    AnimatedCall('Flip the Interlocked Diamond',
      formation:Formation('Interlocked Diamonds RH Girl Points'),
      from:'Right-Hand Interlocked Diamonds',
      paths:[
          LeadRight.changeBeats(2).scale(3.0,1.0),

          FlipRight,

          LeadRight.changeBeats(3).scale(3.0,3.0),

          FlipRight
      ]),

    AnimatedCall('Flip the Interlocked Diamond',
      formation:Formation('Interlocked Diamonds LH Girl Points'),
      from:'Left-Hand Interlocked Diamonds',
      paths:[
          LeadLeft.changeBeats(2).scale(3.0,1.0),

          FlipLeft,

          LeadLeft.changeBeats(3).scale(3.0,3.0),

          FlipLeft
      ]),

    AnimatedCall('Flip the Interlocked Diamond',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-2,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:-2,angle:90),
  ]),
      from:'Left-Hand Points, Right-Hand Centers',
      paths:[
          LeadRightPassing.changeBeats(3).scale(3.0,1.0),

          FlipLeft,

          LeadRight.changeBeats(3).scale(3.0,3.0),

          FlipLeft
      ]),

    AnimatedCall('Flip the Interlocked Diamond',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-2,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:-2,angle:90),
  ]),
      from:'Points Facing In, Right-Hand Centers',
      paths:[
          LeadRightPassing.changeBeats(3).scale(3.0,1.0),

          FlipRight,

          LeadRight.changeBeats(3).scale(3.0,3.0),

          FlipLeft
      ]),

    AnimatedCall('Flip the Interlocked Diamond',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-2,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:-2,angle:270),
  ]),
      from:'Points Facing Out, Right-Hand Centers',
      paths:[
          LeadRightPassing.changeBeats(3).scale(3.0,1.0),

          FlipLeft,

          LeadRight.changeBeats(3).scale(3.0,3.0),

          FlipRight
      ]),

    AnimatedCall('Flip the Interlocked Diamond',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-2,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:-2,angle:270),
  ]),
      from:'Right-Hand Points, Left-Hand Centers',
      paths:[
          LeadLeft.changeBeats(3).scale(3.0,1.0),

          FlipRight,

          LeadLeft.changeBeats(3).scale(3.0,3.0),

          FlipRight
      ]),

    AnimatedCall('Flip the Interlocked Diamond',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-2,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:-2,angle:90),
  ]),
      from:'Points Facing In, Left-Hand Centers',
      paths:[
          LeadLeft.changeBeats(3).scale(3.0,1.0),

          FlipRight,

          LeadLeft.changeBeats(3).scale(3.0,3.0),

          FlipLeft
      ]),

    AnimatedCall('Flip the Interlocked Diamond',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-2,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:-2,angle:270),
  ]),
      from:'Points Facing Out, Left-Hand Centers',
      paths:[
          LeadLeft.changeBeats(3).scale(3.0,1.0),

          FlipLeft,

          LeadLeft.changeBeats(3).scale(3.0,3.0),

          FlipRight
      ]),
  ];

