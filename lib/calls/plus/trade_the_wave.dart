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

  final List<AnimatedCall> TradeTheWave = [

    AnimatedCall('Trade the Wave',
      formation:Formations.WaveRHBoysCenter,
      from:'Right-Hand Wave',difficulty: 2,
      paths:[
          RunLeft.changeBeats(6).scale(0.5,2.0),

          RunRight.changeBeats(6).scale(1.5,2.0)
      ]),

    AnimatedCall('Trade the Wave',
      formation:Formations.CompactWaveRH,
      from:'Compact Right-Hand Wave',noDisplay: true,
      paths:[
          RunRight.changeBeats(6).scale(1.5,1.0),

          RunLeft.changeBeats(6).scale(0.5,1.0)
      ]),

    AnimatedCall('Trade the Wave',
      formation:Formations.WaveLHBoysCenter,
      from:'Left-Hand Wave',difficulty: 1,
      paths:[
          RunRight.changeBeats(6).scale(1.5,2.0),

          RunLeft.changeBeats(6).scale(0.5,2.0)
      ]),

    AnimatedCall('Trade the Wave',
      formation:Formations.CompactWaveLH,
      from:'Compact Left-Hand Wave',noDisplay: true,
      paths:[
          RunLeft.changeBeats(6).scale(0.5,1.0),

          RunRight.changeBeats(6).scale(1.5,1.0)
      ]),

    AnimatedCall('Trade the Wave',
      formation:Formations.OceanWavesRHBGGB,
      from:'Right-Hand Waves',difficulty: 2,
      paths:[
          RunRight.changeBeats(6).scale(1.5,2.0),

          RunLeft.changeBeats(6).scale(0.5,2.0),

          RunLeft.changeBeats(6).scale(0.5,2.0),

          RunRight.changeBeats(6).scale(1.5,2.0)
      ]),

    AnimatedCall('Trade the Wave',
      formation:Formations.OceanWavesLHGBBG,
      from:'Left-Hand Waves',difficulty: 1,
      paths:[
          RunLeft.changeBeats(6).scale(0.5,2.0),

          RunRight.changeBeats(6).scale(1.5,2.0),

          RunRight.changeBeats(6).scale(1.5,2.0),

          RunLeft.changeBeats(6).scale(0.5,2.0)
      ]),

    AnimatedCall('Trade the Wave',
      formation:Formations.TidalWaveRHBGGB,
      from:'Right-Hand Tidal Wave',difficulty: 2,
      paths:[
          RunRight.changeBeats(6).scale(1.5,1.0),

          RunLeft.changeBeats(6).scale(0.5,1.0),

          RunLeft.changeBeats(6).scale(0.5,1.0),

          RunRight.changeBeats(6).scale(1.5,1.0)
      ]),

    AnimatedCall('Trade the Wave',
      formation:Formations.TidalWaveLHBGGB,
      from:'Left-Hand Tidal Wave',difficulty: 2,
      paths:[
          RunLeft.changeBeats(6).scale(0.5,1.0),

          RunRight.changeBeats(6).scale(1.5,1.0),

          RunRight.changeBeats(6).scale(1.5,1.0),

          RunLeft.changeBeats(6).scale(0.5,1.0)
      ]),
  ];

