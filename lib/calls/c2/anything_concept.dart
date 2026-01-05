/*

  Taminations Square Dance Animations
  Copyright (C) 2026 Brad Christie

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

  final List<AnimatedCall> AnythingConcept = [

    AnimatedCall('Split Counter Coordinate',
      formation:Formation('Ocean Waves RH BGGB'),
      group:' ',
      paths:[
          QuarterRight.changeBeats(4).changehands(Hands.GRIPRIGHT).skew(3.0,0.0) +
          Forward +
          HingeRight.scale(0.5,1.0) +
          HingeRight.scale(1.0,0.5),

          QuarterRight.changeBeats(4).changehands(Hands.GRIPRIGHT).skew(-1.0,-2.0) +
          LeadRight.scale(0.5,1.0) +
          LeadRight.changeBeats(3).scale(3.0,1.5),

          QuarterRight.changeBeats(4).changehands(Hands.GRIPRIGHT).skew(3.0,0.0) +
          Forward +
          HingeRight.scale(0.5,1.0) +
          HingeRight.scale(1.0,0.5),

          QuarterRight.changeBeats(4).changehands(Hands.GRIPRIGHT).skew(-1.0,-2.0) +
          Forward +
          HingeRight.scale(0.5,1.0) +
          LeadRight.changeBeats(3).scale(3.0,2.5)
      ]),

    AnimatedCall('Split Coordinate',
      formation:Formation('Column RH GBGB'),
      group:' ',
      paths:[
          FlipRight.changeBeats(2) +
          Forward +
          HingeRight.scale(0.5,1.0) +
          HingeRight.scale(1.0,0.5),

          Forward.changeBeats(2).scale(2.0,1.0) +
          LeadRight.scale(0.5,1.0) +
          LeadRight.changeBeats(3).scale(3.0,1.5),

          RunRight.changeBeats(2).scale(0.5,1.0) +
          Forward +
          HingeRight.scale(0.5,1.0) +
          HingeRight.scale(1.0,0.5),

          Forward.changeBeats(3).scale(3.0,1.0) +
          HingeRight.scale(0.5,1.0) +
          LeadRight.changeBeats(3).scale(3.0,2.5)
      ]),

    AnimatedCall('Counter Motivate',
      formation:Formation('Ocean Waves RH BGGB'),
      group:' ',
      paths:[
          LeadRight.changeBeats(5).scale(5.0,1.0) +
          ExtendRight.changeBeats(4.5).scale(2.0,2.0) +
          SwingRight +
          ExtendLeft.changeBeats(4.5).scale(2.0,2.0),

          QuarterLeft.changeBeats(5).changehands(Hands.GRIPLEFT).skew(-1.0,3.0) +
          CastLeft +
          SwingRight +
          CastLeft,

          QuarterLeft.changeBeats(5).changehands(Hands.GRIPLEFT).skew(3.0,-1.0) +
          CastLeft +
          SwingRight +
          LeadRight.changeBeats(4.5).scale(3.0,3.0),

          LeadRight.changeBeats(5).scale(1.0,5.0) +
          LeadRight.changeBeats(4.5).scale(3.0,3.0) +
          SwingRight +
          CastLeft
      ]),

    AnimatedCall('Trade Motivate',
      formation:Formation('Ocean Waves LH BGGB'),
      group:' ',
      paths:[
          RunLeft.changeBeats(4).scale(1.5,2.0) +
          CastLeft +
          SwingRight +
          LeadRight.changeBeats(4.5).scale(3.0,3.0),

          ExtendLeft.changeBeats(3).scale(3.0,2.0) +
          Forward +
          LeadRight.changeBeats(4.5).scale(3.0,3.0) +
          SwingRight +
          CastLeft,

          RunRight.changeBeats(4).scale(0.5,2.0) +
          ExtendRight.changeBeats(4.5).scale(2.0,2.0) +
          SwingRight +
          ExtendLeft.changeBeats(4.5).scale(2.0,2.0),

          ExtendLeft.changeBeats(3).scale(3.0,2.0) +
          Forward +
          CastLeft +
          SwingRight +
          CastLeft
      ]),

    AnimatedCall('Counter Percolate',
      formation:Formation('Ocean Waves RH BGGB'),
      group:' ',
      paths:[
          LeadRight.changeBeats(5).scale(5.0,1.0) +
          Forward_2 +
          HingeRight +
          ExtendRight.changeBeats(3).changehands(Hands.LEFT).scale(3.0,2.0) +
          Forward,

          QuarterLeft.changeBeats(5).changehands(Hands.GRIPLEFT).skew(-1.0,3.0) +
          LeadLeft.changeBeats(2) +
          SwingRight.scale(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,1.0),

          QuarterLeft.changeBeats(5).changehands(Hands.GRIPLEFT).skew(3.0,-1.0) +
          Forward_2 +
          HingeRight +
          Stand.changeBeats(4).changehands(0),

          LeadRight.changeBeats(5).scale(1.0,5.0) +
          LeadRight.changeBeats(2).scale(2.0,3.0) +
          SwingRight.scale(0.5,0.5) +
          Forward_2
      ]),

    AnimatedCall('Split Percolate',
      formation:Formation('Ocean Waves RH BGGB'),
      group:' ',
      paths:[
          Forward_4 +
          LeadRight.changeBeats(2).scale(2.0,3.0) +
          SwingRight.scale(0.5,0.5) +
          Forward_2,

          RunRight.changeBeats(4) +
          Forward_2 +
          HingeRight +
          ExtendRight.changeBeats(3).changehands(Hands.LEFT).scale(3.0,2.0) +
          Forward,

          Forward_4 +
          LeadLeft.changeBeats(2) +
          SwingRight.scale(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,1.0),

          RunRight.changeBeats(4) +
          Forward_2 +
          HingeRight +
          Stand.changeBeats(4).changehands(0)
      ]),

    AnimatedCall('Trade Percolate',
      formation:Formation('Ocean Waves LH BGGB'),
      group:' ',
      paths:[
          RunLeft.changeBeats(4).scale(1.5,2.0) +
          Forward_2 +
          HingeRight +
          Stand.changeBeats(4).changehands(0),

          ExtendLeft.changeBeats(3).scale(3.0,2.0) +
          Forward +
          LeadRight.changeBeats(2).scale(2.0,3.0) +
          SwingRight.scale(0.5,0.5) +
          Forward_2,

          RunRight.changeBeats(4).scale(0.5,2.0) +
          Forward_2 +
          HingeRight +
          ExtendRight.changeBeats(3).changehands(Hands.LEFT).scale(3.0,2.0) +
          Forward,

          ExtendLeft.changeBeats(3).scale(3.0,2.0) +
          Forward +
          LeadLeft.changeBeats(2) +
          SwingRight.scale(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,1.0)
      ]),
  ];

