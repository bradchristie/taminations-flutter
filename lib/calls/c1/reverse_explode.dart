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
import '../../common_dart.dart';
import '../../moves.dart';

  final List<AnimatedCall> ReverseExplode = [

    AnimatedCall('Reverse Explode',
      formation:Formation('Wave RH'),
      from:'Right-Hand Wave',
      paths:[
          QuarterLeft.skew(1.0,-1.0),

          LeadRight
      ]),

    AnimatedCall('Reverse Explode',
      formation:Formation('Wave LH'),
      from:'Left-Hand Wave',
      paths:[
          QuarterRight.skew(1.0,1.0),

          LeadLeft
      ]),

    AnimatedCall('Reverse Explode',
      formation:Formation('Ocean Waves RH BGGB'),
      from:'Right-Hand Waves',
      paths:[
          QuarterLeft.skew(1.0,-1.0),

          LeadRight,

          LeadRight,

          QuarterLeft.skew(1.0,-1.0)
      ]),

    AnimatedCall('Reverse Explode',
      formation:Formation('Ocean Waves LH BGGB'),
      from:'Left-Hand Waves',
      paths:[
          QuarterRight.skew(1.0,1.0),

          LeadLeft,

          LeadLeft,

          QuarterRight.skew(1.0,1.0)
      ]),

    AnimatedCall('Reverse Explode',
      formation:Formation('Tidal Wave RH BGGB'),
      from:'Right-Hand Tidal Wave',
      paths:[
          QuarterLeft.skew(1.0,-0.5),

          LeadRight.scale(1.0,0.5),

          LeadRight.scale(1.0,0.5),

          QuarterLeft.skew(1.0,-0.5)
      ]),

    AnimatedCall('Reverse Explode',
      formation:Formation('Tidal Wave LH BGGB'),
      from:'Left-Hand Tidal Wave',
      paths:[
          QuarterRight.skew(1.0,0.5),

          LeadLeft.scale(1.0,0.5),

          LeadLeft.scale(1.0,0.5),

          QuarterRight.skew(1.0,0.5)
      ]),

    AnimatedCall('All 8 Reverse Explode',
      formation:Formation('Thar LH Boys'),
      group:' ',
      paths:[
          LeadRight.changeBeats(3).scale(1.0,2.0),

          QuarterLeft.changeBeats(3).skew(1.0,0.0),

          LeadRight.changeBeats(3).scale(1.0,2.0),

          QuarterLeft.changeBeats(3).skew(1.0,0.0)
      ]),

    AnimatedCall('As Couples Reverse Explode',
      formation:Formation('Two-Faced Tidal Line RH'),
      group:' ',
      paths:[
          QuarterLeft.changeBeats(3).changehands(Hands.RIGHT).skew(1.0,-1.5),

          QuarterLeft.changeBeats(3).changehands(Hands.LEFT).skew(3.0,-0.5),

          LeadRight.changeBeats(3).changehands(Hands.LEFT).scale(1.0,0.5),

          LeadRight.changeBeats(3).changehands(Hands.RIGHT).scale(3.0,1.5)
      ]),

    AnimatedCall('Concentric Reverse Explode',
      formation:Formation('Tidal Wave RH BGGB'),
      group:' ',
      paths:[
          Forward_2 +
          QuarterLeft.changeBeats(2).skew(1.0,-1.5),

          Forward_2 +
          QuarterRight.changeBeats(2).skew(1.0,0.5),

          LeadLeft.changeBeats(4).scale(1.0,0.5),

          LeadRight.changeBeats(4).scale(1.0,1.5)
      ]),

    AnimatedCall('Stretch Reverse Explode',
      formation:Formation('Ocean Waves RH BGGB'),
      from:'Right-Hand Waves',group:' ',
      paths:[
          Forward_2 +
          QuarterLeft.skew(1.0,-1.0),

          LeadRight,

          Forward_2 +
          LeadRight,

          QuarterLeft.skew(1.0,-1.0)
      ]),

    AnimatedCall('Tandem Reverse Explode',
      formation:Formation('Ocean Waves RH BGGB'),
      group:' ',
      paths:[
          ExtendRight.changeBeats(3).scale(2.5,1.5) +
          QuarterLeft.skew(0.5,-0.5),

          QuarterRight.changeBeats(4).skew(-1.0,-2.0),

          Forward_2 +
          QuarterRight.skew(1.0,0.0),

          QuarterLeft.changeBeats(4).skew(-1.0,0.0)
      ]),
  ];

