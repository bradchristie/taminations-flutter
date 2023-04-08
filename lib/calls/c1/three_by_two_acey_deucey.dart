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

  final List<AnimatedCall> ThreeByTwoAceyDeucey = [ 

    AnimatedCall('Three by Two Acey Deucey',
      formation:Formations.DiamondsRHGirlPoints,
      from:'Right-Hand Diamonds',
      paths:[
          LeadRight.changeBeats(4).scale(3.0,1.0),

          UmTurnRight.changeBeats(5).skew(0.0,-6.0),

          SwingLeft,

          LeadRight.changeBeats(4).scale(1.0,3.0)
      ]),

    AnimatedCall('Three by Two Acey Deucey',
      formation:Formations.DiamondsLHGirlPoints,
      from:'Left-Hand Diamonds',
      paths:[
          LeadLeft.changeBeats(4).scale(3.0,1.0),

          LeadLeft.changeBeats(4).scale(1.0,3.0),

          SwingRight,

          UmTurnLeft.changeBeats(5).skew(0.0,6.0)
      ]),

    AnimatedCall('Three by Two Acey Deucey',
      formation:Formations.DiamondsRHPTPGirlPoints,
      from:'Point-to-Point Diamonds',
      paths:[
          FlipRight,

          SwingLeft,

          LeadRight.changeBeats(3).scale(2.0,1.0),

          LeadRight.changeBeats(3).scale(1.0,2.0)
      ]),

    AnimatedCall('Three by Two Acey Deucey',
      formation:Formations.HourglassRHBP,
      from:'Right-Hand Hourglass',
      paths:[
          LeadRight.changeBeats(4).scale(1.0,3.0),

          LeadRight.changeBeats(4).scale(3.0,1.0),

          UmTurnRight.changeBeats(5).skew(0.0,-6.0),

          SwingRight
      ]),

    AnimatedCall('Three by Two Acey Deucey',
      formation:Formations.HourglassLHBP,
      from:'Left-Hand Hourglass',
      paths:[
          UmTurnLeft.changeBeats(5).skew(0.0,6.0),

          LeadLeft.changeBeats(4).scale(3.0,1.0),

          LeadLeft.changeBeats(4).scale(1.0,3.0),

          SwingLeft
      ]),
  ];

