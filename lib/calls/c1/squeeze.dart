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

  final List<AnimatedCall> Squeeze = [

    AnimatedCall('Ends Squeeze',
      formation:Formation('Column RH GBGB'),
      from:'Columns',
      paths:[
          HingeRight.scale(0.5,1.0) +
          LeadRight.changeBeats(3).scale(3.0,0.5),

          Path(),

          Path(),

          HingeRight.scale(0.5,1.0) +
          LeadRight.changeBeats(3).scale(3.0,0.5)
      ]),

    AnimatedCall('Ends Squeeze',
      formation:Formation('Butterfly RH'),
      from:'Butterfly',
      paths:[
          LeadRight.changeBeats(3).scale(0.5,3.0) +
          HingeRight.scale(1.0,0.5),

          LeadRight.changeBeats(3).scale(0.5,3.0) +
          HingeRight.scale(1.0,0.5),

          Path(),

          Path()
      ]),

    AnimatedCall('Squeeze',
      formation:Formation('Butterfly RH'),
      from:'Butterfly',
      paths:[
          LeadRight.changeBeats(3).scale(0.5,3.0) +
          HingeRight.scale(1.0,0.5),

          LeadRight.changeBeats(3).scale(0.5,3.0) +
          HingeRight.scale(1.0,0.5),

          HingeRight.scale(0.5,1.0) +
          LeadRight.changeBeats(3).scale(3.0,0.5),

          HingeRight.scale(0.5,1.0) +
          LeadRight.changeBeats(3).scale(3.0,0.5)
      ]),

    AnimatedCall('Squeeze',
      formation:Formation('Diamonds RH Girl Points'),
      from:'Diamonds',
      paths:[
          SwingRight +
          DodgeLeft.changeBeats(1).scale(1.0,0.25),

          DodgeRight +
          SwingRight.changehands(Hands.GRIPRIGHT).scale(0.5,1.0),

          SwingRight +
          DodgeLeft.changeBeats(1).scale(1.0,0.25),

          DodgeRight +
          SwingRight.changehands(Hands.GRIPRIGHT).scale(0.5,1.0)
      ]),

    AnimatedCall('Squeeze',
      formation:Formation('O RH'),
      from:'O',
      paths:[
          HingeRight.scale(0.5,1.0) +
          LeadRight.changeBeats(3).scale(3.0,0.5),

          HingeRight.scale(0.5,1.0) +
          LeadRight.changeBeats(3).scale(3.0,0.5),

          LeadRight.changeBeats(3).scale(0.5,3.0) +
          HingeRight.scale(1.0,0.5),

          LeadRight.changeBeats(3).scale(0.5,3.0) +
          HingeRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Centers Tandem Squeeze',
      formation:Formation('Column RH GBGB'),
      from:'Right-Hand Columns',
      paths:[
          Path(),

          CounterRotateRight_0_m2.changehands(Hands.RIGHT) +
          LeadRight.changeBeats(3).scale(2.0,2.0),

          CounterRotateRight_2_0.changehands(Hands.RIGHT) +
          Forward_2.changeBeats(1.5) +
          QuarterRight.changeBeats(1.5).skew(2.0,0.0),

          Path()
      ]),

    AnimatedCall('Centers Tandem Squeeze',
      formation:Formation('Column LH GBGB'),
      from:'Left-Hand Columns',
      paths:[
          Path(),

          CounterRotateLeft_2_0.changehands(Hands.LEFT) +
          Forward_2.changeBeats(1.5) +
          QuarterLeft.changeBeats(1.5).skew(2.0,0.0),

          CounterRotateLeft_0_2.changehands(Hands.LEFT) +
          LeadLeft.changeBeats(3).scale(2.0,2.0),

          Path()
      ]),

    AnimatedCall('Squeeze the Hourglass',
      formation:Formation('Hourglass RH BP'),
      from:'Right-Hand Hourglass',
      paths:[
          QuarterRight.changeBeats(3).skew(0.0,-3.0) +
          HingeRight.changehands(Hands.GRIPRIGHT),

          Stand.changeBeats(4.5).changehands(0),

          LeadRight.changeBeats(3).scale(1.0,3.0) +
          QuarterRight.changehands(Hands.GRIPRIGHT).skew(1.0,0.0),

          HingeRight.scale(0.5,1.0) +
          LeadRight.changeBeats(3).scale(3.1,0.5)
      ]),

    AnimatedCall('Squeeze the Hourglass',
      formation:Formation('Hourglass LH BP'),
      from:'Left-Hand Hourglass',
      paths:[
          LeadLeft.changeBeats(3).scale(1.0,3.0) +
          QuarterLeft.changehands(Hands.GRIPLEFT).skew(1.0,0.0),

          Stand.changeBeats(4.5).changehands(0),

          QuarterLeft.changeBeats(3).skew(0.0,3.0) +
          HingeLeft.changehands(Hands.GRIPLEFT),

          HingeLeft.scale(0.5,1.0) +
          LeadLeft.changeBeats(3).scale(3.1,0.5)
      ]),

    AnimatedCall('Squeeze the Galaxy',
      formation:Formation('Galaxy RH GP'),
      from:'Right-Hand Galaxy',
      paths:[
          HingeRight +
          QuarterRight.changeBeats(3).skew(3.0,0.0),

          Stand.changeBeats(4.5).changehands(0),

          QuarterRight.changehands(Hands.RIGHT).skew(0.0,-1.0) +
          LeadRight.changeBeats(3).scale(3.0,1.0),

          LeadRight.changeBeats(3).scale(0.5,3.0) +
          HingeRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Squeeze the Galaxy',
      formation:Formation('Galaxy LH GP'),
      from:'Left-Hand Galaxy',
      paths:[
          QuarterLeft.changehands(Hands.LEFT).skew(0.0,1.0) +
          LeadLeft.changeBeats(3).scale(3.0,1.0),

          Stand.changeBeats(4.5).changehands(0),

          HingeLeft +
          QuarterLeft.changeBeats(3).skew(3.0,0.0),

          LeadLeft.changeBeats(3).scale(0.5,3.0) +
          HingeLeft.scale(1.0,0.5)
      ]),
  ];

