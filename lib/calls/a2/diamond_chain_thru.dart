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

  final List<AnimatedCall> DiamondChainThru = [ 

    AnimatedCall('Diamond Chain Thru',
      formation:Formations.DiamondsRHGirlPoints,
      from:'Right-Hand Diamonds',parts:'3;3',
      paths:[
          LeadRight.changeBeats(3).scale(3.0,1.0),

          LeadRight.changeBeats(3).scale(1.0,3.0) +
          SwingLeft +
          CastRight,

          LeadRight.changeBeats(3).scale(3.0,1.0),

          LeadRight.changeBeats(3).scale(1.0,3.0) +
          Stand.changeBeats(3) +
          CastRight
      ]),

    AnimatedCall('Diamond Chain Thru',
      formation:Formations.DiamondsLHGirlPoints,
      from:'Left-Hand Diamonds',parts:'3;3',
      paths:[
          LeadLeft.changeBeats(3).scale(3.0,1.0),

          LeadLeft.changeBeats(3).scale(1.0,3.0) +
          Stand.changeBeats(3) +
          CastLeft,

          LeadLeft.changeBeats(3).scale(3.0,1.0),

          LeadLeft.changeBeats(3).scale(1.0,3.0) +
          SwingRight +
          CastLeft
      ]),

    AnimatedCall('Diamond Chain Thru',
      formation:Formations.DiamondsFacingGirlPoints,
      from:'Facing Diamonds, Right-Hand Centers',parts:'3;3',
      paths:[
          Forward_2 +
          LeadRight,

          QuarterLeft.changeBeats(1) +
          Forward +
          ExtendRight.changeBeats(2).scale(2.0,1.0) +
          Stand.changeBeats(3) +
          CastLeft,

          Forward_2 +
          LeadRight,

          QuarterLeft.changeBeats(1) +
          Forward +
          ExtendRight.changeBeats(2).scale(2.0,1.0) +
          SwingRight +
          CastLeft
      ]),

    AnimatedCall('Diamond Chain Thru',
      formation:Formations.DiamondsFacingLHGirlPoints,
      from:'Facing Diamonds, Left-Hand Centers',parts:'3;3',
      paths:[
          LeadLeft.changeBeats(3).scale(3.0,1.0),

          LeadRight.scale(1.5,1.0) +
          ExtendRight.changeBeats(2).scale(2.0,0.5) +
          SwingLeft +
          CastRight,

          LeadLeft.changeBeats(3).scale(3.0,1.0),

          LeadRight.scale(1.5,1.0) +
          ExtendRight.changeBeats(2).scale(2.0,0.5) +
          Stand.changeBeats(3) +
          CastRight
      ]),
  ];

