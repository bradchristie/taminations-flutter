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

  final List<AnimatedCall> CrissCrossYourNeighbor = [

    AnimatedCall('Criss Cross Your Neighbor',
      formation:Formation('Box RH'),
      from:'Right-Hand Box',
      paths:[
          ExtendRight.changeBeats(2).scale(2.0,1.75) +
          SwingLeft.scale(0.75,0.75) +
          LeadLeft.changeBeats(3).scale(3.0,0.75),

          RunRight.scale(1.0,1.5) +
          Forward_2 +
          LeadRight.changeBeats(3).scale(1.0,2.0)
      ]),

    AnimatedCall('Criss Cross Your Neighbor',
      formation:Formation('Box LH'),
      from:'Left-Hand Box',
      paths:[
          RunLeft.scale(1.0,1.5) +
          Forward_2 +
          LeadLeft.changeBeats(3).scale(1.0,2.0),

          ExtendLeft.changeBeats(2).scale(2.0,1.75) +
          SwingRight.scale(0.75,0.75) +
          LeadRight.changeBeats(3).scale(3.0,0.75)
      ]),

    AnimatedCall('Criss Cross Your Neighbor',
      formation:Formation('Ocean Waves RH BGBG'),
      from:'Right-Hand Waves',
      paths:[
          ExtendRight.changeBeats(2).scale(2.0,1.5) +
          SwingLeft.scale(0.5,0.5) +
          LeadLeft.changeBeats(3).scale(3.0,0.5),

          RunRight.scale(1.0,1.5) +
          Forward_2 +
          LeadRight.changeBeats(3).scale(1.0,2.0),

          ExtendRight.changeBeats(2).scale(2.0,1.5) +
          SwingLeft.scale(0.5,0.5) +
          LeadLeft.changeBeats(3).scale(3.0,0.5),

          RunRight.scale(1.0,1.25) +
          Forward_2 +
          LeadRight.changeBeats(3).scale(1.0,1.5)
      ]),

    AnimatedCall('Criss Cross Your Neighbor',
      formation:Formation('Ocean Waves LH BGBG'),
      from:'Left-Hand Waves',
      paths:[
          RunLeft.scale(1.0,1.25) +
          Forward_2 +
          LeadLeft.changeBeats(3).scale(1.0,1.5),

          ExtendLeft.changeBeats(2).scale(2.0,1.5) +
          SwingRight.scale(0.5,0.5) +
          LeadRight.changeBeats(3).scale(3.0,0.5),

          RunLeft.scale(1.0,1.5) +
          Forward_2 +
          LeadLeft.changeBeats(3).scale(1.0,2.0),

          ExtendLeft.changeBeats(2).scale(2.0,1.5) +
          SwingRight.scale(0.5,0.5) +
          LeadRight.changeBeats(3).scale(3.0,0.5)
      ]),

    AnimatedCall('Criss Cross Your Neighbor',
      formation:Formation('Column RH GBGB'),
      from:'Right-Hand Columns',
      paths:[
          RunRight.changeBeats(4).scale(1.0,1.5) +
          LeadRight.changeBeats(4).scale(1.5,2.0),

          ExtendRight.changeBeats(2).scale(1.0,1.5) +
          SwingLeft.scale(0.5,0.5) +
          LeadLeft.changeBeats(3).scale(1.5,0.5),

          RunRight.changeBeats(4).scale(0.5,1.5) +
          LeadRight.changeBeats(4).scale(1.5,2.0),

          ExtendRight.changeBeats(2).scale(1.0,1.5) +
          SwingLeft.scale(0.5,0.5) +
          LeadLeft.changeBeats(3).scale(1.5,0.5)
      ]),

    AnimatedCall('Criss Cross Your Neighbor',
      formation:Formation('Column LH GBGB'),
      from:'Left-Hand Columns',
      paths:[
          ExtendLeft.changeBeats(2).scale(1.0,1.5) +
          SwingRight.scale(0.5,0.5) +
          LeadRight.changeBeats(3).scale(1.5,0.5),

          RunLeft.changeBeats(4).scale(0.5,1.5) +
          LeadLeft.changeBeats(4).scale(1.5,2.0),

          ExtendLeft.changeBeats(2).scale(1.0,1.5) +
          SwingRight.scale(0.5,0.5) +
          LeadRight.changeBeats(3).scale(1.5,0.5),

          RunLeft.changeBeats(4).scale(1.0,1.5) +
          LeadLeft.changeBeats(4).scale(1.5,2.0)
      ]),

    AnimatedCall('Criss Cross Your Neighbor',
      formation:Formation('T-Bone URUR'),
      from:'Right-Handed T-Bones',
      paths:[
          ExtendRight.changeBeats(2).scale(1.0,1.5) +
          SwingLeft.scale(0.5,0.5) +
          LeadLeft.changeBeats(3).scale(2.5,0.5),

          LeadLeft.scale(0.5,1.0) +
          RunLeft.changeBeats(6).scale(2.0,1.25),

          ExtendRight.changeBeats(2).scale(1.0,1.5) +
          SwingLeft.scale(0.5,0.5) +
          LeadLeft.changeBeats(3).scale(2.5,0.5),

          LeadLeft.scale(0.5,1.0) +
          RunLeft.changeBeats(6).scale(2.0,1.25)
      ]),

    AnimatedCall('Criss Cross Your Neighbor',
      formation:Formation('T-Bone LULU'),
      from:'Left-Handed T-Bones',
      paths:[
          LeadRight.scale(0.5,1.0) +
          RunRight.changeBeats(6).scale(2.0,1.25),

          ExtendLeft.changeBeats(2).scale(1.0,1.5) +
          SwingRight.scale(0.5,0.5) +
          LeadRight.changeBeats(3).scale(2.5,0.5),

          LeadRight.scale(0.5,1.0) +
          RunRight.changeBeats(6).scale(2.0,1.25),

          ExtendLeft.changeBeats(2).scale(1.0,1.5) +
          SwingRight.scale(0.5,0.5) +
          LeadRight.changeBeats(3).scale(2.5,0.5)
      ]),

    AnimatedCall('All 8 Criss Cross Your Neighbor',
      formation:Formation('Static MiniWaves RH'),
      group:' ',
      paths:[
          ExtendRight.changeBeats(4).scale(3.0,2.0) +
          SwingLeft +
          LeadLeft.changeBeats(4).scale(3.0,1.0),

          RunRight.changeBeats(4.5).scale(1.0,1.5).skew(-1.0,0.0) +
          Forward_3 +
          LeadRight +
          ExtendRight.changeBeats(2),

          ExtendRight.changeBeats(4).scale(3.0,2.0) +
          SwingLeft +
          LeadLeft.changeBeats(4).scale(3.0,1.0),

          RunRight.changeBeats(4.5).scale(1.0,1.5).skew(-1.0,0.0) +
          Forward_3 +
          LeadRight +
          ExtendRight.changeBeats(2)
      ]),

    AnimatedCall('As Couples Criss Cross Your Neighbor',
      formation:Formation('Two-Faced Lines RH'),
      group:' ',
      paths:[
          ExtendRight.changeBeats(3).changehands(Hands.RIGHT).scale(2.0,3.5) +
          SwingLeft.scale(0.5,0.5) +
          LeadLeft.changeBeats(3).scale(2.5,0.5),

          ExtendRight.changeBeats(3).changehands(Hands.LEFT).scale(2.0,2.5) +
          SwingLeft.scale(1.5,1.5) +
          LeadLeft.changeBeats(3).scale(3.5,1.5),

          RunRight.changeBeats(4).changehands(Hands.GRIPLEFT).scale(1.0,1.5) +
          Forward_2 +
          LeadRight.changeBeats(3).scale(0.5,2.0),

          RunRight.changeBeats(4).changehands(Hands.GRIPRIGHT).scale(2.0,3.0) +
          Forward_2 +
          LeadRight.changeBeats(3).scale(1.5,3.0)
      ]),

    AnimatedCall('Tandem Criss Cross Your Neighbor',
      formation:Formation('Column RH GBGB'),
      group:' ',
      paths:[
          RunRight.changeBeats(5).scale(1.0,2.0).skew(-1.0,0.0) +
          Forward_2 +
          LeadRight.changeBeats(2).scale(1.0,2.0) +
          Forward_2,

          Forward_2 +
          RunRight.changeBeats(5).scale(1.0,2.0).skew(-1.0,0.0) +
          Forward_2 +
          LeadRight.changeBeats(2).scale(1.0,2.0),

          ExtendRight.changeBeats(2).scale(1.0,2.0) +
          Forward +
          CounterRotateLeft_0_2.changehands(Hands.LEFT) +
          CounterRotateLeft_0_2.changehands(Hands.LEFT) +
          Forward +
          LeadLeft.changeBeats(3).scale(1.0,2.0),

          Forward +
          ExtendRight.changeBeats(2).scale(1.0,2.0) +
          CounterRotateLeft_2_0.changehands(Hands.LEFT) +
          CounterRotateLeft_2_0.changehands(Hands.LEFT) +
          Forward +
          QuarterLeft.changeBeats(3).skew(3.0,0.0)
      ]),

    AnimatedCall('Concentric Criss Cross Your Neighbor',
      formation:Formation('Column RH GBGB'),
      group:' ',
      paths:[
          LeadRight +
          LeadRight.changeBeats(6).scale(4.0,4.0) +
          LeadRight.changeBeats(5).scale(2.5,4.0),

          RunRight.changeBeats(4).scale(0.5,1.25) +
          LeadRight.changeBeats(4).scale(1.5,1.5),

          ExtendRight.changeBeats(2).scale(1.0,1.5) +
          SwingLeft.scale(0.5,0.5) +
          LeadLeft.changeBeats(3).scale(1.5,0.5),

          LeadRight.scale(0.5,1.0) +
          LeadLeft.changeBeats(3).scale(2.5,3.0) +
          LeadLeft.changeBeats(3).scale(2.0,2.5) +
          LeadLeft.changeBeats(3).scale(2.0,2.5) +
          LeadLeft.changeBeats(3).scale(3.5,2.0)
      ]),

    AnimatedCall('Pass and Roll Your Criss Cross Neighbor',
      formation:Formation('Eight Chain Thru'),
      group:' ',
      paths:[
          ExtendLeft.scale(1.0,0.5) +
          Forward_2 +
          SwingRight.scale(0.5,0.5) +
          Forward +
          ExtendRight.scale(1.0,0.5) +
          RunRight +
          LeadRight.changeBeats(3).scale(3.0,1.0),

          ExtendLeft.scale(1.0,0.5) +
          Forward_2 +
          SwingRight.scale(0.5,0.5) +
          Forward_2 +
          RunRight.changeBeats(4).scale(1.0,0.75) +
          LeadRight.changeBeats(3).scale(3.0,2.0),

          ExtendLeft.scale(1.0,0.5) +
          Forward +
          FlipRight.scale(1.0,0.5) +
          Forward_2 +
          ExtendRight.changeBeats(2) +
          SwingLeft.scale(0.5,0.5) +
          LeadLeft.changeBeats(2).scale(3.0,1.5),

          ExtendLeft.scale(1.0,0.5) +
          Forward +
          FlipRight.scale(1.0,0.5) +
          Forward_2 +
          ExtendRight.changeBeats(2) +
          SwingLeft.scale(0.5,0.5) +
          QuarterLeft.changeBeats(2).skew(3.0,-0.5)
      ]),

    AnimatedCall('Left Pass and Roll Your Criss Cross Neighbor',
      formation:Formation('Eight Chain Thru'),
      group:' ',
      paths:[
          ExtendRight.scale(1.0,0.5) +
          Forward_2 +
          SwingLeft.scale(0.5,0.5) +
          Forward_2 +
          RunLeft.changeBeats(4).scale(1.0,0.75) +
          LeadLeft.changeBeats(3).scale(3.0,2.0),

          ExtendRight.scale(1.0,0.5) +
          Forward_2 +
          SwingLeft.scale(0.5,0.5) +
          Forward +
          ExtendLeft.scale(1.0,0.5) +
          RunLeft +
          LeadLeft.changeBeats(3).scale(3.0,1.0),

          ExtendRight.scale(1.0,0.5) +
          Forward +
          FlipLeft.scale(1.0,0.5) +
          Forward_2 +
          ExtendLeft.changeBeats(2) +
          SwingRight.scale(0.5,0.5) +
          QuarterRight.changeBeats(2).skew(3.0,0.5),

          ExtendRight.scale(1.0,0.5) +
          Forward +
          FlipLeft.scale(1.0,0.5) +
          Forward_2 +
          ExtendLeft.changeBeats(2) +
          SwingRight.scale(0.5,0.5) +
          LeadRight.changeBeats(2).scale(3.0,1.5)
      ]),
  ];

