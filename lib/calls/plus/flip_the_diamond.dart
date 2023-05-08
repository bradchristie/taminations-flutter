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

  final List<AnimatedCall> FlipTheDiamond = [

    AnimatedCall('Flip the Diamond',
      formation:Formation('Diamond RH'),
      from:'Right-Hand Diamond',difficulty: 1,
      paths:[
          RunRight,

          LeadRight.changeBeats(3).scale(3.0,1.0)
      ]),

    AnimatedCall('Flip the Diamond',
      formation:Formation('Diamond LH'),
      from:'Left-Hand Diamond',difficulty: 2,
      paths:[
          RunLeft,

          LeadLeft.changeBeats(3).scale(3.0,1.0)
      ]),

    AnimatedCall('Flip the Diamond',
      formation:Formation('Diamond Facing RH'),
      from:'Facing Diamond',difficulty: 2,
      paths:[
          FlipLeft,

          LeadRight.changeBeats(3).scale(3.0,1.0)
      ]),

    AnimatedCall('Flip the Diamond',
      formation:Formation('Diamond Facing'),
      from:'Facing Diamond, Left-Hand Centers',difficulty: 2,
      paths:[
          FlipRight,

          LeadLeft.changeBeats(3).scale(3.0,1.0)
      ]),

    AnimatedCall('Flip the Diamond',
      formation:Formation('Diamonds RH Girl Points'),
      from:'Right-Hand Diamonds',difficulty: 1,
      paths:[
          LeadRight.changeBeats(3).scale(3.0,1.0),

          RunRight,

          LeadRight.changeBeats(3).scale(3.0,1.0),

          RunRight
      ]),

    AnimatedCall('Flip the Diamond',
      formation:Formation('Diamonds LH Girl Points'),
      from:'Left-Hand Diamonds',difficulty: 2,
      paths:[
          LeadLeft.changeBeats(3).scale(3.0,1.0),

          RunLeft,

          LeadLeft.changeBeats(3).scale(3.0,1.0),

          RunLeft
      ]),

    AnimatedCall('Flip the Diamond',
      formation:Formation('Diamonds Facing Girl Points'),
      from:'Facing Diamonds, Right-Hand Wave',difficulty: 2,
      paths:[
          Forward_2 +
          LeadRight,

          FlipLeft,

          Forward_2 +
          LeadRight,

          FlipLeft
      ]),

    AnimatedCall('Flip the Diamond',
      formation:Formation('Diamonds Facing LH Girl Points'),
      from:'Facing Diamonds, Left-Hand Wave',difficulty: 2,
      taminator: '''
    The points take the inside path, even though they pass left shoulders
    with the centers.
    ''',
      paths:[
          Forward_2 +
          LeadLeft,

          FlipRight,

          Forward_2 +
          LeadLeft,

          FlipRight
      ]),

    AnimatedCall('Flip the Diamond',
      formation:Formation('Diamonds 3 and 1 Girl Points'),
      from:'Right-Hand Wave, Points Facing Out',difficulty: 2,
      paths:[
          Forward_2 +
          LeadRight,

          FlipLeft,

          Forward_2 +
          LeadRight,

          FlipRight
      ]),

    AnimatedCall('Flip the Diamond',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-2,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:-2,angle:90),
  ]),
      from:'Right-Hand Wave, Points Facing In',difficulty: 2,
      paths:[
          Forward_2 +
          LeadRight,

          FlipRight,

          Forward_2 +
          LeadRight,

          FlipLeft
      ]),

    AnimatedCall('Flip the Diamond',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-2,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:-2,angle:270),
  ]),
      from:'Left-Hand Wave, Points Facing Out',difficulty: 2,
      paths:[
          Forward_2 +
          LeadLeft,

          FlipLeft,

          Forward_2 +
          LeadLeft,

          FlipRight
      ]),

    AnimatedCall('Flip the Diamond',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-2,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:-2,angle:90),
  ]),
      from:'Left-Hand Wave, Points Facing In',difficulty: 2,
      paths:[
          Forward_2 +
          LeadLeft,

          FlipRight,

          Forward_2 +
          LeadLeft,

          FlipLeft
      ]),

    AnimatedCall('Flip the Diamond',
      formation:Formation('Diamonds RH PTP Girl Points'),
      from:'Point-to-Point Diamonds',difficulty: 2,
      paths:[
          LeadRight.changeBeats(3).scale(2.5,1.0),

          RunRight.scale(0.5,0.25),

          LeadRight.changeBeats(3).scale(0.5,1.0),

          RunRight.scale(1.0,1.25)
      ]),

    AnimatedCall('Flip the Diamond',
      formation:Formation('Diamonds LH PTP Girl Points'),
      from:'Left-Hand Point-to-Point Diamonds',difficulty: 2,
      paths:[
          LeadLeft.changeBeats(3).scale(0.5,1.0),

          RunLeft.scale(0.5,0.25),

          LeadLeft.changeBeats(3).scale(2.5,1.0),

          RunLeft.scale(1.0,1.25)
      ]),

    AnimatedCall('Flip the Diamond',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:-3,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-5,angle:0),
  ]),
      from:'Facing Point-to-Point Diamonds, Right-Hand Centers',difficulty: 2,
      paths:[
          LeadRight.changeBeats(3).scale(2.5,1.0),

          FlipLeft.scale(0.5,0.25),

          LeadRight.changeBeats(3).scale(0.5,1.0),

          FlipLeft.scale(0.5,1.25)
      ]),

    AnimatedCall('Flip the Diamond',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:-3,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-5,angle:180),
  ]),
      from:'Facing Point-to-Point Diamonds, Left-Hand Centers',difficulty: 2,
      paths:[
          LeadLeft.changeBeats(3).scale(0.5,1.0),

          FlipRight.scale(0.5,0.25),

          LeadLeft.changeBeats(3).scale(2.5,1.0),

          FlipRight.scale(0.5,1.25)
      ]),

    AnimatedCall('Flip the Diamond',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:-3,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-5,angle:180),
  ]),
      from:'Point-to-Point Diamonds 3',difficulty: 2,
      paths:[
          LeadRight.changeBeats(3).scale(2.5,1.0),

          FlipLeft.scale(0.5,0.25),

          LeadRight.changeBeats(3).scale(0.5,1.0),

          RunRight.scale(0.5,1.25)
      ]),

    AnimatedCall('Flip the Diamond',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:-3,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-5,angle:0),
  ]),
      from:'Point-to-Point Diamonds 4',difficulty: 2,
      paths:[
          LeadRight.changeBeats(3).scale(2.5,1.0),

          FlipRight.scale(0.5,0.25),

          LeadRight.changeBeats(3).skew(-0.5,0.0),

          FlipLeft.scale(1.0,1.25)
      ]),

    AnimatedCall('Flip the Diamond',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:-3,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-5,angle:0),
  ]),
      from:'Point-to-Point Diamonds 5',difficulty: 2,
      paths:[
          LeadLeft.changeBeats(3).scale(0.5,1.0),

          FlipRight.scale(0.5,0.25),

          LeadLeft.changeBeats(3).scale(2.5,1.0),

          RunLeft.scale(1.0,1.25)
      ]),

    AnimatedCall('Flip the Diamond',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:-3,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-5,angle:180),
  ]),
      from:'Point-to-Point Diamonds 6',difficulty: 2,
      paths:[
          LeadLeft.changeBeats(3).scale(2.0,1.0).skew(-1.5,0.0),

          FlipLeft.scale(0.5,0.25),

          LeadLeft.changeBeats(3).scale(2.5,1.0),

          FlipRight.scale(1.0,1.25)
      ]),
  ];

