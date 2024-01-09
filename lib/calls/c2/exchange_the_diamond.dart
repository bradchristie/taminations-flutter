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

  final List<AnimatedCall> ExchangeTheDiamond = [

    AnimatedCall('Exchange the Diamond',
      formation:Formation('Diamonds RH Girl Points'),
      from:'Right-Hand Diamonds',parts:'3;3;3',
      paths:[
          LeadRight.changeBeats(3).scale(2.0,1.0) +
          LeadRight.changeBeats(3).scale(1.0,2.0) +
          LeadLeft.changeBeats(3).scale(3.0,3.0) +
          LeadLeft.changeBeats(3).scale(1.0,3.0),

          LeadRight.changeBeats(3).scale(1.0,3.0) +
          LeadLeft.changeBeats(3).scale(3.0,3.0) +
          LeadLeft.changeBeats(3).scale(1.0,3.0) +
          LeadLeft.changeBeats(3).scale(3.0,1.0),

          LeadLeft.changeBeats(3).scale(3.0,3.0) +
          LeadLeft.changeBeats(3).scale(1.0,3.0) +
          LeadLeft.changeBeats(3).scale(3.0,1.0) +
          LeadLeft.changeBeats(3).scale(1.0,3.0),

          LeadRight.changeBeats(3).scale(1.0,3.0) +
          LeadRight.changeBeats(3).scale(2.0,1.0) +
          LeadRight.changeBeats(3).scale(1.0,2.0) +
          LeadLeft.changeBeats(3).scale(3.0,3.0)
      ]),

    AnimatedCall('Exchange the Diamond',
      formation:Formation('Diamonds LH Girl Points'),
      from:'Left-Hand Diamonds',parts:'3;3;3',
      paths:[
          LeadLeft.changeBeats(3).scale(2.0,1.0) +
          LeadLeft.changeBeats(3).scale(1.0,2.0) +
          LeadRight.changeBeats(3).scale(3.0,3.0) +
          LeadRight.changeBeats(3).scale(1.0,3.0),

          LeadLeft.changeBeats(3).scale(1.0,3.0) +
          LeadLeft.changeBeats(3).scale(2.0,1.0) +
          LeadLeft.changeBeats(3).scale(1.0,2.0) +
          LeadRight.changeBeats(3).scale(3.0,3.0),

          LeadRight.changeBeats(3).scale(3.0,3.0) +
          LeadRight.changeBeats(3).scale(1.0,3.0) +
          LeadRight.changeBeats(3).scale(3.0,1.0) +
          LeadRight.changeBeats(3).scale(1.0,3.0),

          LeadLeft.changeBeats(3).scale(1.0,3.0) +
          LeadRight.changeBeats(3).scale(3.0,3.0) +
          LeadRight.changeBeats(3).scale(1.0,3.0) +
          LeadRight.changeBeats(3).scale(3.0,1.0)
      ]),

    AnimatedCall('Exchange the Diamond',
      formation:Formation('Diamonds Facing Girl Points'),
      from:'Facing Diamonds, Right-Hand Centers',parts:'3;3;3',
      paths:[
          LeadRight.changeBeats(3).scale(2.0,1.0) +
          LeadRight.changeBeats(3).scale(1.0,2.0) +
          LeadLeft.changeBeats(3).scale(3.0,3.0) +
          QuarterLeft.changeBeats(1).skew(0.0,1.0) +
          ExtendRight.changeBeats(2).scale(2.0,1.0),

          QuarterLeft.changeBeats(1).skew(0.0,1.0) +
          ExtendRight.changeBeats(2).scale(2.0,1.0) +
          LeadLeft.changeBeats(3).scale(2.0,1.0) +
          LeadLeft.changeBeats(3).scale(1.0,2.0) +
          LeadRight.changeBeats(3).scale(3.0,3.0),

          LeadLeft.changeBeats(3).scale(3.0,3.0) +
          LeadLeft.changeBeats(3).scale(1.0,3.0) +
          ExtendLeft.changeBeats(2).scale(2.0,1.0) +
          QuarterLeft.changeBeats(1).skew(1.0,0.0) +
          LeadLeft.changeBeats(3).scale(1.0,3.0),

          LeadLeft.changeBeats(3).scale(1.0,3.0) +
          LeadRight.changeBeats(3).scale(3.0,3.0) +
          LeadRight.changeBeats(3).scale(1.0,3.0) +
          LeadRight.changeBeats(3).scale(3.0,1.0)
      ]),

    AnimatedCall('Exchange the Diamond',
      formation:Formation('Diamonds Facing LH Girl Points'),
      from:'Facing Diamonds, Left-Hand Centers',parts:'3;3;3',
      paths:[
          ExtendLeft.changeBeats(1.5) +
          QuarterLeft.changeBeats(1.5).skew(1.0,0.0) +
          LeadLeft.changeBeats(3).scale(1.0,2.0) +
          LeadRight.changeBeats(3).scale(3.0,3.0) +
          LeadRight.changeBeats(3).scale(1.0,3.0),

          LeadRight.changeBeats(3).scale(1.0,3.0) +
          LeadLeft.changeBeats(3).scale(3.0,3.0) +
          QuarterLeft.changeBeats(1).skew(0.0,1.0) +
          ExtendRight.changeBeats(2).scale(2.0,1.0) +
          ExtendLeft.changeBeats(2).scale(2.0,1.0) +
          QuarterLeft.changeBeats(1).skew(1.0,0.0),

          LeadRight.changeBeats(3).scale(3.0,3.0) +
          LeadRight.changeBeats(3).scale(1.0,3.0) +
          LeadRight.changeBeats(3).scale(3.0,1.0) +
          LeadRight.changeBeats(3).scale(1.0,3.0),

          LeadRight.changeBeats(3).scale(1.0,3.0) +
          LeadRight.changeBeats(3).scale(2.0,1.0) +
          LeadRight.changeBeats(3).scale(1.0,2.0) +
          LeadLeft.changeBeats(3).scale(3.0,3.0)
      ]),

    AnimatedCall('Exchange the Diamond',
      formation:Formation('Diamonds RH PTP Girl Points'),
      from:'Right-Hand Point-to-Point Diamonds',parts:'3;3;3',
      paths:[
          LeadRight.changeBeats(3).scale(2.0,1.0) +
          LeadLeft.changeBeats(3).scale(2.0,4.0) +
          LeadLeft.changeBeats(3).scale(2.0,2.0) +
          LeadLeft.changeBeats(3).scale(1.0,2.0),

          LeadLeft.changeBeats(3).scale(2.0,4.0) +
          LeadLeft.changeBeats(3).scale(2.0,2.0) +
          LeadLeft.changeBeats(3).scale(1.0,2.0) +
          LeadLeft.changeBeats(3).scale(2.0,1.0),

          LeadRight.changeBeats(3).scale(2.0,1.0) +
          LeadRight.changeBeats(3).scale(1.0,2.0) +
          LeadRight.changeBeats(3).scale(2.0,1.0) +
          LeadLeft.changeBeats(3).scale(1.0,4.0),

          LeadRight.changeBeats(3).scale(1.0,2.0) +
          LeadRight.changeBeats(3).scale(2.0,1.0) +
          LeadLeft.changeBeats(3).scale(1.0,4.0) +
          LeadLeft.changeBeats(3).scale(2.0,1.0)
      ]),

    AnimatedCall('Exchange the Diamond',
      formation:Formation('Diamonds LH PTP Girl Points'),
      from:'Left-Hand Point-to-Point Diamonds',parts:'3;3;3',
      paths:[
          LeadLeft.changeBeats(3).scale(2.0,1.0) +
          LeadLeft.changeBeats(3).scale(1.0,2.0) +
          LeadLeft.changeBeats(3).scale(2.0,1.0) +
          LeadRight.changeBeats(3).scale(1.0,4.0),

          LeadRight.changeBeats(3).scale(2.0,4.0) +
          LeadRight.changeBeats(3).scale(2.0,2.0) +
          LeadRight.changeBeats(3).scale(1.0,2.0) +
          LeadRight.changeBeats(3).scale(2.0,1.0),

          LeadLeft.changeBeats(3).scale(2.0,1.0) +
          LeadRight.changeBeats(3).scale(2.0,4.0) +
          LeadRight.changeBeats(3).scale(2.0,2.0) +
          LeadRight.changeBeats(3).scale(1.0,2.0),

          LeadLeft.changeBeats(3).scale(1.0,2.0) +
          LeadLeft.changeBeats(3).scale(2.0,1.0) +
          LeadRight.changeBeats(3).scale(1.0,4.0) +
          LeadRight.changeBeats(3).scale(2.0,1.0)
      ]),

    AnimatedCall('Exchange the Diamond',
      formation:Formation('Diamonds Facing PTP'),
      from:'Facing Point-to-Point Diamonds, Right-Hand Centers',
      paths:[
          LeadRight.changeBeats(3).scale(2.0,1.0) +
          LeadLeft.changeBeats(3).scale(2.0,4.0) +
          LeadLeft.changeBeats(1.5) +
          ExtendRight.changeBeats(1.5) +
          QuarterLeft.changeBeats(1).skew(0.0,1.0) +
          ExtendRight.changeBeats(2),

          LeadRight.changeBeats(3).scale(2.0,4.0) +
          LeadRight.changeBeats(3).scale(2.0,2.0) +
          Forward +
          QuarterRight.changeBeats(2).skew(0.0,-2.0) +
          LeadRight.changeBeats(3).scale(2.0,1.0),

          Forward +
          LeadRight.changeBeats(2) +
          LeadRight.changeBeats(3).scale(1.0,2.0) +
          LeadRight.changeBeats(3).scale(2.0,1.0) +
          LeadLeft.changeBeats(3).scale(1.0,4.0),

          QuarterLeft.changeBeats(1).skew(0.0,1.0) +
          ExtendRight.changeBeats(2) +
          LeadLeft.changeBeats(3).scale(2.0,1.0) +
          LeadRight.changeBeats(3).scale(1.0,4.0) +
          Forward +
          LeadRight.changeBeats(2)
      ]),

    AnimatedCall('Exchange the Diamond',
      formation:Formation('Diamonds Facing LH PTP'),
      from:'Facing Point-to-Point Diamonds, Left-Hand Centers',
      paths:[
          ExtendLeft.changeBeats(2) +
          QuarterLeft.changeBeats(1).skew(1.0,0.0) +
          LeadLeft.changeBeats(3).scale(1.0,2.0) +
          LeadLeft.changeBeats(3).scale(2.0,1.0) +
          LeadRight.changeBeats(3).scale(1.0,4.0),

          LeadLeft.changeBeats(3).scale(2.0,4.0) +
          LeadLeft.changeBeats(3).scale(2.0,2.0) +
          LeadLeft.changeBeats(3).scale(1.0,2.0) +
          LeadLeft.changeBeats(3).scale(2.0,1.0),

          LeadLeft.changeBeats(3).scale(2.0,1.0) +
          LeadRight.changeBeats(3).scale(2.0,4.0) +
          LeadRight.changeBeats(3).scale(2.0,2.0) +
          LeadRight.changeBeats(2) +
          Forward,

          LeadRight.changeBeats(2) +
          Forward +
          LeadRight.changeBeats(3).scale(2.0,1.0) +
          LeadLeft.changeBeats(3).scale(1.0,4.0) +
          ExtendLeft +
          QuarterLeft.changeBeats(1).skew(1.0,0.0)
      ]),
  ];

