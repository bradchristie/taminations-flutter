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

  final List<AnimatedCall> BlockFormation = [

    AnimatedCall('In Your Block Box Circulate',
      formation:Formation('Blocks RH'),
      group:'In Your Block',
      paths:[
          Forward_4,

          RunRight.changeBeats(4).scale(1.5,2.0),

          Forward_4,

          RunRight.changeBeats(4).scale(1.5,2.0)
      ]),

    AnimatedCall('In Your Block Chase Right',
      formation:Formation('Blocks Facing Out'),
      group:'In Your Block',
      paths:[
          UmTurnRight.changeBeats(2).skew(-1.0,0.0) +
          LeadRight.changeBeats(3).scale(3.0,1.0) +
          QuarterRight.changeBeats(3).skew(3.0,0.0),

          QuarterRight.changeBeats(3).skew(0.0,-3.0) +
          LeadRight.changeBeats(3).scale(1.0,3.0) +
          Forward,

          UmTurnRight.changeBeats(2).skew(-1.0,0.0) +
          LeadRight.changeBeats(3).scale(3.0,1.0) +
          QuarterRight.changeBeats(3).skew(3.0,0.0),

          QuarterRight.changeBeats(3).skew(0.0,-3.0) +
          LeadRight.changeBeats(3).scale(1.0,3.0) +
          Forward
      ]),

    AnimatedCall('In Your Block Pass Thru',
      formation:Formation('Facing Blocks Left'),
      group:'In Your Block',
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('In Your Block Partner Tag',
      formation:Formation('Facing Blocks Left'),
      group:'In Your Block',
      paths:[
          LeadRight.changeBeats(2).scale(0.5,2.0) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          LeadLeft.changeBeats(2).skew(-1.5,1.0) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          LeadRight.changeBeats(2).scale(0.5,2.0) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          LeadLeft.changeBeats(2).skew(-1.5,1.0) +
          ExtendRight.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('In Your Block Partner Trade',
      formation:Formation('Blocks Facing Out'),
      group:'In Your Block',
      paths:[
          FlipLeft.changeBeats(3).scale(1.0,2.0),

          RunRight.changeBeats(3).scale(1.0,2.0),

          FlipLeft.changeBeats(3).scale(1.0,2.0),

          RunRight.changeBeats(3).scale(1.0,2.0)
      ]),

    AnimatedCall('In Your Block Slide Thru',
      formation:Formation('Facing Blocks Left'),
      group:'In Your Block',
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          LeadRight.changeBeats(2).scale(2.0,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          LeadLeft.changeBeats(2).skew(1.0,-1.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          LeadRight.changeBeats(2).scale(2.0,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          LeadLeft.changeBeats(2).skew(1.0,-1.5)
      ]),

    AnimatedCall('In Your Block Square Chain the Top',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:1,y:1,angle:270),
        Dancer.fromData(gender:Gender.GIRL,x:-3,y:1,angle:270),
        Dancer.fromData(gender:Gender.BOY,x:3,y:3,angle:270),
        Dancer.fromData(gender:Gender.GIRL,x:-1,y:3,angle:270),
  ]),
      group:'In Your Block',
      paths:[
          Forward_3.changeBeats(2) +
          LeadRight.scale(0.5,2.0) +
          SwingLeft.scale(0.5,0.5) +
          LeadLeft.changeBeats(4.5).scale(1.5,1.5) +
          SwingLeft.scale(0.5,0.5) +
          ExtendLeft.changeBeats(2).scale(1.0,1.5),

          ExtendLeft.changeBeats(2).scale(3.0,1.0) +
          LeadLeft.scale(1.5,1.0) +
          SwingLeft.scale(0.5,0.5) +
          CastRight.scale(0.5,0.5) +
          SwingLeft.scale(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(3.0,0.5),

          Forward.changeBeats(2) +
          LeadRight.scale(0.5,2.0) +
          SwingLeft.scale(0.5,0.5) +
          LeadLeft.changeBeats(4.5).scale(1.5,1.5) +
          SwingLeft.scale(0.5,0.5) +
          ExtendLeft.changeBeats(3).scale(3.0,1.5),

          ExtendLeft.changeBeats(2).scale(1.0,1.5) +
          LeadLeft.scale(1.5,0.5) +
          SwingLeft.scale(0.5,0.5) +
          CastRight.scale(0.5,0.5) +
          SwingLeft.scale(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(1.0,0.5)
      ]),

    AnimatedCall('In Your Block Square Chain Thru',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:1,y:1,angle:270),
        Dancer.fromData(gender:Gender.GIRL,x:-3,y:1,angle:270),
        Dancer.fromData(gender:Gender.BOY,x:3,y:3,angle:270),
        Dancer.fromData(gender:Gender.GIRL,x:-1,y:3,angle:270),
  ]),
      group:'In Your Block',fractions:'3.5;3;3;3',
      paths:[
          Forward_2 +
          LeadRight.scale(0.5,2.0) +
          SwingLeft.scale(0.5,0.5) +
          Stand.changeBeats(3).changehands(0) +
          SwingLeft.scale(0.5,0.5) +
          ExtendLeft.changeBeats(2).scale(2.0,1.5),

          ExtendLeft.changeBeats(2).scale(2.0,1.0) +
          LeadLeft.scale(1.5,1.0) +
          SwingLeft.scale(0.5,0.5) +
          SwingRight.scale(0.5,0.5) +
          SwingLeft.scale(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          Forward_2 +
          LeadRight.scale(0.5,2.0) +
          SwingLeft.scale(0.5,0.5) +
          Stand.changeBeats(3).changehands(0) +
          SwingLeft.scale(0.5,0.5) +
          ExtendLeft.changeBeats(2).scale(2.0,1.5),

          ExtendLeft.changeBeats(2).scale(2.0,1.5) +
          LeadLeft.scale(1.5,0.5) +
          SwingLeft.scale(0.5,0.5) +
          SwingRight.scale(0.5,0.5) +
          SwingLeft.scale(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('In Your Block Square Thru',
      formation:Formation('Facing Blocks Left'),
      group:'In Your Block',fractions:'4;4;4',
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          LeadRight.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5) +
          LeadRight.changeBeats(2).skew(1.0,1.5) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          LeadRight.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          LeadLeft.changeBeats(2).skew(1.0,-1.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5) +
          LeadLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          LeadLeft.changeBeats(2).skew(1.0,-1.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          LeadRight.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5) +
          LeadRight.changeBeats(2).skew(1.0,1.5) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          LeadRight.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          LeadLeft.changeBeats(2).skew(1.0,-1.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5) +
          LeadLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          LeadLeft.changeBeats(2).skew(1.0,-1.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('In Your Block Touch a Quarter',
      formation:Formation('Facing Blocks Right'),
      group:'In Your Block',
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          LeadRight.changeBeats(2).scale(2.0,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          LeadRight.changeBeats(2).scale(2.0,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          LeadRight.changeBeats(2).scale(2.0,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          LeadRight.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('In Your Block Walk and Dodge',
      formation:Formation('Blocks RH'),
      group:'In Your Block',
      paths:[
          Forward_4,

          Stand +
          DodgeRight.changeBeats(4).scale(2.0,2.0),

          Forward_4,

          Stand +
          DodgeRight.changeBeats(4).scale(2.0,2.0)
      ]),

    AnimatedCall('In Your Block Wheel Thru',
      formation:Formation('Facing Blocks Left'),
      group:'In Your Block',
      paths:[
          LeadRight.changeBeats(4).scale(4.0,4.0),

          QuarterRight.changeBeats(4),

          LeadRight.changeBeats(4).scale(4.0,4.0),

          QuarterRight.changeBeats(4)
      ]),

    AnimatedCall('In Your Block Zing',
      formation:Formation('Blocks RH'),
      group:'In Your Block',
      paths:[
          Forward_3.changeBeats(4.5) +
          QuarterRight.skew(1.0,0.0),

          RunLeft.scale(1.0,0.5).skew(-2.0,0.0) +
          LeadLeft.changeBeats(3).scale(2.0,1.0),

          Forward_3.changeBeats(4.5) +
          QuarterRight.skew(1.0,0.0),

          RunLeft.scale(1.0,0.5).skew(-2.0,0.0) +
          LeadLeft.changeBeats(3).scale(2.0,1.0)
      ]),
  ];

