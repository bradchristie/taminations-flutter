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

  final List<AnimatedCall> FlipTheLine = [

    AnimatedCall('Flip the Line 1/4',
      formation:Formations.WaveRH,
      from:'Right-Hand Wave',
      paths:[
          LeadRight.changeBeats(3.5).scale(1.0,2.0) +
          Forward,

          RunRight.scale(1.0,1.5).skew(1.0,0.0) +
          LeadRight
      ]),

    AnimatedCall('Flip the Line 1/4',
      formation:Formations.WaveLH,
      from:'Left-Hand Wave',
      paths:[
          LeadLeft.changeBeats(3.5).scale(1.0,2.0) +
          Forward,

          RunLeft.scale(1.0,1.5).skew(1.0,0.0) +
          LeadLeft
      ]),

    AnimatedCall('Flip the Line 1/4',
      formation:Formations.OceanWavesRHBGGB,
      from:'Right-Hand Waves',
      paths:[
          LeadRight.changeBeats(3.5).scale(1.0,2.0) +
          Forward,

          RunRight.scale(1.0,1.5) +
          LeadRight,

          LeadRight +
          UmTurnRight.skew(1.0,0.0),

          LeadRight.changeBeats(3.5).scale(1.0,2.0) +
          Forward
      ]),

    AnimatedCall('Flip the Line 1/4',
      formation:Formations.OceanWavesLHBGGB,
      from:'Left-Hand Waves',
      paths:[
          LeadLeft.changeBeats(3.5).scale(1.0,2.0) +
          Forward,

          LeadLeft +
          UmTurnLeft.skew(1.0,0.0),

          RunLeft.scale(1.0,1.5) +
          LeadLeft,

          LeadLeft.changeBeats(3.5).scale(1.0,2.0) +
          Forward
      ]),

    AnimatedCall('Flip the Line 1/4',
      formation:Formations.TidalWaveRHBGGB,
      from:'Right-Hand Tidal Wave',
      paths:[
          LeadRight.changeBeats(3.5),

          RunRight.scale(1.0,1.5).skew(1.0,0.0) +
          LeadRight,

          LeadRight.scale(0.5,0.5) +
          UmTurnRight.skew(0.5,-0.5),

          LeadRight.changeBeats(3.5).scale(1.0,2.0)
      ]),

    AnimatedCall('Flip the Line 1/4',
      formation:Formations.TidalWaveLHBGGB,
      from:'Left-Hand Tidal Wave',
      paths:[
          LeadLeft.changeBeats(3.5),

          RunLeft.scale(1.0,1.5).skew(1.0,0.0) +
          LeadLeft,

          LeadLeft.scale(0.5,0.5) +
          UmTurnLeft.skew(0.5,0.5),

          LeadLeft.changeBeats(3.5).scale(1.0,2.0)
      ]),

    AnimatedCall('Flip the Line 1/2',
      formation:Formations.WaveRH,
      from:'Right-Hand Wave',
      paths:[
          LeadRight.changeBeats(3.5).scale(1.0,2.0) +
          Forward_2.skew(0.5,0.0),

          RunRight +
          LeadRight +
          Forward.scale(0.5,1.0)
      ]),

    AnimatedCall('Flip the Line 1/2',
      formation:Formations.WaveLH,
      from:'Left-Hand Wave',
      paths:[
          LeadLeft.changeBeats(3.5).scale(1.0,2.0) +
          Forward_2.skew(0.5,0.0),

          RunLeft +
          LeadLeft +
          Forward.scale(0.5,1.0)
      ]),

    AnimatedCall('Flip the Line 1/2',
      formation:Formations.OceanWavesRHBGGB,
      from:'Right-Hand Waves',
      paths:[
          LeadRight.changeBeats(3.5).scale(1.0,2.0) +
          Forward_2.skew(0.5,0.0),

          RunRight +
          LeadRight +
          Forward.scale(0.5,1.0),

          RunRight +
          LeadRight +
          Forward.scale(0.5,1.0),

          LeadRight.changeBeats(3.5).scale(1.0,2.0) +
          Forward_2.skew(0.5,0.0)
      ]),

    AnimatedCall('Flip the Line 1/2',
      formation:Formations.OceanWavesLHBGGB,
      from:'Left-Hand Waves',
      paths:[
          LeadLeft.changeBeats(3.5).scale(1.0,2.0) +
          Forward_2.skew(0.5,0.0),

          RunLeft +
          LeadLeft +
          Forward.scale(0.5,1.0),

          RunLeft +
          LeadLeft +
          Forward.scale(0.5,1.0),

          LeadLeft.changeBeats(3.5).scale(1.0,2.0) +
          Forward_2.skew(0.5,0.0)
      ]),

    AnimatedCall('Flip the Line 1/2',
      formation:Formations.TidalWaveRHBGGB,
      from:'Right-Hand Tidal Wave',
      paths:[
          LeadRight.changeBeats(3.5).scale(1.0,2.5),

          RunRight.scale(0.5,0.5) +
          LeadRight.scale(1.0,0.5),

          RunRight.scale(0.5,0.5) +
          LeadRight.scale(1.0,0.5),

          LeadRight.changeBeats(3.5).scale(1.0,2.5)
      ]),

    AnimatedCall('Flip the Line 1/2',
      formation:Formations.TidalWaveLHBGGB,
      from:'Left-Hand Tidal Wave',
      paths:[
          LeadLeft.changeBeats(3.5).scale(1.0,2.5),

          RunLeft.scale(0.5,0.5) +
          LeadLeft.scale(1.0,0.5),

          RunLeft.scale(0.5,0.5) +
          LeadLeft.scale(1.0,0.5),

          LeadLeft.changeBeats(3.5).scale(1.0,2.5)
      ]),

    AnimatedCall('Flip the Line 3/4',
      formation:Formations.WaveRH,
      from:'Right-Hand Wave',
      paths:[
          LeadRight.changeBeats(3.5).scale(1.0,2.0) +
          Forward_2 +
          ExtendRight.changeBeats(2).scale(2.0,1.0),

          RunRight +
          LeadRight +
          Forward_2
      ]),

    AnimatedCall('Flip the Line 3/4',
      formation:Formations.WaveLH,
      from:'Left-Hand Wave',
      paths:[
          LeadLeft.changeBeats(3.5).scale(1.0,2.0) +
          Forward_2 +
          ExtendLeft.changeBeats(2).scale(2.0,1.0),

          RunLeft +
          LeadLeft +
          Forward_2
      ]),

    AnimatedCall('Flip the Line 3/4',
      formation:Formations.OceanWavesRHBGGB,
      from:'Right-Hand Waves',
      paths:[
          LeadRight.changeBeats(3.5).scale(1.0,2.0) +
          Forward_4,

          RunRight +
          LeadRight +
          Forward_2,

          RunRight +
          LeadRight +
          Forward_2,

          LeadRight.changeBeats(3.5).scale(1.0,2.0) +
          Forward_2 +
          ExtendRight.changeBeats(2).scale(2.0,2.0)
      ]),

    AnimatedCall('Flip the Line 3/4',
      formation:Formations.OceanWavesLHBGGB,
      from:'Left-Hand Waves',
      paths:[
          LeadLeft.changeBeats(3.5).scale(1.0,2.0) +
          Forward_2 +
          ExtendLeft.changeBeats(2).scale(2.0,2.0),

          RunLeft +
          LeadLeft +
          Forward_2,

          RunLeft +
          LeadLeft +
          Forward_2,

          LeadLeft.changeBeats(3.5).scale(1.0,2.0) +
          Forward_4
      ]),

    AnimatedCall('Flip the Line 3/4',
      formation:Formations.TidalWaveRHBGGB,
      from:'Right-Hand Tidal Wave',
      paths:[
          LeadRight.changeBeats(3).scale(1.0,1.5) +
          ExtendRight.changeBeats(2),

          RunRight.scale(0.5,1.0) +
          LeadRight.scale(1.0,0.5) +
          Forward.scale(1.5,1.0),

          RunRight.scale(0.5,0.5) +
          LeadRight.scale(1.0,0.5) +
          Forward.scale(1.5,1.0),

          LeadRight.changeBeats(3.5).scale(1.0,2.5) +
          ExtendRight.changeBeats(2)
      ]),

    AnimatedCall('Flip the Line 3/4',
      formation:Formations.TidalWaveLHBGGB,
      from:'Left-Hand Tidal Wave',
      paths:[
          LeadLeft.changeBeats(3).scale(1.0,1.5) +
          ExtendLeft.changeBeats(2),

          RunLeft.scale(0.5,1.0) +
          LeadLeft.scale(1.0,0.5) +
          Forward.scale(1.5,1.0),

          RunLeft.scale(0.5,0.5) +
          LeadLeft.scale(1.0,0.5) +
          Forward.scale(1.5,1.0),

          LeadLeft.changeBeats(3.5).scale(1.0,2.5) +
          ExtendLeft.changeBeats(2)
      ]),

    AnimatedCall('Flip the Line',
      formation:Formations.WaveRH,
      from:'Right-Hand Wave',
      paths:[
          LeadRight.changeBeats(3.5).scale(0.5,2.0) +
          Forward_2 +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          RunRight +
          LeadRight.scale(0.5,1.0) +
          Forward +
          ExtendRight.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Flip the Line',
      formation:Formations.WaveLH,
      from:'Left-Hand Wave',
      paths:[
          LeadLeft.changeBeats(3.5).scale(0.5,2.0) +
          Forward_2 +
          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          RunLeft +
          LeadLeft.scale(0.5,1.0) +
          Forward +
          ExtendLeft.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Flip the Line',
      formation:Formations.OceanWavesRHBGGB,
      from:'Right-Hand Waves',
      paths:[
          LeadRight.changeBeats(3.5).scale(1.0,2.0) +
          Forward_4,

          RunRight +
          LeadRight +
          Forward_3,

          RunRight +
          LeadRight.scale(0.5,1.0) +
          Forward +
          ExtendRight.changeBeats(2).scale(2.0,1.5),

          LeadRight.changeBeats(3.5).scale(0.5,2.0) +
          Forward_2 +
          ExtendRight.changeBeats(2).scale(2.0,1.5)
      ]),

    AnimatedCall('Flip the Line',
      formation:Formations.OceanWavesLHBGGB,
      from:'Left-Hand Waves',
      paths:[
          LeadLeft.changeBeats(3.5).scale(0.5,2.0) +
          Forward_2 +
          ExtendLeft.changeBeats(2).scale(2.0,1.5),

          RunLeft +
          LeadLeft.scale(0.5,1.0) +
          Forward +
          ExtendLeft.changeBeats(2).scale(2.0,1.5),

          RunLeft +
          LeadLeft +
          Forward_3,

          LeadLeft.changeBeats(3.5).scale(1.0,2.0) +
          Forward_4
      ]),

    AnimatedCall('Flip the Line',
      formation:Formations.TidalWaveRHBGGB,
      from:'Right-Hand Tidal Wave',
      paths:[
          LeadRight.changeBeats(3).scale(1.0,1.5) +
          ExtendRight.changeBeats(2),

          RunRight.scale(0.5,1.0) +
          LeadRight.scale(1.0,0.5) +
          ExtendRight.scale(1.5,1.0),

          RunRight.scale(0.5,0.5) +
          LeadRight.scale(1.0,0.5) +
          Forward_2 +
          ExtendRight,

          LeadRight.changeBeats(3.5).scale(1.0,2.5) +
          Forward.scale(1.5,1.0) +
          ExtendRight.changeBeats(2)
      ]),

    AnimatedCall('Flip the Line',
      formation:Formations.TidalWaveLHBGGB,
      from:'Left-Hand Tidal Wave',
      paths:[
          LeadLeft.changeBeats(3).scale(1.0,1.5) +
          ExtendLeft.changeBeats(2),

          RunLeft.scale(0.5,1.0) +
          LeadLeft.scale(1.0,0.5) +
          ExtendLeft.scale(1.5,1.0),

          RunLeft.scale(0.5,0.5) +
          LeadLeft.scale(1.0,0.5) +
          Forward_2 +
          ExtendLeft,

          LeadLeft.changeBeats(3.5).scale(1.0,2.5) +
          Forward.scale(1.5,1.0) +
          ExtendLeft.changeBeats(2)
      ]),

    AnimatedCall('Concentric Flip the Line 1/4',
      formation:Formations.TidalWaveRHBGGB,
      group:' ',
      paths:[
          LeadRight.changeBeats(3.5).scale(3.0,2.0) +
          Forward.skew(0.5,0.0),

          RunRight.skew(1.0,0.0) +
          LeadRight.scale(1.0,0.5),

          LeadRight.changeBeats(3.5).scale(1.0,1.5),

          LeadRight +
          UmTurnRight.skew(0.5,-1.0)
      ]),

    AnimatedCall('Concentric Flip the Line 1/2',
      formation:Formations.TidalWaveRHBGGB,
      group:' ',
      paths:[
          LeadRight.changeBeats(3.5).scale(3.0,2.0) +
          Forward_3,

          RunRight.skew(-1.0,0.0) +
          LeadRight.scale(2.0,1.0) +
          Forward_2,

          LeadRight.changeBeats(3.5).scale(1.0,2.0) +
          Forward,

          RunRight +
          LeadRight
      ]),

    AnimatedCall('Concentric Flip the Line 3/4',
      formation:Formations.TidalWaveRHBGGB,
      group:' ',
      paths:[
          LeadRight.changeBeats(3.5).scale(3.0,2.0) +
          Forward_2 +
          ExtendRight.changeBeats(3).scale(3.5,3.0),

          RunRight.skew(-1.0,0.0) +
          LeadRight.scale(2.0,1.0) +
          Forward_3.skew(0.5,0.0),

          LeadRight.changeBeats(3.5).scale(1.0,2.0) +
          ExtendRight.changeBeats(2).scale(1.5,1.0),

          RunRight +
          LeadRight.scale(1.0,1.5) +
          Forward
      ]),

    AnimatedCall('Concentric Flip the Line',
      formation:Formations.TidalWaveRHBGGB,
      group:' ',
      paths:[
          LeadRight.changeBeats(3.5).scale(1.5,2.0) +
          Forward_5 +
          ExtendRight.changeBeats(2).scale(2.0,1.5),

          RunRight.skew(-1.0,0.0) +
          LeadRight.scale(0.5,1.0) +
          Forward_5.skew(0.5,0.0) +
          ExtendRight.changeBeats(2).scale(2.0,1.5),

          LeadRight.changeBeats(3.5).scale(0.5,2.0) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          RunRight +
          LeadRight.scale(0.5,1.0) +
          Forward +
          ExtendRight.scale(1.25,0.5)
      ]),

    AnimatedCall('Tandem Flip the Line 1/4',
      formation:Formations.OceanWavesRHBGGBCompact,
      group:'  ',
      paths:[
          LeadRight.changeBeats(3).scale(2.5,2.0),

          RunRight.changeBeats(4).skew(-0.5,0.0) +
          QuarterRight.changeBeats(2).skew(1.0,0.0),

          Forward_3.changeBeats(2) +
          RunRight.scale(1.5,2.0).skew(-0.5,0.0) +
          QuarterRight.changeBeats(2).skew(1.0,0.0),

          QuarterRight.changeBeats(3).skew(-0.5,-4.0)
      ]),

    AnimatedCall('Tandem Flip the Line 1/2',
      formation:Formations.OceanWavesRHBGGBCompact,
      group:'  ',
      paths:[
          LeadRight.changeBeats(3).scale(2.5,2.0) +
          Forward_2,

          RunRight.changeBeats(4).skew(-0.5,0.0) +
          LeadRight.changeBeats(2).scale(2.0,2.0),

          Forward_3.changeBeats(2) +
          RunRight.scale(1.5,2.0).skew(-0.5,0.0) +
          LeadRight.changeBeats(2).scale(2.0,2.0),

          QuarterRight.changeBeats(3).skew(-0.5,-4.0) +
          Forward_2
      ]),
  ];

