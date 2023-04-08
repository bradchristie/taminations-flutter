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

import '../../common_dart.dart';
import '../../formation.dart';
import '../../formations.dart';
import '../../moves.dart';
import '../../animated_call.dart';

  final List<AnimatedCall> DropIn = [ 

    AnimatedCall('Drop In',
      formation:Formations.DiamondsRHGirlPoints,
      from:'Diamonds',
      paths:[
          Forward_2,

          LeadRight,

          Forward_2,

          LeadRight
      ]),

    AnimatedCall('Drop In',
      formation:Formations.DiamondsLHGirlPoints,
      from:'Left-Hand Diamonds',
      paths:[
          Forward_2,

          LeadLeft,

          Forward_2,

          LeadLeft
      ]),

    AnimatedCall('Drop In',
      formation:Formations.DiamondsFacingGirlPoints,
      from:'Facing Diamonds',
      paths:[
          Forward_2,

          QuarterLeft.changeBeats(2).skew(-1.0,1.0),

          Forward_2,

          QuarterLeft.changeBeats(2).skew(-1.0,1.0)
      ]),

    AnimatedCall('Drop In',
      formation:Formations.DiamondsRHPTPGirlPoints,
      from:'Point-to-Point Diamonds',
      paths:[
          Forward_2,

          QuarterRight.changeBeats(2).skew(1.0,0.0),

          Stand.changeBeats(2),

          LeadRight.changeBeats(2).scale(1.0,2.0)
      ]),

    AnimatedCall('Drop Out',
      formation:Formations.DiamondsRHGirlPoints,
      from:'Diamonds',
      paths:[
          Forward_2,

          QuarterLeft.changeBeats(2).skew(1.0,-1.0),

          Forward_2,

          QuarterLeft.changeBeats(2).skew(1.0,-1.0)
      ]),

    AnimatedCall('Drop Out',
      formation:Formations.DiamondsLHGirlPoints,
      from:'Left-Hand Diamonds',
      paths:[
          Forward_2,

          QuarterRight.changeBeats(2).skew(1.0,1.0),

          Forward_2,

          QuarterRight.changeBeats(2).skew(1.0,1.0)
      ]),

    AnimatedCall('Drop Out',
      formation:Formations.DiamondsFacingGirlPoints,
      from:'Facing Diamonds',
      paths:[
          Forward_2,

          QuarterRight.changeBeats(2).skew(-1.0,1.0),

          Forward_2,

          QuarterRight.changeBeats(2).skew(-1.0,1.0)
      ]),

    AnimatedCall('Drop Out',
      formation:Formations.DiamondsRHPTPGirlPoints,
      from:'Point-to-Point Diamonds',
      paths:[
          Forward_2,

          QuarterLeft.changeBeats(2).skew(1.0,0.0),

          Stand.changeBeats(2),

          QuarterLeft.changeBeats(2).skew(1.0,-2.0)
      ]),

    AnimatedCall('Drop Right',
      formation:Formations.DiamondRH,
      from:'Right-Hand Diamond',
      paths:[
          LeadRight.changeBeats(2),

          Forward_2
      ]),

    AnimatedCall('Drop Right',
      formation:Formations.DiamondLH,
      from:'Left-Hand Diamond',
      paths:[
          QuarterRight.changeBeats(2).skew(1.0,1.0),

          Forward_2
      ]),

    AnimatedCall('Drop Left',
      formation:Formations.DiamondRH,
      from:'Right-Hand Diamond',
      paths:[
          QuarterLeft.changeBeats(2).skew(1.0,-1.0),

          Forward_2
      ]),

    AnimatedCall('Drop Left',
      formation:Formations.DiamondLH,
      from:'Left-Hand Diamond',
      paths:[
          LeadLeft.changeBeats(2),

          Forward_2
      ]),

    AnimatedCall('Grand Drop In',
      formation:Formations.SausageRH,
      group:' ',
      paths:[
          LeadRight.changeBeats(2),

          Forward.changeBeats(2),

          Forward.changeBeats(2),

          Forward.changeBeats(2)
      ]),

    AnimatedCall('Grand Drop Out',
      formation:Formations.SausageRH,
      group:' ',
      paths:[
          QuarterLeft.changeBeats(2).skew(1.0,-1.0),

          Forward.changeBeats(2),

          Forward.changeBeats(2),

          Forward.changeBeats(2)
      ]),
  ];

