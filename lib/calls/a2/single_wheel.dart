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

  final List<AnimatedCall> SingleWheel = [

    AnimatedCall('Single Wheel',
      formation:Formations.FacingCouples,
      from:'Facing Couples',
      paths:[
          UmTurnRight.skew(1.0,-1.0),

          UmTurnLeft.skew(-1.0,1.0)
      ]),

    AnimatedCall('Single Wheel',
      formation:Formations.CouplesFacingOut,
      from:'Couples Facing Out',
      paths:[
          UmTurnLeft.skew(-1.0,1.0),

          UmTurnRight.skew(1.0,-1.0)
      ]),

    AnimatedCall('Single Wheel',
      formation:Formations.BoxRH,
      from:'Right-Hand Box',
      paths:[
          UmTurnRight.skew(1.0,-1.0),

          UmTurnRight.skew(1.0,-1.0)
      ]),

    AnimatedCall('Single Wheel',
      formation:Formations.BoxLH,
      from:'Left-Hand Box',
      paths:[
          UmTurnLeft.skew(1.0,1.0),

          UmTurnLeft.skew(1.0,1.0)
      ]),

    AnimatedCall('Single Wheel',
      formation:Formations.WaveRH,
      from:'Right-Hand Wave',
      paths:[
          FlipRight.changeBeats(4).skew(1.5,0.0),

          UmTurnRight.changeBeats(4).skew(1.5,0.0)
      ]),

    AnimatedCall('Single Wheel',
      formation:Formations.WaveLH,
      from:'Left-Hand Wave',
      paths:[
          FlipLeft.changeBeats(4).skew(1.5,0.0),

          UmTurnLeft.changeBeats(4).skew(1.5,0.0)
      ]),

    AnimatedCall('Single Wheel',
      formation:Formations.LinesFacingOut,
      from:'Lines Facing Out',
      paths:[
          FlipLeft.skew(-1.0,0.0),

          UmTurnRight.skew(1.0,0.0),

          UmTurnLeft.skew(-1.0,0.0),

          FlipRight.skew(1.0,0.0)
      ]),

    AnimatedCall('Single Wheel',
      formation:Formations.TwomFacedLinesRH,
      from:'Right-Hand Two-Faced Lines',
      paths:[
          FlipRight.skew(1.0,0.0),

          UmTurnLeft.skew(-1.0,0.0),

          UmTurnLeft.skew(-1.0,0.0),

          FlipRight.skew(1.0,0.0)
      ]),

    AnimatedCall('Single Wheel',
      formation:Formations.OceanWavesRHBGBG,
      from:'Right-Hand Waves',
      paths:[
          FlipRight.skew(1.0,0.0),

          UmTurnRight.skew(1.0,0.0),

          UmTurnRight.skew(1.0,0.0),

          FlipRight.skew(1.0,0.0)
      ]),

    AnimatedCall('Single Wheel',
      formation:Formations.OceanWavesLHBGBG,
      from:'Left-Hand Waves',
      paths:[
          FlipLeft.skew(1.0,0.0),

          UmTurnLeft.skew(1.0,0.0),

          UmTurnLeft.skew(1.0,0.0),

          FlipLeft.skew(1.0,0.0)
      ]),

    AnimatedCall('Single Wheel',
      formation:Formations.CompletedDoublePassThru,
      from:'Completed Double Pass Thru',
      paths:[
          FlipLeft.skew(-0.5,-1.0),

          FlipRight.skew(0.5,1.0),

          FlipLeft.skew(-0.5,-1.0),

          FlipRight.skew(0.5,1.0)
      ]),

    AnimatedCall('Single Wheel',
      formation:Formations.TidalWaveRHBGGB,
      from:'Right-Hand Tidal Wave',
      paths:[
          UmTurnRight.changeBeats(4).skew(1.5,-0.5),

          UmTurnRight.changeBeats(4).skew(1.5,-0.5),

          UmTurnRight.changeBeats(4).skew(1.5,-0.5),

          UmTurnRight.changeBeats(4).skew(1.5,-0.5)
      ]),

    AnimatedCall('Single Wheel',
      formation:Formations.TidalWaveLHBGGB,
      from:'Left-Hand Tidal Wave',
      paths:[
          UmTurnLeft.changeBeats(4).skew(1.5,0.5),

          UmTurnLeft.changeBeats(4).skew(1.5,0.5),

          UmTurnLeft.changeBeats(4).skew(1.5,0.5),

          UmTurnLeft.changeBeats(4).skew(1.5,0.5)
      ]),

    AnimatedCall('Single Wheel',
      formation:Formations.TwomFacedTidalLineRH,
      from:'Right-Hand Tidal Two-Faced Line',
      paths:[
          UmTurnRight.changeBeats(4).skew(1.5,-0.5),

          UmTurnLeft.changeBeats(4).skew(-1.5,0.5),

          UmTurnLeft.changeBeats(4).skew(-1.5,0.5),

          UmTurnRight.changeBeats(4).skew(1.5,-0.5)
      ]),

    AnimatedCall('Single Wheel',
      formation:Formations.TwomFacedTidalLineLH,
      from:'Left-Hand Tidal Two-Faced Line',
      paths:[
          UmTurnLeft.changeBeats(4).skew(-1.5,0.5),

          UmTurnRight.changeBeats(4).skew(1.5,-0.5),

          UmTurnRight.changeBeats(4).skew(1.5,-0.5),

          UmTurnLeft.changeBeats(4).skew(-1.5,0.5)
      ]),

    AnimatedCall('Single Wheel',
      formation:Formations.TidalLineRH,
      from:'Right-Hand Tidal Line',
      paths:[
          UmTurnRight.changeBeats(4).skew(1.5,-0.5),

          UmTurnLeft.changeBeats(4).skew(-1.5,0.5),

          UmTurnRight.changeBeats(4).skew(1.5,-0.5),

          UmTurnLeft.changeBeats(4).skew(-1.5,0.5)
      ]),

    AnimatedCall('Single Wheel',
      formation:Formations.TidalLineLH,
      from:'Left-Hand Tidal Line',
      paths:[
          UmTurnRight.changeBeats(4).skew(1.5,-0.5),

          UmTurnLeft.changeBeats(4).skew(-1.5,0.5),

          UmTurnRight.changeBeats(4).skew(1.5,-0.5),

          UmTurnLeft.changeBeats(4).skew(-1.5,0.5)
      ]),

    AnimatedCall('Single Wheel 3 Times',
      formation:Formations.TidalWaveRHBGGB,
      from:'Tidal Wave',fractions:'3;3',
      paths:[
          UmTurnRight.skew(2.0,-0.5) +
          FlipLeft.skew(-1.0,0.0) +
          UmTurnRight.skew(0.5,-1.0),

          UmTurnRight.skew(2.0,-0.5) +
          FlipRight.skew(1.0,0.0) +
          UmTurnLeft.skew(-0.5,1.0),

          UmTurnRight.skew(2.0,-0.5) +
          UmTurnRight.skew(1.0,0.0) +
          UmTurnRight.skew(0.5,-1.0),

          UmTurnRight.skew(2.0,-0.5) +
          UmTurnLeft.skew(-1.0,0.0) +
          UmTurnLeft.skew(-0.5,1.0)
      ]),
  ];

