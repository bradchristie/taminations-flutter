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

  final List<AnimatedCall> ReshapeTheTriangle = [

    AnimatedCall('Inside Triangle Reshape',
        formation:Formation('Diamonds RH Girl Points'),
        from:'Right-Hand Diamonds',
        paths:[
          Path(),

          LeadRight.changeBeats(6).scale(1.0,3.0),

          RunRight.changeBeats(6).skew(3,1),

          QuarterRight.skew(0.0,-1.0) +
              Forward_5
        ]),

    AnimatedCall('Inside Triangle Reshape',
        formation:Formation('Diamonds LH Girl Points'),
        from:'Left-Hand Diamonds',
        paths:[
          Path(),

          QuarterLeft.skew(0.0,1.0) +
              Forward_5,

          RunLeft.changeBeats(6).skew(3,-1),

          LeadLeft.changeBeats(6).scale(1.0,3.0)
        ]),

    AnimatedCall('Inside Triangle Reshape',
        formation:Formation('Diamonds RH PTP Girl Points'),
        from:'Point-to-Point Diamonds',
        paths:[
          LeadRight.changeBeats(3).scale(2.0,1.0),

          RunRight.changeBeats(3).skew(1,0),

          QuarterRight.changeBeats(3).skew(0,-2),

          Path()
        ]),

    AnimatedCall('Outside Triangle Reshape',
        formation:Formation('Diamonds RH Girl Points'),
        from:'Right-Hand Diamonds',
        paths:[
          RunRight.changeBeats(6).skew(3,1),

          QuarterRight.skew(0.0,-1.0) +
              Forward_5,

          Path(),

          LeadRight.changeBeats(6).scale(1.0,3.0)
        ]),

    AnimatedCall('Outside Triangle Reshape',
        formation:Formation('Diamonds LH Girl Points'),
        from:'Left-Hand Diamonds',
        paths:[
          RunLeft.changeBeats(6).skew(3,-1),

          LeadLeft.changeBeats(6).scale(1.0,3.0),

          Path(),

          QuarterLeft.skew(0.0,1.0) +
              Forward_5
        ]),

    AnimatedCall('Outside Triangle Reshape',
        formation:Formation('Diamonds RH PTP Girl Points'),
        from:'Point-to-Point Diamonds',
        paths:[
          QuarterRight.changeBeats(3).skew(0,-2),

          Path(),

          LeadRight.changeBeats(3).scale(2.0,1.0),

          RunRight.changeBeats(3).skew(1,0)
        ]),

    AnimatedCall('Inpoint Triangle Reshape',
        formation:Formation('', dancers:[
          DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:270),
          DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-2,angle:90),
          DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:270),
          DancerModel.fromData(gender:Gender.GIRL,x:3,y:-2,angle:270),
        ]),
        from:'Tandem Centers',
        paths:[
          RunRight.changeBeats(3).scale(1.0,1.5).skew(-1.0,0.0),

          LeadRight.changeBeats(3).scale(1.0,3),

          QuarterRight.changeBeats(3).skew(2,0),

          Path()
        ]),

    AnimatedCall('Inpoint Triangle Reshape',
        formation:Formation('Diamonds LH Girl Points'),
        from:'Left-Hand Diamonds',
        paths:[
          LeadLeft.changeBeats(3).scale(3.0,1.0),

          Path(),

          QuarterLeft.changeBeats(3).skew(0,2),

          RunLeft.skew(1,1)
        ]),

    AnimatedCall('Outpoint Triangle Reshape',
        formation:Formation('Diamonds RH Girl Points'),
        from:'Right-Hand Diamonds',
        paths:[
          QuarterRight.changeBeats(3).skew(0,-2),

          Path(),

          LeadRight.changeBeats(3).scale(3.0,1.0),

          RunRight.skew(1,-1)
        ]),

    AnimatedCall('Outpoint Triangle Reshape',
        formation:Formation('Diamonds LH Girl Points'),
        from:'Left-Hand Diamonds',
        paths:[
          QuarterLeft.changeBeats(3).skew(0,2),

          RunLeft.skew(1,1),

          LeadLeft.changeBeats(3).scale(3.0,1.0),

          Path()
        ]),

    AnimatedCall('Wave-Based Triangle Reshape',
        formation:Formation('Hourglass RH BP'),
        from:'Right-Hand Hourglass',
        paths:[
          LeadRight.changeBeats(6).scale(1.0,3.0),

          RunRight.changeBeats(6).skew(3,1),

          QuarterRight.skew(0.0,-1.0) +
              Forward_5,

          Path()
        ]),

    AnimatedCall('Wave-Based Triangle Reshape',
        formation:Formation('Hourglass LH BP'),
        from:'Left-Hand Hourglass',
        paths:[
          QuarterLeft.skew(0.0,1.0) +
              Forward_5,

          RunLeft.changeBeats(6).skew(3,-1),

          LeadLeft.changeBeats(6).scale(1.0,3.0),

          Path()
        ]),

    AnimatedCall('Wave-Based Triangle Reshape',
        formation:Formation('Galaxy RH GP'),
        from:'Right-Hand Galaxy',
        paths:[
          LeadRight.changeBeats(3).scale(2.0,1.0),

          RunRight.skew(1,0),

          QuarterRight.changeBeats(3).skew(0,-2),

          Path()
        ]),

    AnimatedCall('Wave-Based Triangle Reshape',
        formation:Formation('Galaxy LH GP'),
        from:'Left-Hand Galaxy',
        paths:[
          QuarterLeft.changeBeats(3).skew(0,2),

          RunLeft.skew(1,0),

          LeadLeft.changeBeats(3).scale(2.0,1.0),

          Path()
        ]),

    AnimatedCall('Tandem-Based Triangle Reshape',
        formation:Formation('', dancers:[
          DancerModel.fromData(gender:Gender.BOY,x:-2,y:-3,angle:180),
          DancerModel.fromData(gender:Gender.GIRL,x:-3,y:0,angle:90),
          DancerModel.fromData(gender:Gender.BOY,x:-2,y:3,angle:0),
          DancerModel.fromData(gender:Gender.GIRL,x:0,y:1,angle:180),
        ]),
        from:'Hourglass with Right-Hand Tandem Triangles',
        paths:[
          UmTurnRight.changeBeats(4).skew(-2.0,-2.0),

          Path(),

          Forward_3 +
              QuarterRight.skew(1,0),

          QuarterRight.changeBeats(4).skew(2.0,-2.0)
        ]),

    AnimatedCall('Tandem-Based Triangle Reshape',
        formation:Formation('', dancers:[
          DancerModel.fromData(gender:Gender.BOY,x:-2,y:-3,angle:0),
          DancerModel.fromData(gender:Gender.GIRL,x:-3,y:0,angle:90),
          DancerModel.fromData(gender:Gender.BOY,x:-2,y:3,angle:180),
          DancerModel.fromData(gender:Gender.GIRL,x:0,y:1,angle:0),
        ]),
        from:'Hourglass with Left-Hand Tandem Triangles',
        paths:[
          Forward_3 + QuarterLeft.skew(1,0),

          Path(),

          UmTurnLeft.changeBeats(4).skew(-2.0,2.0),

          QuarterLeft.changeBeats(4).skew(2.0,2.0)
        ]),

    AnimatedCall('Tandem-Based Triangle Reshape',
        formation:Formation('', dancers:[
          DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:0),
          DancerModel.fromData(gender:Gender.GIRL,x:-3,y:0,angle:90),
          DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:180),
          DancerModel.fromData(gender:Gender.GIRL,x:0,y:3.1,angle:0),
        ]),
        from:'Galaxy with Right-Hand Tandem Triangles',
        paths:[
          QuarterRight.changeBeats(3).skew(2,0),

          Path(),

          UmTurnRight.changeBeats(3).skew(-1.0,-2.1),

          LeadRight.changeBeats(3).scale(1,2.1)
        ]),

    AnimatedCall('Tandem-Based Triangle Reshape',
        formation:Formation('', dancers:[
          DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:180),
          DancerModel.fromData(gender:Gender.GIRL,x:-3,y:0,angle:270),
          DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:0),
          DancerModel.fromData(gender:Gender.GIRL,x:0,y:3.1,angle:180),
        ]),
        from:'Galaxy with Left-Hand Tandem Triangles',
        paths:[
          UmTurnLeft.changeBeats(3).skew(-1.0,2.1),

          Path(),

          QuarterLeft.changeBeats(3).skew(2,0),

          LeadLeft.changeBeats(3).scale(1,2.1)
        ]),

  ];

