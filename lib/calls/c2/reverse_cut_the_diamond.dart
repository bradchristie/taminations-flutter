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

  final List<AnimatedCall> ReverseCutTheDiamond = [

    AnimatedCall('Reverse Cut the Diamond',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:3,y:0,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1,angle:180),
  ]),
      from:'Right-Hand Diamond',
      paths:[
          LeadRight.changeBeats(4).scale(1.0,3.0),

          HingeRight.changeBeats(1) +
          LeadRight.changeBeats(3).scale(3.0,1.0)
      ]),

    AnimatedCall('Reverse Cut the Diamond',
      formation:Formation('Diamond LH'),
      from:'Left-Hand Diamond',
      paths:[
          LeadLeft.changeBeats(4).scale(1.0,3.0),

          HingeLeft.changeBeats(1) +
          LeadLeft.changeBeats(3).scale(3.0,1.0)
      ]),

    AnimatedCall('Reverse Cut the Diamond',
      formation:Formation('Diamond Facing'),
      from:'Facing Diamond, Left-Hand Centers',
      paths:[
          LeadRight.changeBeats(4).scale(1.0,3.0),

          HingeLeft.changeBeats(1) +
          LeadLeft.changeBeats(3).scale(3.0,1.0)
      ]),

    AnimatedCall('Reverse Cut the Diamond',
      formation:Formation('Diamond Facing RH'),
      from:'Facing Diamond, Right-Hand Centers',
      paths:[
          LeadLeft.changeBeats(4).scale(1.0,3.0),

          HingeRight.changeBeats(1) +
          LeadRight.changeBeats(3).scale(3.0,1.0)
      ]),

    AnimatedCall('Reverse Cut the Diamond',
      formation:Formation('Diamonds RH Girl Points'),
      from:'Right-Hand Diamonds',
      paths:[
          HingeRight.changeBeats(2) +
          LeadRight.changeBeats(2).scale(1.5,1.0),

          LeadRight.changeBeats(4).scale(0.5,3.0),

          HingeRight.changeBeats(2) +
          LeadRight.changeBeats(2).scale(1.5,1.0),

          LeadRight.changeBeats(4).scale(0.5,3.0)
      ]),

    AnimatedCall('Reverse Cut the Diamond',
      formation:Formation('Diamonds LH Girl Points'),
      from:'Left-Hand Diamonds',
      paths:[
          HingeLeft.changeBeats(2) +
          LeadLeft.changeBeats(2).scale(1.5,1.0),

          LeadLeft.changeBeats(4).scale(0.5,3.0),

          HingeLeft.changeBeats(2) +
          LeadLeft.changeBeats(2).scale(1.5,1.0),

          LeadLeft.changeBeats(4).scale(0.5,3.0)
      ]),

    AnimatedCall('Reverse Cut the Diamond',
      formation:Formation('Diamonds Facing Girl Points'),
      from:'Facing Diamonds, Right-Hand Wave',
      paths:[
          HingeRight.changeBeats(2) +
          LeadRight.changeBeats(2).scale(1.5,1.0),

          LeadLeft.changeBeats(4).scale(0.5,3.0),

          HingeRight.changeBeats(2) +
          LeadRight.changeBeats(2).scale(1.5,1.0),

          LeadLeft.changeBeats(4).scale(0.5,3.0)
      ]),

    AnimatedCall('Reverse Cut the Diamond',
      formation:Formation('Diamonds Facing LH Girl Points'),
      from:'Facing Diamonds, Left-Hand Wave',
      paths:[
          HingeLeft.changeBeats(2) +
          LeadLeft.changeBeats(2).scale(1.5,1.0),

          LeadRight.changeBeats(4).scale(0.5,3.0),

          HingeLeft.changeBeats(2) +
          LeadLeft.changeBeats(2).scale(1.5,1.0),

          LeadRight.changeBeats(4).scale(0.5,3.0)
      ]),

    AnimatedCall('Reverse Cut the Diamond',
      formation:Formation('Interlocked Diamonds RH Girl Points'),
      from:'Right-Hand Interlocked Diamonds',
      paths:[
          RunRight.changeBeats(4).scale(1.0,1.25),

          LeadRight.changeBeats(4).scale(0.5,3.0),

          FlipLeft.changeBeats(4).scale(1.0,1.25),

          LeadRight.changeBeats(4).scale(0.5,3.0)
      ]),

    AnimatedCall('Reverse Cut the Diamond',
      formation:Formation('Interlocked Diamonds LH Girl Points'),
      from:'Left-Hand Interlocked Diamonds',
      paths:[
          FlipLeft.changeBeats(4).scale(1.0,1.25),

          LeadLeft.changeBeats(4).scale(0.5,3.0),

          RunRight.changeBeats(4).scale(1.0,1.25),

          LeadLeft.changeBeats(4).scale(0.5,3.0)
      ]),

    AnimatedCall('Reverse Cut the Diamond',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-2,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:-2,angle:90),
  ]),
      from:'Interlocked Diamonds 3',
      paths:[
          RunRight.changeBeats(4).scale(1.0,1.25),

          LeadLeft.changeBeats(4).scale(0.5,3.0),

          FlipLeft.changeBeats(4).scale(1.0,1.25),

          LeadLeft.changeBeats(4).scale(0.5,3.0)
      ]),

    AnimatedCall('Reverse Cut the Diamond',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-2,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:-2,angle:270),
  ]),
      from:'Interlocked Diamonds 4',
      paths:[
          FlipLeft.changeBeats(4).scale(1.0,1.25),

          LeadRight.changeBeats(4).scale(0.5,3.0),

          RunRight.changeBeats(4).scale(1.0,1.25),

          LeadRight.changeBeats(4).scale(0.5,3.0)
      ]),

    AnimatedCall('Reverse Cut the Diamond',
      formation:Formation('Diamonds RH PTP Girl Points'),
      from:'Right-Hand Point-to-Point Diamonds',
      paths:[
          HingeRight.changeBeats(1) +
          QuarterRight.changeBeats(3).skew(3.0,0.0),

          LeadRight.changeBeats(4),

          HingeRight.changeBeats(1) +
          LeadRight.changeBeats(3).scale(3.0,2.0),

          LeadRight.changeBeats(4).scale(1.0,3.0)
      ]),

    AnimatedCall('Reverse Cut the Diamond',
      formation:Formation('Diamonds LH PTP Girl Points'),
      from:'Left-Hand Point-to-Point Diamonds',
      paths:[
          HingeLeft.changeBeats(1) +
          LeadLeft.changeBeats(3).scale(3.0,2.0),

          LeadLeft.changeBeats(4),

          HingeLeft.changeBeats(1) +
          QuarterLeft.changeBeats(3).skew(3.0,0.0),

          LeadLeft.changeBeats(4).scale(1.0,3.0)
      ]),

    AnimatedCall('Reverse Cut the Diamond',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:-3,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-5,angle:0),
  ]),
      from:'Facing Point-to-Point Diamonds, Right-Hand Centers',
      paths:[
          HingeRight.changeBeats(1) +
          QuarterRight.changeBeats(3).skew(3.0,0.0),

          LeadLeft.changeBeats(4),

          HingeRight.changeBeats(1) +
          LeadRight.changeBeats(3).scale(3.0,2.0),

          LeadLeft.changeBeats(4).scale(1.0,3.0)
      ]),

    AnimatedCall('Reverse Cut the Diamond',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:-3,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-5,angle:180),
  ]),
      from:'Facing Point-to-Point Diamonds, Left-Hand Centers',
      paths:[
          HingeLeft.changeBeats(1) +
          LeadLeft.changeBeats(3).scale(3.0,2.0),

          LeadRight.changeBeats(4),

          HingeLeft.changeBeats(1) +
          QuarterLeft.changeBeats(3).skew(3.0,0.0),

          LeadRight.changeBeats(4).scale(1.0,3.0)
      ]),

    AnimatedCall('Reverse Cut the Diamond',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:-3,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-5,angle:180),
  ]),
      from:'Point-to-Point Diamonds 3',
      paths:[
          RunRight.changeBeats(4).scale(1.0,2.0).skew(1.0,0.0),

          Stand.changeBeats(2) +
          LeadRight.changeBeats(2),

          FlipLeft.changeBeats(4).scale(1.0,2.0).skew(1.0,0.0),

          LeadRight.changeBeats(4).scale(1.0,3.0)
      ]),

    AnimatedCall('Reverse Cut the Diamond',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:-3,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-5,angle:180),
  ]),
      from:'Point-to-Point Diamonds 4',
      paths:[
          FlipLeft.changeBeats(4).scale(1.0,2.0).skew(-1.0,0.0),

          LeadRight.changeBeats(4),

          RunRight.changeBeats(4).scale(1.0,2.0).skew(-1.0,0.0),

          LeadRight.changeBeats(4).scale(1.0,3.0)
      ]),

    AnimatedCall('Reverse Cut the Diamond',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:-3,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-5,angle:0),
  ]),
      from:'Point-to-Point Diamonds 5',
      paths:[
          FlipLeft.changeBeats(4).scale(1.0,2.0).skew(-1.0,0.0),

          LeadLeft.changeBeats(4),

          RunRight.changeBeats(4).scale(1.0,2.0).skew(-1.0,0.0),

          LeadLeft.changeBeats(4).scale(1.0,3.0)
      ]),

    AnimatedCall('Reverse Cut the Diamond',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:-3,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-5,angle:0),
  ]),
      from:'Point-to-Point Diamonds 6',
      paths:[
          RunRight.changeBeats(4).scale(1.0,2.0).skew(1.0,0.0),

          LeadLeft.changeBeats(4),

          FlipLeft.changeBeats(4).scale(1.0,2.0).skew(1.0,0.0),

          LeadLeft.changeBeats(4).scale(1.0,3.0)
      ]),

    AnimatedCall('Reverse Flip the Diamond',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:3,y:0,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1,angle:180),
  ]),
      from:'Right-Hand Diamond',
      paths:[
          LeadRight.changeBeats(3).scale(1.0,3.0),

          RunLeft
      ]),

    AnimatedCall('Reverse Flip the Diamond',
      formation:Formation('Diamond LH'),
      from:'Left-Hand Diamond',
      paths:[
          LeadLeft.changeBeats(3).scale(1.0,3.0),

          RunRight
      ]),

    AnimatedCall('Reverse Flip the Diamond',
      formation:Formation('Diamond Facing'),
      from:'Facing Diamond, Left-Hand Centers',
      paths:[
          LeadRight.changeBeats(3).scale(1.0,3.0),

          RunRight
      ]),

    AnimatedCall('Reverse Flip the Diamond',
      formation:Formation('Diamond Facing RH'),
      from:'Facing Diamond, Right-Hand Centers',
      paths:[
          LeadLeft.changeBeats(3).scale(1.0,3.0),

          RunLeft
      ]),

    AnimatedCall('Reverse Flip the Diamond',
      formation:Formation('Diamonds RH Girl Points'),
      from:'Right-Hand Diamonds',
      paths:[
          FlipLeft.scale(0.25,0.25),

          LeadRight.changeBeats(3).scale(0.5,3.0),

          FlipLeft.scale(0.25,0.25),

          LeadRight.changeBeats(3).scale(0.5,3.0)
      ]),

    AnimatedCall('Reverse Flip the Diamond',
      formation:Formation('Diamonds LH Girl Points'),
      from:'Left-Hand Diamonds',
      paths:[
          FlipRight.scale(0.25,0.25),

          LeadLeft.changeBeats(3).scale(0.5,3.0),

          FlipRight.scale(0.25,0.25),

          LeadLeft.changeBeats(3).scale(0.5,3.0)
      ]),

    AnimatedCall('Reverse Flip the Diamond',
      formation:Formation('Diamonds Facing Girl Points'),
      from:'Facing Diamonds, Right-Hand Wave',
      paths:[
          FlipLeft.scale(0.25,0.25),

          LeadLeft.changeBeats(3).scale(0.5,3.0),

          FlipLeft.scale(0.25,0.25),

          LeadLeft.changeBeats(3).scale(0.5,3.0)
      ]),

    AnimatedCall('Reverse Flip the Diamond',
      formation:Formation('Diamonds Facing LH Girl Points'),
      from:'Facing Diamonds, Left-Hand Wave',
      paths:[
          FlipRight.scale(0.25,0.25),

          LeadRight.changeBeats(3).scale(0.5,3.0),

          FlipRight.scale(0.25,0.25),

          LeadRight.changeBeats(3).scale(0.5,3.0)
      ]),

    AnimatedCall('Reverse Flip the Diamond',
      formation:Formation('Interlocked Diamonds RH Girl Points'),
      from:'Right-Hand Interlocked Diamonds',
      paths:[
          FlipLeft.scale(0.25,0.25),

          LeadRight.changeBeats(3).scale(0.5,3.0),

          FlipRight.scale(0.25,0.25),

          LeadRight.changeBeats(3).scale(0.5,3.0)
      ]),

    AnimatedCall('Reverse Flip the Diamond',
      formation:Formation('Interlocked Diamonds LH Girl Points'),
      from:'Left-Hand Interlocked Diamonds',
      paths:[
          FlipRight.scale(0.25,0.25),

          LeadLeft.changeBeats(3).scale(0.5,3.0),

          FlipLeft.scale(0.25,0.25),

          LeadLeft.changeBeats(3).scale(0.5,3.0)
      ]),

    AnimatedCall('Reverse Flip the Diamond',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-2,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:-2,angle:90),
  ]),
      from:'Interlocked Diamonds 3',
      paths:[
          FlipLeft.scale(0.25,0.25),

          LeadLeft.changeBeats(3).scale(0.5,3.0),

          FlipRight.scale(0.25,0.25),

          LeadLeft.changeBeats(3).scale(0.5,3.0)
      ]),

    AnimatedCall('Reverse Flip the Diamond',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-2,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:-2,angle:270),
  ]),
      from:'Interlocked Diamonds 4',
      paths:[
          FlipRight.scale(0.25,0.25),

          LeadRight.changeBeats(3).scale(0.5,3.0),

          FlipLeft.scale(0.25,0.25),

          LeadRight.changeBeats(3).scale(0.5,3.0)
      ]),

    AnimatedCall('Reverse Flip the Diamond',
      formation:Formation('Diamonds RH PTP Girl Points'),
      from:'Right-Hand Point-to-Point Diamonds',
      paths:[
          FlipLeft.skew(1.0,0.0),

          LeadRight.changeBeats(3),

          FlipLeft.skew(-1.0,0.0),

          LeadRight.changeBeats(3).scale(1.0,3.0)
      ]),

    AnimatedCall('Reverse Flip the Diamond',
      formation:Formation('Diamonds LH PTP Girl Points'),
      from:'Left-Hand Point-to-Point Diamonds',
      paths:[
          FlipRight.skew(-1.0,0.0),

          LeadLeft.changeBeats(3),

          FlipRight.skew(1.0,0.0),

          LeadLeft.changeBeats(3).scale(1.0,3.0)
      ]),

    AnimatedCall('Reverse Flip the Diamond',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:-3,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-5,angle:0),
  ]),
      from:'Facing Point-to-Point Diamonds, Right-Hand Centers',
      paths:[
          FlipLeft.skew(1.0,0.0),

          LeadLeft.changeBeats(3),

          FlipLeft.skew(-1.0,0.0),

          LeadLeft.changeBeats(3).scale(1.0,3.0)
      ]),

    AnimatedCall('Reverse Flip the Diamond',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:-3,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-5,angle:180),
  ]),
      from:'Facing Point-to-Point Diamonds, Left-Hand Centers',
      paths:[
          FlipRight.skew(-1.0,0.0),

          LeadRight.changeBeats(3),

          FlipRight.skew(1.0,0.0),

          LeadRight.changeBeats(3).scale(1.0,3.0)
      ]),

    AnimatedCall('Reverse Flip the Diamond',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:-3,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-5,angle:180),
  ]),
      from:'Point-to-Point Diamonds 3',
      paths:[
          FlipLeft.skew(1.0,0.0),

          LeadRight.changeBeats(3),

          FlipRight.skew(1.0,0.0),

          LeadRight.changeBeats(3).scale(1.0,3.0)
      ]),

    AnimatedCall('Reverse Flip the Diamond',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:-3,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-5,angle:180),
  ]),
      from:'Point-to-Point Diamonds 4',
      paths:[
          FlipRight.skew(-1.0,0.0),

          LeadRight.changeBeats(3),

          FlipLeft.skew(-1.0,0.0),

          LeadRight.changeBeats(3).scale(1.0,3.0)
      ]),

    AnimatedCall('Reverse Flip the Diamond',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:-3,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-5,angle:0),
  ]),
      from:'Point-to-Point Diamonds 5',
      paths:[
          FlipRight.skew(-1.0,0.0),

          LeadLeft.changeBeats(3),

          FlipLeft.skew(-1.0,0.0),

          LeadLeft.changeBeats(3).scale(1.0,3.0)
      ]),

    AnimatedCall('Reverse Flip the Diamond',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:-3,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-5,angle:0),
  ]),
      from:'Point-to-Point Diamonds 6',
      paths:[
          FlipLeft.skew(1.0,0.0),

          LeadLeft.changeBeats(3),

          FlipRight.skew(1.0,0.0),

          LeadLeft.changeBeats(3).scale(1.0,3.0)
      ]),
  ];

