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

  final List<AnimatedCall> SwitchToADiamond = [

    AnimatedCall('Switch to a Diamond',
      formation:Formation('Wave RH'),
      from:'Right-Hand Wave',
      paths:[
          LeadRight.changeBeats(3).scale(1.0,3.0),

          RunRight
      ]),

    AnimatedCall('Switch to a Diamond',
      formation:Formation('Wave LH'),
      from:'Left-Hand Wave',
      paths:[
          LeadLeft.changeBeats(3).scale(1.0,3.0),

          RunLeft
      ]),

    AnimatedCall('Switch to a Diamond',
      formation:Formation('Ocean Waves RH GBBG'),
      from:'Right-Hand Waves',
      paths:[
          LeadRight.changeBeats(3).scale(1.0,3.0),

          RunRight,

          RunRight,

          LeadRight.changeBeats(3).scale(1.0,3.0)
      ]),

    AnimatedCall('Switch to a Diamond',
      formation:Formation('Ocean Waves LH GBBG'),
      from:'Left-Hand Waves',
      paths:[
          LeadLeft.changeBeats(3).scale(1.0,3.0),

          RunLeft,

          RunLeft,

          LeadLeft.changeBeats(3).scale(1.0,3.0)
      ]),

    AnimatedCall('Switch to a Diamond',
      formation:Formation('Tidal Wave RH BGGB'),
      from:'Right-Hand Tidal Wave',
      paths:[
          LeadRight.changeBeats(3).scale(1.0,1.5),

          RunRight.scale(0.5,0.5),

          RunRight.scale(0.5,0.5),

          LeadRight.changeBeats(3).scale(1.0,1.5)
      ]),

    AnimatedCall('Switch to a Diamond',
      formation:Formation('Tidal Wave LH BGGB'),
      from:'Left-Hand Tidal Wave',
      paths:[
          LeadLeft.changeBeats(3).scale(1.0,1.5),

          RunLeft.scale(0.5,0.5),

          RunLeft.scale(0.5,0.5),

          LeadLeft.changeBeats(3).scale(1.0,1.5)
      ]),

    AnimatedCall('Switch to an Hourglass',
      formation:Formation('Ocean Waves RH GBBG'),
      from:'Right-Hand Waves',
      paths:[
          ExtendRight.changeBeats(3).scale(2.0,2.0),

          RunRight,

          RunRight,

          LeadRight.changeBeats(3).scale(1.0,3.0)
      ]),

    AnimatedCall('Switch to an Hourglass',
      formation:Formation('Ocean Waves LH GBBG'),
      from:'Left-Hand Waves',
      paths:[
          LeadLeft.changeBeats(3).scale(1.0,3.0),

          RunLeft,

          RunLeft,

          ExtendLeft.changeBeats(3).scale(2.0,2.0)
      ]),
  ];

