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

  final List<AnimatedCall> ScatterScoot = [

    AnimatedCall('Scatter Scoot',
      formation:Formations.OceanWavesRHBGGB,
      from:'Right-Hand Waves',
      paths:[
          ExtendRight.changeBeats(1.5).scale(2.0,0.25) +
          SwingRight.scale(0.75,0.75) +
          ExtendLeft.changeBeats(1.5).scale(2.0,0.25),

          RunLeft.changeBeats(6),

          ExtendRight.changeBeats(1.5).scale(2.0,0.25) +
          SwingRight.scale(0.75,0.75) +
          ExtendLeft.changeBeats(1.5).scale(2.0,0.25),

          LeadRight.changeBeats(3).scale(2.0,3.0) +
          LeadRight.changeBeats(3).scale(3.0,2.0)
      ]),

    AnimatedCall('Scatter Scoot',
      formation:Formations.OceanWavesLHBGBG,
      from:'Left-Hand Waves',
      paths:[
          LeadLeft.changeBeats(3).scale(2.0,3.0) +
          LeadLeft.changeBeats(3).scale(3.0,2.0),

          ExtendLeft.changeBeats(1.5).scale(2.0,0.25) +
          SwingLeft.scale(0.75,0.75) +
          ExtendRight.changeBeats(1.5).scale(2.0,0.25),

          RunRight.changeBeats(6),

          ExtendLeft.changeBeats(1.5).scale(2.0,0.25) +
          SwingLeft.scale(0.75,0.75) +
          ExtendRight.changeBeats(1.5).scale(2.0,0.25)
      ]),

    AnimatedCall('Scatter Scoot',
      formation:Formations.TmBoneRDRD,
      from:'T-Bones 1',
      paths:[
          RunRight.changeBeats(6).scale(2.0,3.0),

          ExtendLeft.changeBeats(1.5).scale(1.0,0.25) +
          SwingLeft.scale(0.75,0.75) +
          ExtendRight.changeBeats(1.5).scale(1.0,0.25),

          RunLeft.changeBeats(6),

          ExtendLeft.changeBeats(1.5).scale(1.0,0.25) +
          SwingLeft.scale(0.75,0.75) +
          ExtendRight.changeBeats(1.5).scale(1.0,0.25)
      ]),

    AnimatedCall('Scatter Scoot',
      formation:Formations.TmBoneDLDL,
      from:'T-Bones 2',
      paths:[
          RunLeft.changeBeats(6).scale(2.0,3.0),

          ExtendRight.changeBeats(1.5).scale(1.0,0.25) +
          SwingRight.scale(0.75,0.75) +
          ExtendLeft.changeBeats(1.5).scale(1.0,0.25),

          RunRight.changeBeats(6),

          ExtendRight.changeBeats(1.5).scale(1.0,0.25) +
          SwingRight.scale(0.75,0.75) +
          ExtendLeft.changeBeats(1.5).scale(1.0,0.25)
      ]),

    AnimatedCall('Scatter Scoot Chain Thru',
      formation:Formations.OceanWavesRHBGBG,
      from:'Right-Hand Waves',parts:'2;3;3;3',
      paths:[
          Forward_2 +
          SwingRight +
          SwingLeft +
          SwingRight +
          Forward_2,

          FlipLeft,

          Forward_2 +
          SwingRight +
          Stand.changeBeats(3) +
          SwingRight +
          Forward_2,

          RunRight.changeBeats(6).scale(2.0,3.0)
      ]),

    AnimatedCall('Scatter Scoot Chain Thru',
      formation:Formations.OceanWavesLHBGBG,
      from:'Left-Hand Waves',parts:'2;3;3;3',
      paths:[
          RunLeft.changeBeats(6).scale(2.0,3.0),

          Forward_2 +
          SwingLeft +
          Stand.changeBeats(3) +
          SwingLeft +
          Forward_2,

          FlipRight,

          Forward_2 +
          SwingLeft +
          SwingRight +
          SwingLeft +
          Forward_2
      ]),
  ];

