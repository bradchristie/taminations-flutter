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

import '../../common_dart.dart';
import '../../formation.dart';
import '../../formations.dart';
import '../../moves.dart';
import '../../animated_call.dart';

  final List<AnimatedCall> ReverseExplode = [ 

    AnimatedCall('Reverse Explode',
      formation:Formations.WaveRH,
      from:'Right-Hand Wave',
      paths:[
          QuarterLeft.skew(1.0,-1.0),

          LeadRight
      ]),

    AnimatedCall('Reverse Explode',
      formation:Formations.WaveLH,
      from:'Left-Hand Wave',
      paths:[
          QuarterRight.skew(1.0,1.0),

          LeadLeft
      ]),

    AnimatedCall('Reverse Explode',
      formation:Formations.OceanWavesRHBGGB,
      from:'Right-Hand Waves',
      paths:[
          QuarterLeft.skew(1.0,-1.0),

          LeadRight,

          LeadRight,

          QuarterLeft.skew(1.0,-1.0)
      ]),

    AnimatedCall('Reverse Explode',
      formation:Formations.OceanWavesLHBGGB,
      from:'Left-Hand Waves',
      paths:[
          QuarterRight.skew(1.0,1.0),

          LeadLeft,

          LeadLeft,

          QuarterRight.skew(1.0,1.0)
      ]),

    AnimatedCall('Reverse Explode',
      formation:Formations.TidalWaveRHBGGB,
      from:'Right-Hand Tidal Wave',
      paths:[
          QuarterLeft.skew(1.0,-0.5),

          LeadRight.scale(1.0,0.5),

          LeadRight.scale(1.0,0.5),

          QuarterLeft.skew(1.0,-0.5)
      ]),

    AnimatedCall('Reverse Explode',
      formation:Formations.TidalWaveLHBGGB,
      from:'Left-Hand Tidal Wave',
      paths:[
          QuarterRight.skew(1.0,0.5),

          LeadLeft.scale(1.0,0.5),

          LeadLeft.scale(1.0,0.5),

          QuarterRight.skew(1.0,0.5)
      ]),

    AnimatedCall('All 8 Reverse Explode',
      formation:Formations.TharLHBoys,
      group:' ',
      paths:[
          LeadRight.changeBeats(3).scale(1.0,2.0),

          QuarterLeft.changeBeats(3).skew(1.0,0.0),

          LeadRight.changeBeats(3).scale(1.0,2.0),

          QuarterLeft.changeBeats(3).skew(1.0,0.0)
      ]),

    AnimatedCall('As Couples Reverse Explode',
      formation:Formations.TwomFacedTidalLineRH,
      group:' ',
      paths:[
          QuarterLeft.changeBeats(3).changehands(2).skew(1.0,-1.5),

          QuarterLeft.changeBeats(3).changehands(1).skew(3.0,-0.5),

          LeadRight.changeBeats(3).changehands(1).scale(1.0,0.5),

          LeadRight.changeBeats(3).changehands(2).scale(3.0,1.5)
      ]),

    AnimatedCall('Concentric Reverse Explode',
      formation:Formations.TidalWaveRHBGGB,
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
      formation:Formations.OceanWavesRHBGGB,
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
      formation:Formations.OceanWavesRHBGGB,
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

