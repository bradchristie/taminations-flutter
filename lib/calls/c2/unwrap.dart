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
import '../../formation.dart';
import '../../moves.dart';

  final List<AnimatedCall> Unwrap = [

    AnimatedCall('Unwrap the Diamond',
      formation:Formation('Diamonds RH Girl Points'),
      from:'Right-Hand Diamonds',
      paths:[
          LeadRight.changeBeats(3) +
          Forward_3,

          ExtendRight.changeBeats(6).scale(5.0,2.0),

          LeadRight.changeBeats(3) +
          RunRight.skew(1.0,0.0),

          LeadRight.changeBeats(3).scale(1.0,3.0) +
          LeadRight.changeBeats(3).scale(1.0,2.0)
      ]),

    AnimatedCall('Unwrap the Diamond',
      formation:Formation('Diamonds LH Girl Points'),
      from:'Left-Hand Diamonds',
      paths:[
          LeadLeft.changeBeats(3) +
          Forward_3,

          LeadLeft.changeBeats(3).scale(1.0,3.0) +
          LeadLeft.changeBeats(3).scale(1.0,2.0),

          LeadLeft.changeBeats(3) +
          RunLeft.skew(1.0,0.0),

          ExtendLeft.changeBeats(6).scale(5.0,2.0)
      ]),

    AnimatedCall('Unwrap the Diamond',
      formation:Formation('Diamonds RH PTP Girl Points'),
      from:'Right-Hand Point-to-Point Diamonds',
      paths:[
          Forward_6,

          LeadRight.changeBeats(2).scale(1.0,2.0) +
          LeadRight.changeBeats(2).scale(2.0,1.0) +
          LeadRight.changeBeats(2).scale(1.0,2.0),

          LeadRight.changeBeats(2).scale(2.0,1.0) +
          LeadRight.changeBeats(2).scale(1.0,2.0) +
          Forward_2,

          LeadRight.changeBeats(2).scale(1.0,2.0) +
          Forward_4
      ]),

    AnimatedCall('Unwrap the Diamond',
      formation:Formation('Diamonds LH PTP Girl Points'),
      from:'Left-Hand Point-to-Point Diamonds',
      paths:[
          LeadLeft.changeBeats(2).scale(2.0,1.0) +
          LeadLeft.changeBeats(2).scale(1.0,2.0) +
          Forward_2,

          LeadLeft.changeBeats(2).scale(1.0,2.0) +
          LeadLeft.changeBeats(2).scale(2.0,1.0) +
          LeadLeft.changeBeats(2).scale(1.0,2.0),

          Forward_6,

          LeadLeft.changeBeats(2).scale(1.0,2.0) +
          Forward_4
      ]),

    AnimatedCall('Unwrap the Diamond',
      formation:Formation('Diamonds Facing Girl Points'),
      from:'Facing Diamonds, Right-Hand Wave',
      paths:[
          LeadRight.changeBeats(3) +
          Forward_2 +
          ExtendLeft,

          LeadLeft.changeBeats(3).scale(1.0,3.0) +
          LeadLeft.changeBeats(3).scale(0.5,2.0),

          LeadRight.changeBeats(2) +
          Forward +
          RunRight.scale(1.0,1.5),

          Forward_2 +
          ExtendLeft.changeBeats(4).scale(3.0,2.5)
      ]),

    AnimatedCall('Unwrap the Diamond',
        formation:Formation('Diamonds Facing LH Girl Points'),
        from:'Facing Diamonds, Left-Hand Wave',
        paths:[
          LeadLeft.changeBeats(3) +
              Forward_2 +
              ExtendLeft.scale(1,.5),

          Forward_2 +
              ExtendRight.changeBeats(4).scale(3,1),

          LeadLeft.changeBeats(2) +
              Forward +
              RunLeft.scale(1.0,.75),

          LeadRight.changeBeats(3).scale(1.0,3.0) +
              LeadRight.changeBeats(3).scale(2,2),

        ]),

    AnimatedCall('Unwrap the Hourglass',
      formation:Formation('Hourglass RH BP'),
      from:'Right-Hand Hourglass',
      paths:[
          LeadRight.changeBeats(3).scale(1.0,3.0) +
          LeadRight.changeBeats(2) +
          Forward,

          LeadRight.changeBeats(2) +
          Forward_3.changeBeats(4),

          ExtendRight.changeBeats(6).scale(5.0,2.0),

          Forward_2.changeBeats(3) +
          RunRight.skew(1.0,0.0)
      ]),

    AnimatedCall('Unwrap the Hourglass',
      formation:Formation('Hourglass LH BP'),
      from:'Left-Hand Hourglass',
      paths:[
          ExtendLeft.changeBeats(6).scale(5.0,2.0),

          LeadLeft.changeBeats(2) +
          Forward_3.changeBeats(4),

          LeadLeft.changeBeats(3).scale(1.0,3.0) +
          LeadLeft.changeBeats(2) +
          Forward,

          Forward_2.changeBeats(3) +
          RunLeft.skew(1.0,0.0)
      ]),

    AnimatedCall('Unwrap the Butterfly',
      formation:Formation('Butterfly RH'),
      from:'Right-Hand Butterfly',
      paths:[
          ExtendRight.changeBeats(2).scale(2.0,2.0) +
          Forward_2,

          RunRight.changeBeats(4).scale(1.0,2.0) +
          Forward_2,

          Forward_4,

          Forward_2 +
          RunRight
      ]),

    AnimatedCall('Unwrap the Butterfly',
      formation:Formation('Butterfly LH'),
      from:'Left-Hand Butterfly',
      paths:[
          RunLeft.changeBeats(4).scale(1.0,2.0) +
          Forward_2,

          ExtendLeft.changeBeats(2).scale(2.0,2.0) +
          Forward_2,

          Forward_2 +
          RunLeft,

          Forward_4
      ]),

    AnimatedCall('Unwrap the Galaxy',
      formation:Formation('Galaxy RH GP'),
      from:'Right-Hand Galaxy',
      paths:[
          LeadRight.changeBeats(2).scale(2.0,1.0) +
          LeadRight.changeBeats(2).scale(1.0,2.0),

          LeadRight.changeBeats(2).scale(1.0,2.0) +
          Forward_2,

          Forward_4,

          ExtendRight.changeBeats(2).scale(2.0,1.0) +
          RunRight.changeBeats(3).scale(1.0,1.5).skew(1.0,0.0)
      ]),

    AnimatedCall('Unwrap the Galaxy',
      formation:Formation('Galaxy LH GP'),
      from:'Left-Hand Galaxy',
      paths:[
          Forward_4,

          LeadLeft.changeBeats(2).scale(1.0,2.0) +
          Forward_2,

          LeadLeft.changeBeats(2).scale(2.0,1.0) +
          LeadLeft.changeBeats(2).scale(1.0,2.0),

          ExtendLeft.changeBeats(2).scale(2.0,1.0) +
          RunLeft.changeBeats(3).scale(1.0,1.5).skew(1.0,0.0)
      ]),

    AnimatedCall('Unwrap the Interlocked Diamond',
        formation:Formation('Interlocked Diamonds RH Girl Points'),
        from:'Right-Hand Diamonds',
        paths:[
          LeadRight.changeBeats(4) +
              Forward_3.changeBeats(4),

          ExtendRight.changeBeats(8).scale(5.0,2.0),

          LeadRight.changeBeats(5).scale(1, 3) +
              RunRight.skew(1.0,0.0),

          LeadRight.changeBeats(5).scale(1.0,3.0) +
              LeadRight.changeBeats(3).scale(1.0,2.0)
        ]),

    AnimatedCall('Unwrap the Interlocked Diamond',
        formation:Formation('Interlocked Diamonds LH Girl Points'),
        from:'Left-Hand Diamonds',
        paths:[
          LeadLeft.changeBeats(4) +
              Forward_3.changeBeats(4),

          LeadLeft.changeBeats(5).scale(1.0,3.0) +
              LeadLeft.changeBeats(3).scale(1.0,2.0),

          LeadLeft.changeBeats(5).scale(1, 3) +
              RunLeft.skew(1.0,0.0),

          ExtendLeft.changeBeats(8).scale(5.0,2.0)
        ]),

    AnimatedCall('Unwrap the Diamond',
        formation:Formation('Interlocked Diamonds RH PTP Girl Points'),
        from:'Right-Hand Interlocked Point-to-Point Diamonds',
        paths:[
          Forward_6,

          LeadRight.changeBeats(3).scale(1.0,3.0) +
              LeadRight.changeBeats(2).scale(2.0,1.0) +
              LeadRight.changeBeats(1),

          LeadRight.changeBeats(2).scale(2.0,1.0) +
              LeadRight.changeBeats(2).scale(1.0,2.0) +
              Forward_2,

          LeadRight.changeBeats(2).scale(1.0,2.0) +
              Forward_4
        ]),

    AnimatedCall('Unwrap the Diamond',
        formation:Formation('Interlocked Diamonds LH PTP Girl Points'),
        from:'Left-Hand Interlocked Point-to-Point Diamonds',
        paths:[
          LeadLeft.changeBeats(2).scale(2.0,1.0) +
              LeadLeft.changeBeats(2).scale(1.0,2.0) +
              Forward_2,

          LeadLeft.changeBeats(3).scale(1.0,3.0) +
              LeadLeft.changeBeats(2).scale(2.0,1.0) +
              LeadLeft.changeBeats(1),

          Forward_6,

          LeadLeft.changeBeats(2).scale(1.0,2.0) +
              Forward_4
        ]),

  ];

