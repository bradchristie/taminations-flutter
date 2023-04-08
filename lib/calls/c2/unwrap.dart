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
import '../../formations.dart';
import '../../moves.dart';

  final List<AnimatedCall> Unwrap = [

    AnimatedCall('Unwrap the Diamond',
      formation:Formations.DiamondsRHGirlPoints,
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
      formation:Formations.DiamondsLHGirlPoints,
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
      formation:Formations.DiamondsRHPTPGirlPoints,
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
      formation:Formations.DiamondsLHPTPGirlPoints,
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
      formation:Formations.DiamondsFacingGirlPoints,
      from:'Facing Diamonds',
      paths:[
          LeadRight.changeBeats(3) +
          Forward_2 +
          ExtendLeft.scale(1.0,0.5),

          LeadLeft.changeBeats(3).scale(1.0,3.0) +
          LeadLeft.changeBeats(3).scale(0.5,2.0),

          LeadRight.changeBeats(2) +
          Forward +
          RunRight.scale(1.0,1.25),

          Forward_2 +
          ExtendLeft.changeBeats(4).scale(3.0,2.5)
      ]),

    AnimatedCall('Unwrap the Hourglass',
      formation:Formations.HourglassRHBP,
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
      formation:Formations.HourglassLHBP,
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
      formation:Formations.ButterflyRH,
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
      formation:Formations.ButterflyLH,
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
      formation:Formations.GalaxyRHGP,
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
      formation:Formations.GalaxyLHGP,
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
  ];

