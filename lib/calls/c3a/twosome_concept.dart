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

  final List<AnimatedCall> TwosomeConcept = [

    AnimatedCall('Couples Twosome Circulate',
      formation:Formation('Two-Faced Lines RH'),
      group:'Couples Twosome',
      taminator: '''
      Many Twosome moves are danced like a Turn and Deal.
    ''',
      paths:[
          Forward_4.changeBeats(5),

          Forward_4.changeBeats(5),

          LeadRight +
          Forward_2 +
          LeadRight,

          LeadRight +
          Forward_2 +
          LeadRight
      ]),

    AnimatedCall('Couples Twosome Crossfire',
      formation:Formation('Tidal Line RH'),
      group:'Couples Twosome',
      paths:[
          RunRight.changeBeats(5).scale(2.0,2.0).skew(2.0,-0.5),

          RunRight.changeBeats(5).scale(2.0,2.0).skew(2.0,-1.5),

          RunRight.scale(0.75,1.0) +
          Forward_2.skew(0.0,0.5),

          RunRight.scale(0.75,1.0) +
          Forward_2.skew(0.0,1.5)
      ]),

    AnimatedCall('Couples Twosome Hinge',
      formation:Formation('Two-Faced Lines RH'),
      group:'Couples Twosome',
      paths:[
          LeadRight +
          Forward,

          LeadRight +
          Forward,

          LeadRight +
          Forward,

          LeadRight +
          Forward
      ]),

    AnimatedCall('Couples Twosome Recycle',
      formation:Formation('Two-Faced Tidal Line RH'),
      group:'Couples Twosome',
      paths:[
          RunRight.changeBeats(6).scale(2.0,2.0).skew(2.0,-0.5),

          RunRight.changeBeats(6).scale(2.0,2.0).skew(2.0,-1.5),

          FlipRight.skew(-1.0,0.0) +
          FlipRight.scale(1.0,0.25).skew(1.0,0.0),

          FlipRight.skew(-1.0,0.5) +
          FlipRight.scale(1.0,0.5).skew(1.0,0.0)
      ]),

    AnimatedCall('Couples Twosome Single Wheel',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:3,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:2,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:2,y:-1,angle:180),
  ]),
      group:'Couples Twosome',
      taminator: '''
      Same as Turn and Deal
    ''',
      paths:[
          LeadRight +
          QuarterRight.skew(1.0,0.0),

          LeadRight +
          QuarterRight.skew(1.0,0.0),

          LeadRight +
          QuarterRight.skew(1.0,0.0),

          LeadRight +
          QuarterRight.skew(1.0,0.0)
      ]),

    AnimatedCall('Couples Twosome Swing Thru',
      formation:Formation('Two-Faced Tidal Line RH'),
      group:'Couples Twosome',
      paths:[
          RunRight.scale(0.75,1.0) +
          RunLeft.scale(0.75,1.0),

          RunRight.scale(0.75,1.0) +
          RunLeft.scale(0.75,1.0),

          RunRight.scale(0.75,1.0),

          RunRight.scale(0.75,1.0)
      ]),

    AnimatedCall('Couples Twosome Trade',
      formation:Formation('Two-Faced Lines RH'),
      group:'Couples Twosome',
      paths:[
          LeadRight +
          Forward_2 +
          LeadRight,

          LeadRight +
          Forward_2 +
          LeadRight,

          LeadRight +
          Forward_2 +
          LeadRight,

          LeadRight +
          Forward_2 +
          LeadRight
      ]),

    AnimatedCall('Tandem Twosome Circulate',
      formation:Formation('Column RH GBGB'),
      group:'Tandem Twosome',
      paths:[
          FlipRight.changeBeats(4),

          FlipRight.changeBeats(4),

          Forward_4,

          Forward_4
      ]),

    AnimatedCall('Tandem Twosome Left Roll to a Wave',
      formation:Formation('Column RH GBGB'),
      group:'Tandem Twosome',
      paths:[
          RunLeft.skew(-1.0,0.0),

          RunLeft.skew(-3.0,0.0),

          Forward_3,

          Forward.changeBeats(3)
      ]),

    AnimatedCall('Tandem Twosome Single Wheel',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:3,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:2,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:2,y:-1,angle:180),
  ]),
      group:'Tandem Twosome',
      paths:[
          UmTurnRight.skew(3.0,-2.0),

          UmTurnRight.skew(1.0,-2.0),

          UmTurnLeft.skew(-3.0,0.0),

          UmTurnLeft.skew(-1.0,0.0)
      ]),

    AnimatedCall('Tandem Twosome Zoom',
      formation:Formation('Column RH GBGB'),
      group:'Tandem Twosome',fractions:'4',
      paths:[
          RunLeft.skew(-1.0,0.0) +
          Forward_2 +
          RunLeft.skew(1.0,0.0),

          RunLeft.skew(-1.0,0.0) +
          Forward_2 +
          RunLeft.skew(1.0,0.0),

          Forward_4.changeBeats(8),

          Forward_4.changeBeats(8)
      ]),

    AnimatedCall('Tandem, Tandem Twosome Touch a Quarter',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:.8,y:0,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:3.6,y:0,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:2.2,y:0,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:5.0,y:0,angle:180),
  ]),
      group:'Tandem, Tandem Twosome',
      paths:[
          ExtendLeft.changeBeats(2).scale(1.0,1.5) +
          Forward.changeBeats(3).scale(2.8,1.0) +
          QuarterRight.changeBeats(3).skew(0.0,-3.5),

          ExtendLeft.changeBeats(2).scale(1.0,1.5) +
          Forward.changeBeats(3).scale(2.8,1.0) +
          QuarterRight.changeBeats(3).skew(0.8,-3.5),

          ExtendLeft.changeBeats(2).scale(1.0,1.5) +
          Forward.changeBeats(3).scale(2.8,1.0) +
          QuarterRight.changeBeats(3).skew(1.4,0.5),

          ExtendLeft.changeBeats(2).scale(1.0,1.5) +
          Forward.changeBeats(3).scale(2.8,1.0) +
          QuarterRight.changeBeats(3).skew(2.2,0.5)
      ]),
  ];

