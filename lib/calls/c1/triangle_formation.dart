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

  final List<AnimatedCall> TriangleFormation = [

    AnimatedCall('Inside Triangle Circulate',
      formation:Formation('Diamonds RH Girl Points'),
      from:'Right-Hand Diamonds',
      paths:[
          Path(),

          LeadRight.changeBeats(6).scale(1.0,3.0),

          LeadRight.changeBeats(6).scale(3.0,1.0),

          QuarterRight.skew(0.0,-1.0) +
          Forward_4 +
          QuarterRight.skew(1.0,0.0)
      ]),

    AnimatedCall('Inside Triangle Circulate',
      formation:Formation('Diamonds LH Girl Points'),
      from:'Left-Hand Diamonds',
      paths:[
          Path(),

          QuarterLeft.skew(0.0,1.0) +
          Forward_4 +
          QuarterLeft.skew(1.0,0.0),

          LeadLeft.changeBeats(6).scale(3.0,1.0),

          LeadLeft.changeBeats(6).scale(1.0,3.0)
      ]),

    AnimatedCall('Inside Triangle Circulate',
      formation:Formation('Diamonds RH PTP Girl Points'),
      from:'Point-to-Point Diamonds',
      paths:[
          LeadRight.changeBeats(3).scale(2.0,1.0),

          LeadRight.changeBeats(3).scale(1.0,2.0),

          FlipRight,

          Path()
      ]),

    AnimatedCall('Outside Triangle Circulate',
      formation:Formation('Diamonds RH Girl Points'),
      from:'Right-Hand Diamonds',
      paths:[
          LeadRight.changeBeats(6).scale(3.0,1.0),

          QuarterRight.skew(0.0,-1.0) +
          Forward_4 +
          QuarterRight.skew(1.0,0.0),

          Path(),

          LeadRight.changeBeats(6).scale(1.0,3.0)
      ]),

    AnimatedCall('Outside Triangle Circulate',
      formation:Formation('Diamonds LH Girl Points'),
      from:'Left-Hand Diamonds',
      paths:[
          LeadLeft.changeBeats(6).scale(3.0,1.0),

          LeadLeft.changeBeats(6).scale(1.0,3.0),

          Path(),

          QuarterLeft.skew(0.0,1.0) +
          Forward_4 +
          QuarterLeft.skew(1.0,0.0)
      ]),

    AnimatedCall('Outside Triangle Circulate',
      formation:Formation('Diamonds RH PTP Girl Points'),
      from:'Point-to-Point Diamonds',
      paths:[
          FlipRight,

          Path(),

          LeadRight.changeBeats(3).scale(2.0,1.0),

          LeadRight.changeBeats(3).scale(1.0,2.0)
      ]),

    AnimatedCall('Inpoint Triangle Circulate',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:0,y:-3,angle:270),
        Dancer.fromData(gender:Gender.GIRL,x:-3,y:-2,angle:90),
        Dancer.fromData(gender:Gender.BOY,x:0,y:-1,angle:270),
        Dancer.fromData(gender:Gender.GIRL,x:3,y:-2,angle:270),
  ]),
      from:'Tandem Centers',
      paths:[
          RunRight.changeBeats(3).scale(1.0,1.5).skew(-1.0,0.0),

          RunRight.changeBeats(3).scale(1.0,1.5).skew(1.0,0.0),

          Forward_2.changeBeats(3),

          Path()
      ]),

    AnimatedCall('Inpoint Triangle Circulate',
      formation:Formation('Diamonds LH Girl Points'),
      from:'Left-Hand Diamonds',
      paths:[
          LeadLeft.changeBeats(3).scale(3.0,1.0),

          Path(),

          FlipLeft,

          LeadLeft.changeBeats(3).scale(1.0,3.0)
      ]),

    AnimatedCall('Outpoint Triangle Circulate',
      formation:Formation('Diamonds RH Girl Points'),
      from:'Right-Hand Diamonds',
      paths:[
          FlipRight,

          Path(),

          LeadRight.changeBeats(3).scale(3.0,1.0),

          LeadRight.changeBeats(3).scale(1.0,3.0)
      ]),

    AnimatedCall('Outpoint Triangle Circulate',
      formation:Formation('Diamonds LH Girl Points'),
      from:'Left-Hand Diamonds',
      paths:[
          FlipLeft,

          LeadLeft.changeBeats(3).scale(1.0,3.0),

          LeadLeft.changeBeats(3).scale(3.0,1.0),

          Path()
      ]),

    AnimatedCall('Wave-Based Triangle Circulate',
      formation:Formation('Hourglass RH BP'),
      from:'Right-Hand Hourglass',
      paths:[
          LeadRight.changeBeats(6).scale(1.0,3.0),

          LeadRight.changeBeats(6).scale(3.0,1.0),

          QuarterRight.skew(0.0,-1.0) +
          Forward_4 +
          QuarterRight.skew(1.0,0.0),

          Path()
      ]),

    AnimatedCall('Wave-Based Triangle Circulate',
      formation:Formation('Hourglass LH BP'),
      from:'Left-Hand Hourglass',
      paths:[
          QuarterLeft.skew(0.0,1.0) +
          Forward_4 +
          QuarterLeft.skew(1.0,0.0),

          LeadLeft.changeBeats(6).scale(3.0,1.0),

          LeadLeft.changeBeats(6).scale(1.0,3.0),

          Path()
      ]),

    AnimatedCall('Wave-Based Triangle Circulate',
      formation:Formation('Galaxy RH GP'),
      from:'Right-Hand Galaxy',
      paths:[
          LeadRight.changeBeats(3).scale(2.0,1.0),

          LeadRight.changeBeats(3).scale(1.0,2.0),

          FlipRight,

          Path()
      ]),

    AnimatedCall('Wave-Based Triangle Circulate',
      formation:Formation('Galaxy LH GP'),
      from:'Left-Hand Galaxy',
      paths:[
          FlipLeft,

          LeadLeft.changeBeats(3).scale(1.0,2.0),

          LeadLeft.changeBeats(3).scale(2.0,1.0),

          Path()
      ]),

    AnimatedCall('Tandem-Based Triangle Circulate',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:-2,y:-3,angle:180),
        Dancer.fromData(gender:Gender.GIRL,x:-3,y:0,angle:90),
        Dancer.fromData(gender:Gender.BOY,x:-2,y:3,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:0,y:1,angle:180),
  ]),
      from:'Hourglass with Right-Hand Tandem Triangles',
      paths:[
          UmTurnRight.changeBeats(4).skew(-2.0,-2.0),

          Path(),

          Forward_4,

          UmTurnRight.changeBeats(4).skew(2.0,-2.0)
      ]),

    AnimatedCall('Tandem-Based Triangle Circulate',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:-2,y:-3,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:-3,y:0,angle:90),
        Dancer.fromData(gender:Gender.BOY,x:-2,y:3,angle:180),
        Dancer.fromData(gender:Gender.GIRL,x:0,y:1,angle:0),
  ]),
      from:'Hourglass with Left-Hand Tandem Triangles',
      paths:[
          Forward_4,

          Path(),

          UmTurnLeft.changeBeats(4).skew(-2.0,2.0),

          UmTurnLeft.changeBeats(4).skew(2.0,2.0)
      ]),

    AnimatedCall('Tandem-Based Triangle Circulate',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:-1,y:-1,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:-3,y:0,angle:90),
        Dancer.fromData(gender:Gender.BOY,x:-1,y:1,angle:180),
        Dancer.fromData(gender:Gender.GIRL,x:0,y:3.1,angle:0),
  ]),
      from:'Galaxy with Right-Hand Tandem Triangles',
      paths:[
          Forward_2.changeBeats(3),

          Path(),

          UmTurnRight.changeBeats(3).skew(-1.0,-2.1),

          UmTurnRight.changeBeats(3).skew(1.0,-2.1)
      ]),

    AnimatedCall('Tandem-Based Triangle Circulate',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:-1,y:-1,angle:180),
        Dancer.fromData(gender:Gender.GIRL,x:-3,y:0,angle:270),
        Dancer.fromData(gender:Gender.BOY,x:-1,y:1,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:0,y:3.1,angle:180),
  ]),
      from:'Galaxy with Left-Hand Tandem Triangles',
      paths:[
          UmTurnLeft.changeBeats(3).skew(-1.0,2.1),

          Path(),

          Forward_2.changeBeats(3),

          UmTurnLeft.changeBeats(3).skew(1.0,2.1)
      ]),
  ];

