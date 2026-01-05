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

  final List<AnimatedCall> LoadTheBoat = [

    AnimatedCall('Load the Boat',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-3,angle:0),
  ]),
      from:'Ends Facing Only',isPerimeter:true,noDisplay: true,
      paths:[
          ExtendLeft.scale(2.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          LeadRight.changeBeats(2).scale(2.5,3.5) +
          LeadRight.changeBeats(2.5).scale(3.5,3.5) +
          LeadRight.changeBeats(2.5),

          ExtendLeft.scale(2.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          LeadLeft.changeBeats(2).scale(1.5,3.5) +
          LeadLeft.changeBeats(2.5).scale(2.5,2.5) +
          QuarterLeft.changeBeats(2.5).skew(1.0,0.0)
      ]),

    AnimatedCall('Load the Boat',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-3,angle:180),
  ]),
      from:'Ends Back-to-Back Only',isPerimeter:true,noDisplay: true,
      paths:[
          RunLeft.changeBeats(4).scale(1.5,3.0) +
          Forward_5.changeBeats(3) +
          RunLeft.scale(1.0,2.0),

          RunRight.changeBeats(4).scale(2.5,3.5) +
          Forward_5.changeBeats(3) +
          RunRight.scale(2.0,2.5)
      ]),

    AnimatedCall('Load the Boat',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:0,y:3.5,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-2.5,angle:0),
  ]),
      from:'Ends in Mini-Waves',isPerimeter:true,noDisplay: true,
      paths:[
          ExtendRight.scale(1.0,0.5) +
          LeadRight.changeBeats(2).scale(2.5,3.5) +
          LeadRight.changeBeats(2.5).scale(3.5,3.5) +
          LeadRight.changeBeats(2.5),

          ExtendRight.scale(1.0,0.5) +
          LeadLeft.changeBeats(2).scale(1.5,3.5) +
          LeadLeft.changeBeats(2.5).scale(2.5,2.5) +
          QuarterLeft.changeBeats(2.5).skew(1.0,0.0)
      ]),

    AnimatedCall('Load the Boat',
      formation:Formation('Facing Couples Compact'),
      from:'Facing Couples',noDisplay: true,
      paths:[
          ExtendLeft.scale(1.5,0.5) +
          ExtendRight.scale(1.0,0.5) +
          QuarterLeft.changeBeats(2) +
          FlipLeft +
          PassThru,

          ExtendLeft.scale(1.5,0.5) +
          ExtendRight.scale(1.0,0.5) +
          QuarterRight.changeBeats(2) +
          RunRight +
          PassThru
      ]),

    AnimatedCall('Load the Boat',
      formation:Formation('Wave RH'),
      from:'Wave',noDisplay: true,
      paths:[
          ExtendRight.changeBeats(2).scale(1.0,2.0) +
          QuarterLeft.changeBeats(2) +
          FlipLeft +
          PassThru,

          Forward.changeBeats(2) +
          QuarterRight.changeBeats(2) +
          RunRight +
          PassThru
      ]),

    AnimatedCall('Load the Boat',
      formation:Formation('Compact Wave RH'),
      from:'Compact Wave',noDisplay: true,
      paths:[
          ExtendRight.changeBeats(2).scale(1.0,0.5) +
          QuarterLeft.changeBeats(2) +
          FlipLeft +
          PassThru,

          ExtendRight.changeBeats(2).scale(1.0,0.5) +
          QuarterRight.changeBeats(2) +
          RunRight +
          PassThru
      ]),

    AnimatedCall('Load the Boat',
      formation:Formation('Normal Lines'),
      from:'Normal Lines',parts:'3;3;3',difficulty: 1,
      paths:[
          ExtendLeft.changeBeats(1.5).scale(2.0,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.0,0.5) +
          LeadRight.changeBeats(3).scale(2.5,3.5) +
          LeadRight.changeBeats(3).scale(3.5,4.0) +
          LeadRight.changeBeats(3).scale(0.5,1.0),

          ExtendLeft.changeBeats(1.5).scale(2.0,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.0,0.5) +
          QuarterLeft.changeBeats(3) +
          FlipLeft +
          PassThru.changeBeats(3),

          ExtendLeft.changeBeats(1.5).scale(2.0,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.0,0.5) +
          QuarterRight.changeBeats(3) +
          RunRight +
          PassThru.changeBeats(3),

          ExtendLeft.changeBeats(1.5).scale(2.0,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.0,0.5) +
          LeadLeft.changeBeats(3).scale(1.5,3.5) +
          LeadLeft.changeBeats(3).scale(2.5,3.0) +
          QuarterLeft.changeBeats(3).skew(0.5,0.0)
      ]),

    AnimatedCall('Load the Boat',
      formation:Formation('Inverted Lines Ends Facing Out'),
      from:'Inverted Lines',parts:'3;3;3',difficulty: 2,
      paths:[
          LeadLeft.changeBeats(3).scale(1.0,3.5) +
          LeadLeft.changeBeats(3).scale(2.0,3.5) +
          LeadLeft.changeBeats(3).scale(2.5,3.0) +
          QuarterLeft.changeBeats(3).skew(0.5,0.0),

          PassThru.changeBeats(3).scale(1.5,1.0) +
          QuarterLeft.changeBeats(3) +
          FlipLeft +
          PassThru.changeBeats(3),

          PassThru.changeBeats(3).scale(1.5,1.0) +
          QuarterRight.changeBeats(3) +
          RunRight +
          PassThru.changeBeats(3),

          LeadRight.changeBeats(3).scale(2.0,3.5) +
          LeadRight.changeBeats(3).scale(3.0,4.5) +
          LeadRight.changeBeats(3).scale(3.5,4.0) +
          LeadRight.changeBeats(3).scale(0.5,1.0)
      ]),

    AnimatedCall('Load the Boat',
      formation:Formation('Tidal Wave RH BGGB'),
      from:'Tidal Wave',parts:'1.5;3;3',difficulty: 2,
      taminator: '''
      This is an application of the Ocean Wave Rule.
    ''',
      paths:[
          ExtendRight.changeBeats(1.5).scale(1.0,0.5) +
          LeadRight.changeBeats(3).scale(2.5,3.5) +
          LeadRight.changeBeats(3).scale(3.5,4.0) +
          LeadRight.changeBeats(3).scale(0.5,1.0),

          ExtendRight.changeBeats(1.5).scale(1.0,0.5) +
          LeadLeft.changeBeats(3).scale(1.5,3.5) +
          LeadLeft.changeBeats(3).scale(2.5,3.0) +
          QuarterLeft.changeBeats(3).skew(0.5,0.0),

          ExtendRight.changeBeats(1.5).scale(1.0,0.5) +
          QuarterLeft.changeBeats(3) +
          FlipLeft +
          PassThru.changeBeats(3),

          ExtendRight.changeBeats(1.5).scale(1.0,0.5) +
          QuarterRight.changeBeats(3) +
          RunRight +
          PassThru.changeBeats(3)
      ]),

    AnimatedCall('Load the Boat',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-2,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:-2,angle:90),
  ]),
      from:'Diamonds, Points Facing',parts:'3;3;3',difficulty: 3,
      paths:[
          ExtendRight.changeBeats(3).scale(1.0,2.0) +
          QuarterLeft.changeBeats(3) +
          FlipLeft +
          PassThru.changeBeats(3),

          ExtendLeft.changeBeats(1.5).scale(2.0,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.0,0.5) +
          LeadRight.changeBeats(3).scale(2.5,3.5) +
          LeadRight.changeBeats(3).scale(3.5,4.0) +
          LeadRight.changeBeats(3).scale(0.5,1.0),

          Forward.changeBeats(3) +
          QuarterRight.changeBeats(3) +
          RunRight +
          PassThru.changeBeats(3),

          ExtendLeft.changeBeats(1.5).scale(2.0,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.0,0.5) +
          LeadLeft.changeBeats(3).scale(1.5,3.5) +
          LeadLeft.changeBeats(3).scale(2.5,3.0) +
          QuarterLeft.changeBeats(3).skew(0.5,0.0)
      ]),

    AnimatedCall('Load the Boat',
      formation:Formation('Diamonds 3 and 1 Girl Points'),
      from:'Diamonds, Points Out',parts:'3;3;3',difficulty: 3,
      paths:[
          ExtendRight.changeBeats(3).scale(1.0,2.0) +
          QuarterLeft.changeBeats(3) +
          FlipLeft +
          PassThru.changeBeats(3),

          LeadLeft.changeBeats(3).scale(1.0,3.5) +
          LeadLeft.changeBeats(3).scale(2.0,3.5) +
          LeadLeft.changeBeats(3).scale(2.5,3.0) +
          QuarterLeft.changeBeats(3).skew(0.5,0.0),

          Forward.changeBeats(3) +
          QuarterRight.changeBeats(3) +
          RunRight +
          PassThru.changeBeats(3),

          LeadRight.changeBeats(3).scale(2.0,3.5) +
          LeadRight.changeBeats(3).scale(3.0,4.5) +
          LeadRight.changeBeats(3).scale(3.5,4.0) +
          LeadRight.changeBeats(3).scale(0.5,1.0)
      ]),

    AnimatedCall('Load the Boat',
      formation:Formation('Concentric Diamonds Mixed'),
      from:'Wave between Mini-Waves',parts:'2;3;3',difficulty: 3,
      paths:[
          ExtendRight.changeBeats(2).scale(1.0,2.0) +
          QuarterLeft.changeBeats(3) +
          FlipLeft +
          PassThru.changeBeats(3),

          Forward.changeBeats(2) +
          QuarterRight.changeBeats(3) +
          RunRight +
          PassThru.changeBeats(3),

          ExtendRight.changeBeats(2) +
          LeadLeft.changeBeats(3).scale(1.5,3.5) +
          LeadLeft.changeBeats(3).scale(2.5,3.0) +
          QuarterLeft.changeBeats(3).skew(0.5,0.0),

          ExtendRight.changeBeats(2) +
          LeadRight.changeBeats(3).scale(2.5,3.5) +
          LeadRight.changeBeats(3).scale(3.5,4.0) +
          LeadRight.changeBeats(3).scale(0.5,1.0)
      ]),

    AnimatedCall('Load the Boat',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:3,angle:0),
  ]),
      from:'T-Bones, Ends Facing In',parts:'3;3;3',difficulty: 3,
      paths:[
          PassThru.changeBeats(3) +
          LeadLeft.changeBeats(3).scale(1.5,3.5) +
          LeadLeft.changeBeats(3).scale(2.5,3.0) +
          QuarterLeft.changeBeats(3).skew(0.5,0.0),

          PassThru.changeBeats(3) +
          QuarterRight.changeBeats(3) +
          RunRight +
          PassThru.changeBeats(3),

          PassThru.changeBeats(3) +
          QuarterLeft.changeBeats(3) +
          FlipLeft +
          PassThru.changeBeats(3),

          PassThru.changeBeats(3) +
          LeadRight.changeBeats(3).scale(2.5,3.5) +
          LeadRight.changeBeats(3).scale(3.5,4.0) +
          LeadRight.changeBeats(3).scale(0.5,1.0)
      ]),

    AnimatedCall('Load the Boat',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:3,angle:180),
  ]),
      from:'T-Bones, Ends Facing Out',parts:'3;3;3',difficulty: 3,
      paths:[
          LeadRight.changeBeats(3).scale(3.0,3.5) +
          LeadRight.changeBeats(3).scale(3.0,4.5) +
          LeadRight.changeBeats(3).scale(3.5,4.0) +
          LeadRight.changeBeats(3).scale(0.5,1.0),

          PassThru.changeBeats(3) +
          QuarterRight.changeBeats(3) +
          RunRight +
          PassThru.changeBeats(3),

          PassThru.changeBeats(3) +
          QuarterLeft.changeBeats(3) +
          FlipLeft.changeBeats(3) +
          PassThru.changeBeats(3),

          LeadLeft.changeBeats(3).scale(2.0,3.5) +
          LeadLeft.changeBeats(3).scale(2.0,3.5) +
          LeadLeft.changeBeats(3).scale(2.5,3.0) +
          QuarterLeft.changeBeats(3).skew(0.5,0.0)
      ]),
  ];

