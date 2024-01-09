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

  final List<AnimatedCall> DiamondCirculate = [

    AnimatedCall('Diamond Circulate',
      formation:Formation('Diamond RH'),
      from:'Right-Hand Diamond',difficulty: 1,
      paths:[
          LeadRight.changeBeats(3).scale(1.0,3.0),

          LeadRight.changeBeats(3).scale(3.0,1.0)
      ]),

    AnimatedCall('Diamond Circulate',
      formation:Formation('Diamond LH'),
      from:'Left-Hand Diamond',difficulty: 1,
      paths:[
          LeadLeft.changeBeats(3).scale(1.0,3.0),

          LeadLeft.changeBeats(3).scale(3.0,1.0)
      ]),

    AnimatedCall('Diamond Circulate',
      formation:Formation('Diamond Facing RH'),
      from:'Facing Diamond, Right-Hand Centers',difficulty: 2,
      taminator: '''
    Note that dancers pass right shoulders.
    ''',
      paths:[
          LeadLeftPassing.changeBeats(3).scale(1.0,3.0),

          LeadRightPassing.changeBeats(3).scale(3.0,1.0)
      ]),

    AnimatedCall('Diamond Circulate',
      formation:Formation('Diamond Facing'),
      from:'Facing Diamond, Left-Hand Centers',difficulty: 2,
      taminator: '''
    Again, dancers pass right shoulders.
    Note that the flow is slightly different than the previous animation.
    ''',
      paths:[
          LeadRightPassing.changeBeats(3).scale(1.0,3.0),

          LeadLeftPassing.changeBeats(3).scale(3.0,1.0)
      ]),

    AnimatedCall('Diamond Circulate',
      formation:Formation('Diamonds RH Girl Points'),
      from:'Right-Hand Diamonds',difficulty: 1,
      paths:[
          LeadRight.changeBeats(3).scale(3.0,1.0),

          LeadRight.changeBeats(3).scale(1.0,3.0),

          LeadRight.changeBeats(3).scale(3.0,1.0),

          LeadRight.changeBeats(3).scale(1.0,3.0)
      ]),

    AnimatedCall('Diamond Circulate',
      formation:Formation('Diamonds LH Girl Points'),
      from:'Left-Hand Diamonds',difficulty: 1,
      taminator: '''
    The new points need to resist the temptation to turn around and
    point the right shoulder in.
    ''',
      paths:[
          LeadLeft.changeBeats(3).scale(3.0,1.0),

          LeadLeft.changeBeats(3).scale(1.0,3.0),

          LeadLeft.changeBeats(3).scale(3.0,1.0),

          LeadLeft.changeBeats(3).scale(1.0,3.0)
      ]),

    AnimatedCall('Diamond Circulate',
      formation:Formation('Diamonds Facing Girl Points'),
      from:'Facing Diamonds, Right-Hand Centers',difficulty: 2,
      paths:[
          LeadRightPassing.changeBeats(3).scale(3.0,1.0),

          LeadLeftPassing.changeBeats(3).scale(1.0,3.0),

          LeadRightPassing.changeBeats(3).scale(3.0,1.0),

          LeadLeftPassing.changeBeats(3).scale(1.0,3.0)
      ]),

    AnimatedCall('Diamond Circulate',
      formation:Formation('Diamonds Facing LH Girl Points'),
      from:'Facing Diamonds, Left-Hand Centers',difficulty: 2,
      paths:[
          LeadLeftPassing.changeBeats(3).scale(3.0,1.0),

          LeadRightPassing.changeBeats(3).scale(1.0,3.0),

          LeadLeftPassing.changeBeats(3).scale(3.0,1.0),

          LeadRightPassing.changeBeats(3).scale(1.0,3.0)
      ]),

    AnimatedCall('Diamond Circulate',
      formation:Formation('Diamonds RH PTP Girl Points'),
      from:'Right-Hand Point-to-Point Diamonds',difficulty: 2,
      taminator: '''
    Be careful to keep the Point-to-Point Diamonds formation.
    ''',
      paths:[
          LeadRight.changeBeats(3).scale(2.0,1.0),

          LeadRight.changeBeats(3).scale(1.0,2.0),

          LeadRight.changeBeats(3).scale(2.0,1.0),

          LeadRight.changeBeats(3).scale(1.0,2.0)
      ]),

    AnimatedCall('Diamond Circulate',
      formation:Formation('Diamonds LH PTP Girl Points'),
      from:'Left-Hand Point-to-Point Diamonds',difficulty: 2,
      paths:[
          LeadLeft.changeBeats(3).scale(2.0,1.0),

          LeadLeft.changeBeats(3).scale(1.0,2.0),

          LeadLeft.changeBeats(3).scale(2.0,1.0),

          LeadLeft.changeBeats(3).scale(1.0,2.0)
      ]),

    AnimatedCall('Diamond Circulate',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:-3,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-5,angle:0),
  ]),
      from:'Facing Point-to-Point Diamonds, Right-Hand Centers',difficulty: 2,
      paths:[
          LeadRightPassing.changeBeats(3).scale(2.0,1.0),

          LeadLeftPassing.changeBeats(3).scale(1.0,2.0),

          LeadRightPassing.changeBeats(3).scale(2.0,1.0),

          LeadLeftPassing.changeBeats(3).scale(1.0,2.0)
      ]),

    AnimatedCall('Diamond Circulate',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:-3,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-5,angle:180),
  ]),
      from:'Facing Point-to-Point Diamonds, Left-Hand Centers',difficulty: 2,
      paths:[
          LeadLeftPassing.changeBeats(3).scale(2.0,1.0),

          LeadRightPassing.changeBeats(3).scale(1.0,2.0),

          LeadLeftPassing.changeBeats(3).scale(2.0,1.0),

          LeadRightPassing.changeBeats(3).scale(1.0,2.0)
      ]),

    AnimatedCall('Diamond Circulate',
      formation:Formation('Diamonds 3 and 1'),
      from:'Diamonds with Center Two-Faced Line',difficulty: 3,
      taminator: '''
    In this case two dancers are circulating to the same spot.
    So the Same Position Rule applies and they join right hands.
    ''',
      paths:[
          ExtendLeft.changeBeats(1.5).scale(2.0,0.5) +
          LeadRight.changeBeats(1.5).scale(2.0,1.5),

          LeadLeft.changeBeats(3).scale(1.0,3.0),

          LeadLeft.changeBeats(3).scale(2.0,1.0),

          LeadLeft.changeBeats(3).scale(1.0,3.0)
      ]),

    AnimatedCall('Diamond Circulate',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-2,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:-2,angle:90),
  ]),
      from:'Diamonds with Center Two-Faced Line 2',difficulty: 3,noDisplay: true,
      paths:[
          LeadLeft.changeBeats(3).scale(2.0,1.0),

          LeadLeft.changeBeats(3).scale(1.0,3.0),

          ExtendLeft.changeBeats(1.5).scale(2.0,0.5) +
          LeadRight.changeBeats(1.5).scale(2.0,1.5),

          LeadLeft.changeBeats(3).scale(1.0,3.0)
      ]),

    AnimatedCall('Diamond Circulate',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-2,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:-2,angle:270),
  ]),
      from:'Diamonds with Center Two-Faced Line 3',difficulty: 3,noDisplay: true,
      paths:[
          Forward_2.changeBeats(1.5) +
          LeadRight.changeBeats(1.5).scale(2.0,1.0),

          LeadRightPassing.changeBeats(3).scale(1.0,3.0),

          LeadLeftPassing.changeBeats(3).scale(2.0,1.0),

          LeadRight.changeBeats(3).scale(1.0,3.0)
      ]),

    AnimatedCall('Diamond Circulate',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-2,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:-2,angle:270),
  ]),
      from:'Diamonds with Center Two-Faced Line 4',difficulty: 3,noDisplay: true,
      paths:[
          LeadLeftPassing.changeBeats(3).scale(2.0,1.0),

          LeadRightPassing.changeBeats(3).scale(1.0,3.0),

          Forward_2.changeBeats(1.5) +
          LeadRight.changeBeats(1.5).scale(2.0,1.0),

          LeadRight.changeBeats(3).scale(1.0,3.0)
      ]),

    AnimatedCall('Diamond Circulate',
      formation:Formation('Star Promenade'),
      from:'Star Promenade',difficulty: 3,
      paths:[
          LeadLeft.changeBeats(3).scale(3.0,1.0),

          LeadLeft.changeBeats(3).scale(1.0,3.0),

          LeadLeft.changeBeats(3).scale(3.0,1.0),

          LeadLeft.changeBeats(3).scale(1.0,3.0)
      ]),
  ];

