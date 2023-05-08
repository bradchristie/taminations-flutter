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

  final List<AnimatedCall> SwitchTheWave = [

    AnimatedCall('Switch the Wave',
      formation:Formation('Wave RH Boys Center'),
      from:'Right-Hand Wave',
      paths:[
          RunRight.changeBeats(6),

          RunRight.changeBeats(6).scale(1.0,2.0)
      ]),

    AnimatedCall('Switch the Wave',
      formation:Formation('Compact Wave RH'),
      from:'Compact Right-Hand Wave',noDisplay: true,
      paths:[
          RunRight.changeBeats(6),

          RunRight.changeBeats(6).scale(0.5,0.5)
      ]),

    AnimatedCall('Switch the Wave',
      formation:Formation('Wave LH'),
      from:'Left-Hand Wave',
      paths:[
          RunLeft.changeBeats(6).scale(1.0,2.0),

          RunLeft.changeBeats(6)
      ]),

    AnimatedCall('Switch the Wave',
      formation:Formation('Compact Wave LH'),
      from:'Compact Left-Hand Wave',noDisplay: true,
      paths:[
          RunLeft.changeBeats(6),

          RunLeft.changeBeats(6).scale(0.5,0.5)
      ]),

    AnimatedCall('Switch the Wave',
      formation:Formation('Ocean Waves RH GBBG'),
      from:'Right-Hand Waves',
      paths:[
          RunRight.changeBeats(6).scale(1.0,2.0),

          RunRight,

          RunRight,

          RunRight.changeBeats(6).scale(1.0,2.0)
      ]),

    AnimatedCall('Switch the Wave',
      formation:Formation('Ocean Waves LH GBBG'),
      from:'Left-Hand Waves',
      paths:[
          RunLeft.changeBeats(6).scale(1.0,2.0),

          RunLeft,

          RunLeft,

          RunLeft.changeBeats(6).scale(1.0,2.0)
      ]),

    AnimatedCall('Switch the Wave',
      formation:Formation('Tidal Wave RH BGGB'),
      from:'Right-Hand Tidal Wave',
      paths:[
          RunRight.changeBeats(6).scale(0.75,1.0),

          RunRight.scale(0.5,0.5),

          RunRight.scale(0.5,0.5),

          RunRight.changeBeats(6).scale(0.75,1.0)
      ]),

    AnimatedCall('Switch the Wave',
      formation:Formation('Tidal Wave LH BGGB'),
      from:'Left-Hand Tidal Wave',
      paths:[
          RunLeft.changeBeats(6).scale(0.75,1.0),

          RunLeft.scale(0.5,0.5),

          RunLeft.scale(0.5,0.5),

          RunLeft.changeBeats(6).scale(0.75,1.0)
      ]),

    AnimatedCall('As Couples Switch the Wave',
      formation:Formation('Two-Faced Tidal Line RH'),
      from:'Tidal Two-Faced Line',
      paths:[
          RunRight.changeBeats(6).changehands(2).scale(2.5,2.5),

          RunRight.changeBeats(6).changehands(1).scale(1.5,1.5),

          RunRight.changeBeats(6).changehands(1).scale(0.5,0.5),

          RunRight.changeBeats(6).changehands(2).scale(1.5,1.5)
      ]),

    AnimatedCall('All 8 Switch the Wave',
      formation:Formation('Thar LH Boys'),
      from:'Thar',
      paths:[
          RunRight,

          RunRight.changeBeats(6).scale(1.5,2.0),

          RunRight,

          RunRight.changeBeats(6).scale(1.5,2.0)
      ]),
  ];

