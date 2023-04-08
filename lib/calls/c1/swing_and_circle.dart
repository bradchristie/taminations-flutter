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

  final List<AnimatedCall> SwingAndCircle = [

    AnimatedCall('Swing and Circle 1/4',
      formation:Formations.QuarterTag,
      from:'Right-Hand Quarter Tag',
      paths:[
          Stand.changeBeats(3).changehands(2) +
          ExtendLeft.changeBeats(4).scale(3.0,2.0),

          Stand.changeBeats(3).changehands(1) +
          DodgeLeft.changeBeats(4),

          SwingRight +
          SwingLeft.changeBeats(4),

          SwingRight +
          UmTurnRight.changeBeats(4).skew(3.0,-2.0)
      ]),

    AnimatedCall('Swing and Circle 1/4',
      formation:Formations.QuarterTagLH,
      from:'Left-Hand Quarter Tag',
      paths:[
          Stand.changeBeats(3).changehands(2) +
          DodgeRight.changeBeats(4),

          Stand.changeBeats(3).changehands(1) +
          ExtendRight.changeBeats(4).scale(3.0,2.0),

          SwingLeft +
          SwingRight.changeBeats(4),

          SwingLeft +
          UmTurnLeft.changeBeats(4).skew(3.0,2.0)
      ]),

    AnimatedCall('Swing and Circle 1/4',
      formation:Formations.n34Tag,
      from:'Right-Hand 3/4 Tag',
      paths:[
          Stand.changeBeats(3).changehands(2) +
          RunRight.changeBeats(4).skew(-3.0,0.0),

          Stand.changeBeats(3).changehands(1) +
          FlipRight.changeBeats(4),

          SwingRight +
          SwingLeft.changeBeats(4),

          SwingRight +
          UmTurnRight.changeBeats(4).skew(3.0,-2.0)
      ]),

    AnimatedCall('Swing and Circle 1/4',
      formation:Formations.n34TagLH,
      from:'Left-Hand 3/4 Tag',
      paths:[
          Stand.changeBeats(3).changehands(2) +
          FlipLeft.changeBeats(4),

          Stand.changeBeats(3).changehands(1) +
          RunLeft.changeBeats(4).skew(-3.0,0.0),

          SwingLeft +
          SwingRight.changeBeats(4),

          SwingLeft +
          UmTurnLeft.changeBeats(4).skew(3.0,2.0)
      ]),

    AnimatedCall('Swing and Circle 1/4',
      formation:Formations.MixedQuarterTag1,
      from:'Right-Hand Quarter Waves',
      paths:[
          Stand.changeBeats(3).changehands(2) +
          ExtendLeft.changeBeats(4).scale(3.0,2.0),

          Stand.changeBeats(3).changehands(1) +
          FlipRight.changeBeats(4),

          SwingRight +
          SwingLeft.changeBeats(4),

          SwingRight +
          UmTurnRight.changeBeats(4).skew(3.0,-2.0)
      ]),

    AnimatedCall('Swing and Circle 1/4',
      formation:Formations.MixedQuarterTag6,
      from:'Left-Hand Quarter Waves',
      paths:[
          Stand.changeBeats(3).changehands(2) +
          FlipLeft.changeBeats(4),

          Stand.changeBeats(3).changehands(1) +
          ExtendRight.changeBeats(4).scale(3.0,2.0),

          SwingLeft +
          SwingRight.changeBeats(4),

          SwingLeft +
          UmTurnLeft.changeBeats(4).skew(3.0,2.0)
      ]),

    AnimatedCall('Swing and Circle 1/4',
      formation:Formations.DiamondsRHGirlPoints,
      from:'Right-Hand Diamonds',
      paths:[
          SwingRight +
          SwingLeft.changeBeats(4),

          Stand.changeBeats(3).changehands(1) +
          QuarterRight.changeBeats(4).skew(3.0,0.0),

          SwingRight +
          UmTurnRight.changeBeats(4).skew(3.0,-2.0),

          Stand.changeBeats(3).changehands(2) +
          LeadRight.changeBeats(4).scale(1.0,3.0)
      ]),

    AnimatedCall('Swing and Circle 1/4',
      formation:Formations.DiamondsLHGirlPoints,
      from:'Left-Hand Diamonds',
      paths:[
          SwingLeft +
          SwingRight.changeBeats(4),

          Stand.changeBeats(3).changehands(1) +
          LeadLeft.changeBeats(4).scale(1.0,3.0),

          SwingLeft +
          UmTurnLeft.changeBeats(4).skew(3.0,2.0),

          Stand.changeBeats(3).changehands(2) +
          QuarterLeft.changeBeats(4).skew(3.0,0.0)
      ]),

    AnimatedCall('Swing and Circle 1/4',
      formation:Formations.MixedQuarterTag5,
      from:'Mixed Quarter Tag 1',
      paths:[
          Stand.changeBeats(3).changehands(2) +
          RunRight.changeBeats(4).skew(-3.0,0.0),

          Stand.changeBeats(3).changehands(1) +
          DodgeLeft.changeBeats(4),

          SwingRight +
          SwingLeft.changeBeats(4),

          SwingRight +
          UmTurnRight.changeBeats(4).skew(3.0,-2.0)
      ]),

    AnimatedCall('Swing and Circle 1/4',
      formation:Formations.MixedQuarterTag2,
      from:'Mixed Quarter Tag 2',
      paths:[
          Stand.changeBeats(3).changehands(2) +
          DodgeRight.changeBeats(4),

          Stand.changeBeats(3).changehands(1) +
          RunLeft.changeBeats(4).skew(-3.0,0.0),

          SwingLeft +
          SwingRight.changeBeats(4),

          SwingLeft +
          UmTurnLeft.changeBeats(4).skew(3.0,2.0)
      ]),
  ];

