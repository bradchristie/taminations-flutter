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

  final List<AnimatedCall> ReachOut = [

    AnimatedCall('Reach Out',
      formation:Formations.BoxRHBoysLead,
      from:'Right-Hand Box',
      paths:[
          RunRight +
          Forward_2,

          Forward_2 +
          RunLeft
      ]),

    AnimatedCall('Reach Out',
      formation:Formations.BoxLH,
      from:'Left-Hand Box',
      paths:[
          RunLeft +
          Forward_2,

          Forward_2 +
          RunRight
      ]),

    AnimatedCall('Reach Out',
      formation:Formations.OceanWavesRHBGBG,
      from:'Right-Hand Waves',
      paths:[
          Forward_2 +
          RunLeft.scale(1.0,0.25),

          RunRight +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          Forward_2 +
          RunLeft.scale(1.0,0.25),

          RunRight +
          ExtendRight.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Reach Out',
      formation:Formations.OceanWavesLHBGBG,
      from:'Left-Hand Waves',
      paths:[
          RunLeft +
          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          Forward_2 +
          RunRight.scale(1.0,0.25),

          RunLeft +
          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          Forward_2 +
          RunRight.scale(1.0,0.25)
      ]),

    AnimatedCall('Reach Out',
      formation:Formations.TwomFacedLinesRH,
      from:'Right-Hand Two-Faced Lines',
      paths:[
          Forward_2 +
          FlipLeft.scale(1.0,0.25),

          Forward_2 +
          FlipRight.scale(1.0,0.25),

          FlipLeft +
          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          RunRight +
          ExtendRight.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Reach Out',
      formation:Formations.TmBoneDLDL,
      from:'T-Bones',
      paths:[
          RunLeft +
          Forward,

          Forward +
          FlipLeft.scale(1.0,0.5),

          RunLeft +
          Forward,

          Forward +
          FlipLeft.scale(1.0,0.5)
      ]),
  ];

