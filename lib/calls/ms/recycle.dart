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

  final List<AnimatedCall> Recycle = [

    AnimatedCall('Recycle',
      formation:Formations.WaveRH,
      from:'Right-Hand Wave',difficulty: 1,
      paths:[
          RunRight.changeBeats(4).skew(1.5,-2.0),

          RunRight.changeBeats(2).scale(0.5,0.5).skew(-0.75,0.0) +
          RunRight.changeBeats(2).scale(0.5,0.5).skew(0.75,0.0)
      ]),

    AnimatedCall('Recycle',
      formation:Formations.WaveLHBoysCenter,
      from:'Left-Hand Wave',difficulty: 1,
      paths:[
          RunLeft.changeBeats(2).scale(0.5,0.5).skew(-0.75,0.0) +
          RunLeft.changeBeats(2).scale(0.5,0.5).skew(0.75,0.0),

          RunLeft.changeBeats(4).skew(1.5,2.0)
      ]),

    AnimatedCall('Recycle',
      formation:Formations.OceanWavesRHBGGB,
      from:'Right-Hand Waves',difficulty: 1,
      paths:[
          RunRight.changeBeats(4).skew(1.0,-2.0),

          RunRight.changeBeats(2).scale(0.5,0.5).skew(-0.5,0.0) +
          RunRight.changeBeats(2).scale(0.5,0.5).skew(0.5,0.0),

          RunRight.changeBeats(2).scale(0.5,0.5).skew(-0.5,0.0) +
          RunRight.changeBeats(2).scale(0.5,0.5).skew(0.5,0.0),

          RunRight.changeBeats(4).skew(1.0,-2.0)
      ]),

    AnimatedCall('Recycle',
      formation:Formations.OceanWavesLHGBBG,
      from:'Left-Hand Waves',difficulty: 1,
      paths:[
          RunLeft.changeBeats(4).skew(1.0,2.0),

          RunLeft.changeBeats(2).scale(0.5,0.5).skew(-0.5,0.0) +
          RunLeft.changeBeats(2).scale(0.5,0.5).skew(0.5,0.0),

          RunLeft.changeBeats(2).scale(0.5,0.5).skew(-0.5,0.0) +
          RunLeft.changeBeats(2).scale(0.5,0.5).skew(0.5,0.0),

          RunLeft.changeBeats(4).skew(1.0,2.0)
      ]),

    AnimatedCall('Recycle',
      formation:Formations.TidalWaveRHBGGB,
      from:'Right-Hand Tidal Wave',difficulty: 2,
      paths:[
          RunRight.changeBeats(4).skew(2.0,-0.5),

          RunRight.changeBeats(2).scale(0.5,0.5).skew(-0.5,0.0) +
          UmTurnRight.changeBeats(2).skew(1.5,-0.5),

          RunRight.changeBeats(2).scale(0.5,0.5).skew(-0.5,0.0) +
          UmTurnRight.changeBeats(2).skew(1.5,-0.5),

          RunRight.changeBeats(4).skew(2.0,-0.5)
      ]),

    AnimatedCall('Recycle',
      formation:Formations.TidalWaveLHBGGB,
      from:'Left-Hand Tidal Wave',difficulty: 2,
      paths:[
          RunLeft.changeBeats(4).skew(2.0,0.5),

          RunLeft.changeBeats(2).scale(0.5,0.5).skew(-0.5,0.0) +
          UmTurnLeft.changeBeats(2).skew(1.5,0.5),

          RunLeft.changeBeats(2).scale(0.5,0.5).skew(-0.5,0.0) +
          UmTurnLeft.changeBeats(2).skew(1.5,0.5),

          RunLeft.changeBeats(4).skew(2.0,0.5)
      ]),

    AnimatedCall('Recycle',
      formation:Formations.TharRHBoys,
      from:'Thar',difficulty: 2,
      paths:[
          RunLeft.changeBeats(2).scale(0.5,0.5).skew(-1.5,0.0) +
          RunLeft.changeBeats(2).scale(0.5,0.5).skew(1.5,0.0),

          RunLeft.changeBeats(4).skew(3.0,2.0),

          RunLeft.changeBeats(2).scale(0.5,0.5).skew(-1.5,0.0) +
          RunLeft.changeBeats(2).scale(0.5,0.5).skew(1.5,0.0),

          RunLeft.changeBeats(4).skew(3.0,2.0)
      ]),
  ];

