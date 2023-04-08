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

  final List<AnimatedCall> AhSo = [ 

    AnimatedCall('Ah So',
      formation:Formations.WaveRH,
      from:'Right-Hand Wave',
      paths:[
          RunRight.changehands(6).scale(1.5,2.0).skew(1.5,0.0),

          UmTurnRight.changehands(6).skew(-1.5,0.0)
      ]),

    AnimatedCall('Ah So',
      formation:Formations.WaveLH,
      from:'Left-Hand Wave',
      paths:[
          RunLeft.changehands(5).scale(1.5,2.0).skew(1.5,0.0),

          UmTurnLeft.changehands(5).skew(-1.5,0.0)
      ]),

    AnimatedCall('Ah So',
      formation:Formations.OceanWavesRHBGGB,
      from:'Right-Hand Waves',
      paths:[
          RunRight.changehands(6).scale(1.0,2.0).skew(1.0,0.0),

          UmTurnRight.changehands(6).skew(-1.0,0.0),

          UmTurnRight.changehands(6).skew(-1.0,0.0),

          RunRight.changehands(6).scale(1.0,2.0).skew(1.0,0.0)
      ]),

    AnimatedCall('Ah So',
      formation:Formations.OceanWavesLHBGGB,
      from:'Left-Hand Waves',
      paths:[
          RunLeft.changehands(5).scale(1.0,2.0).skew(1.0,0.0),

          UmTurnLeft.changehands(5).skew(-1.0,0.0),

          UmTurnLeft.changehands(5).skew(-1.0,0.0),

          RunLeft.changehands(5).scale(1.0,2.0).skew(1.0,0.0)
      ]),

    AnimatedCall('Ah So',
      formation:Formations.InvertedLinesEndsFacingOut,
      from:'Inverted Lines',
      paths:[
          RunLeft.changehands(5).scale(1.0,2.0).skew(-1.0,0.0),

          UmTurnLeft.changehands(5).skew(1.0,0.0),

          UmTurnRight.changehands(6).skew(-1.0,0.0),

          RunRight.changehands(6).scale(1.0,2.0).skew(1.0,0.0)
      ]),

    AnimatedCall('Ah So',
      formation:Formations.n3and_1lines1,
      from:'3 and 1 Lines #1',
      paths:[
          RunLeft.changeBeats(4).changehands(1).scale(1.0,2.0).skew(1.0,0.0),

          UmTurnLeft.changeBeats(4).changehands(1).skew(-1.0,0.0),

          UmTurnLeft.changeBeats(4).changehands(6).skew(1.0,0.0),

          RunLeft.changeBeats(4).changehands(5).scale(1.0,2.0).skew(1.0,0.0)
      ]),

    AnimatedCall('Ah So',
      formation:Formations.n3and_1lines2,
      from:'3 and 1 Lines #2',
      paths:[
          RunRight.changeBeats(4).changehands(2).scale(1.0,2.0).skew(1.0,0.0),

          UmTurnRight.changeBeats(4).changehands(2).skew(-1.0,0.0),

          UmTurnLeft.changeBeats(4).changehands(6).skew(-1.0,0.0),

          RunLeft.changeBeats(4).changehands(5).scale(1.0,2.0).skew(-1.0,0.0)
      ]),

    AnimatedCall('Ah So',
      formation:Formations.n3and_1lines3,
      from:'3 and 1 Lines #3',
      paths:[
          RunRight.changeBeats(4).changehands(2).scale(1.0,2.0).skew(1.0,0.0),

          UmTurnRight.changeBeats(4).changehands(1).skew(1.0,0.0),

          UmTurnLeft.changeBeats(4).changehands(5).skew(1.0,0.0),

          RunLeft.changeBeats(4).changehands(5).scale(1.0,2.0).skew(-1.0,0.0)
      ]),

    AnimatedCall('Ah So',
      formation:Formations.n3and_1lines4,
      from:'3 and 1 Lines #4',
      paths:[
          RunRight.changeBeats(4).changehands(2).scale(1.0,2.0).skew(1.0,0.0),

          UmTurnRight.changeBeats(4).changehands(1).skew(1.0,0.0),

          UmTurnRight.changeBeats(4).changehands(6).skew(-1.0,0.0),

          RunRight.changeBeats(4).changehands(6).scale(1.0,2.0).skew(1.0,0.0)
      ]),

    AnimatedCall('Ah So',
      formation:Formations.n3and_1lines5,
      from:'3 and 1 Lines #5',
      paths:[
          RunRight.changeBeats(4).changehands(2).scale(1.0,2.0).skew(1.0,0.0),

          UmTurnRight.changeBeats(4).changehands(2).skew(-1.0,0.0),

          UmTurnRight.changeBeats(4).changehands(5).skew(1.0,0.0),

          RunRight.changeBeats(4).changehands(6).scale(1.0,2.0).skew(1.0,0.0)
      ]),

    AnimatedCall('Ah So',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:3,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-3,angle:180),
  ]),
      from:'3 and 1 Lines #6',
      paths:[
          RunLeft.changeBeats(4).changehands(1).scale(1.0,2.0).skew(-1.0,0.0),

          UmTurnLeft.changeBeats(4).changehands(1).skew(1.0,0.0),

          UmTurnRight.changeBeats(4).changehands(1).skew(1.0,0.0),

          RunRight.changeBeats(4).changehands(2).scale(2.0,2.0).skew(1.0,0.0)
      ]),

    AnimatedCall('Ah So',
      formation:Formations.n3and_1lines7,
      from:'3 and 1 Lines #7',
      paths:[
          RunLeft.changeBeats(4).changehands(1).scale(1.0,2.0).skew(-1.0,0.0),

          UmTurnLeft.changeBeats(4).changehands(2).skew(-1.0,0.0),

          UmTurnRight.changeBeats(4).changehands(6).skew(-1.0,0.0),

          RunRight.changeBeats(4).changehands(6).scale(1.0,2.0).skew(1.0,0.0)
      ]),

    AnimatedCall('Ah So',
      formation:Formations.n3and_1lines8,
      from:'3 and 1 Lines #8',
      paths:[
          RunLeft.changeBeats(4).changehands(1).scale(1.0,2.0).skew(1.0,0.0),

          UmTurnLeft.changeBeats(4).changehands(2).skew(1.0,0.0),

          UmTurnLeft.changeBeats(4).changehands(5).skew(-1.0,0.0),

          RunLeft.changeBeats(4).changehands(5).scale(1.0,2.0).skew(1.0,0.0)
      ]),

    AnimatedCall('Ah So',
      formation:Formations.TidalWaveRHBGGB,
      from:'Right-Hand Tidal Wave',
      paths:[
          RunRight.changeBeats(4).changehands(2).scale(1.0,1.25).skew(1.5,0.0),

          UmTurnRight.changeBeats(4).changehands(2).skew(-1.5,-0.5),

          UmTurnRight.changeBeats(4).changehands(2).skew(-1.5,-0.5),

          RunRight.changeBeats(4).changehands(2).scale(1.0,1.25).skew(1.5,0.0)
      ]),

    AnimatedCall('Ah So',
      formation:Formations.TidalWaveLHBGGB,
      from:'Left-Hand Tidal Wave',
      paths:[
          RunLeft.changeBeats(4).changehands(1).scale(1.0,1.25).skew(1.5,0.0),

          UmTurnLeft.changeBeats(4).changehands(1).skew(-1.5,0.5),

          UmTurnLeft.changeBeats(4).changehands(1).skew(-1.5,0.5),

          RunLeft.changeBeats(4).changehands(1).scale(1.0,1.25).skew(1.5,0.0)
      ]),

    AnimatedCall('Ah So',
      formation:Formations.Tidal_3and_1Line1,
      from:'Tidal 3 and 1 Lines #1',
      paths:[
          RunRight.changeBeats(4).changehands(2).scale(1.0,1.25).skew(1.5,0.0),

          UmTurnRight.changeBeats(4).changehands(1).skew(1.5,0.5),

          UmTurnRight.changeBeats(4).changehands(2).skew(-1.5,-0.5),

          RunRight.changeBeats(4).changehands(2).scale(1.0,1.25).skew(1.5,0.0)
      ]),

    AnimatedCall('Ah So',
      formation:Formations.Tidal_3and_1Line2,
      from:'Tidal 3 and 1 Lines #2',
      paths:[
          RunRight.changeBeats(4).changehands(2).scale(1.0,1.25).skew(1.5,0.0),

          UmTurnRight.changeBeats(4).changehands(1).skew(1.5,0.5),

          UmTurnLeft.changeBeats(4).changehands(1).skew(1.5,0.5),

          RunLeft.changeBeats(4).changehands(1).scale(1.0,1.25).skew(-1.5,0.0)
      ]),

    AnimatedCall('Ah So',
      formation:Formations.Tidal_3and_1Line3,
      from:'Tidal 3 and 1 Lines #3',
      paths:[
          RunRight.changeBeats(4).changehands(2).scale(1.0,1.25).skew(1.5,0.0),

          UmTurnRight.changeBeats(4).changehands(2).skew(-1.5,-0.5),

          UmTurnLeft.changeBeats(4).changehands(2).skew(-1.5,-0.5),

          RunLeft.changeBeats(4).changehands(1).scale(1.0,1.25).skew(-1.5,0.0)
      ]),

    AnimatedCall('Ah So',
      formation:Formations.Tidal_3and_1Line4,
      from:'Tidal 3 and 1 Lines #4',
      paths:[
          RunLeft.changeBeats(4).changehands(1).scale(1.0,1.25).skew(1.5,0.0),

          UmTurnLeft.changeBeats(4).changehands(1).skew(-1.5,0.5),

          UmTurnLeft.changeBeats(4).changehands(2).skew(1.5,-0.5),

          RunLeft.changeBeats(4).changehands(1).scale(1.0,1.25).skew(1.5,0.0)
      ]),

    AnimatedCall('Ah So',
      formation:Formations.Tidal_3and_1Line5,
      from:'Tidal 3 and 1 Lines #5',
      paths:[
          RunLeft.changeBeats(4).changehands(1).scale(1.0,1.25).skew(1.5,0.0),

          UmTurnLeft.changeBeats(4).changehands(2).skew(1.5,-0.5),

          UmTurnLeft.changeBeats(4).changehands(1).skew(-1.5,0.5),

          RunLeft.changeBeats(4).changehands(1).scale(1.0,1.25).skew(1.5,0.0)
      ]),

    AnimatedCall('Ah So',
      formation:Formations.Tidal_3and_1Line6,
      from:'Tidal 3 and 1 Lines #6',
      paths:[
          RunLeft.changeBeats(4).changehands(1).scale(1.0,1.25).skew(-1.5,0.0),

          UmTurnLeft.changeBeats(4).changehands(2).skew(-1.5,-0.5),

          UmTurnRight.changeBeats(4).changehands(2).skew(-1.5,-0.5),

          RunRight.changeBeats(4).changehands(2).scale(1.0,1.25).skew(1.5,0.0)
      ]),

    AnimatedCall('Ah So',
      formation:Formations.Tidal_3and_1Line7,
      from:'Tidal 3 and 1 Lines #7',
      paths:[
          RunLeft.changeBeats(4).changehands(1).scale(1.0,1.25).skew(-1.5,0.0),

          UmTurnLeft.changeBeats(4).changehands(1).skew(1.5,0.5),

          UmTurnRight.changeBeats(4).changehands(1).skew(1.5,0.5),

          RunRight.changeBeats(4).changehands(2).scale(1.0,1.25).skew(1.5,0.0)
      ]),

    AnimatedCall('Ah So',
      formation:Formations.Tidal_3and_1Line8,
      from:'Tidal 3 and 1 Lines #8',
      paths:[
          RunRight.changeBeats(4).changehands(2).scale(1.0,1.25).skew(1.5,0.0),

          UmTurnRight.changeBeats(4).changehands(2).skew(-1.5,-0.5),

          UmTurnRight.changeBeats(4).changehands(1).skew(1.5,0.5),

          RunRight.changeBeats(4).changehands(2).scale(1.0,1.25).skew(1.5,0.0)
      ]),

    AnimatedCall('Ah So',
      formation:Formations.InvertedTidalLineRH,
      from:'Right-Hand Inverted Tidal Line',
      paths:[
          RunRight.changeBeats(4).changehands(2).scale(1.0,1.25).skew(1.5,0.0),

          UmTurnRight.changeBeats(4).changehands(2).skew(-1.5,-0.5),

          UmTurnLeft.changeBeats(4).changehands(1).skew(1.5,0.5),

          RunLeft.changeBeats(4).changehands(1).scale(1.0,1.25).skew(-1.5,0.0)
      ]),

    AnimatedCall('Ah So',
      formation:Formations.InvertedTidalLineLH,
      from:'Left-Hand Inverted Tidal Line',
      paths:[
          RunLeft.changeBeats(4).changehands(1).scale(1.0,1.25).skew(-1.5,0.0),

          UmTurnLeft.changeBeats(4).changehands(1).skew(1.5,0.5),

          UmTurnRight.changeBeats(4).changehands(2).skew(-1.5,-0.5),

          RunRight.changeBeats(4).changehands(2).scale(1.0,1.25).skew(1.5,0.0)
      ]),

    AnimatedCall('As Couples Ah So',
      formation:Formations.TwomFacedTidalLineRH,
      from:'Two-Faced Tidal Line',group:' ',
      paths:[
          RunRight.changeBeats(5).changehands(6).scale(2.0,3.0).skew(1.5,-0.5),

          RunRight.changeBeats(5).changehands(7).scale(1.0,2.0).skew(1.5,0.5),

          UmTurnRight.changeBeats(5).changehands(7).skew(-1.5,0.5),

          RunRight.changeBeats(5).changehands(6).scale(1.0,3.0).skew(-1.5,3.5)
      ]),

    AnimatedCall('Concentric Ah So',
      formation:Formations.TidalWaveRHBGGB,
      from:'Tidal Wave',group:' ',
      paths:[
          RunRight.changehands(6).scale(1.0,2.25).skew(3.0,0.0),

          UmTurnRight.changehands(6).skew(-3.0,1.5),

          RunRight.changehands(6).scale(1.0,1.25).skew(1.0,0.0),

          UmTurnRight.changehands(6).skew(-1.0,-0.5)
      ]),

    AnimatedCall('Stretch Ah So',
      formation:Formations.OceanWavesRHBGGBCompact,
      from:'Right-Hand Waves',group:' ',
      paths:[
          RunRight.changehands(6).scale(1.0,2.0).skew(2.5,0.0),

          UmTurnRight.changehands(6).skew(-2.5,0.0),

          UmTurnRight.changehands(6).skew(-1.5,0.0),

          RunRight.changehands(6).scale(1.0,2.0).skew(1.5,0.0)
      ]),

    AnimatedCall('Tandem Ah So',
      formation:Formations.OceanWavesRHBGGBCompact,
      from:'Right-Hand Waves',group:' ',
      paths:[
          CounterRotateRight_2_0.changeBeats(4).changehands(6).skew(2.0,0.0) +
          CounterRotateRight_2_0.changeBeats(4).changehands(6).skew(2.0,0.5),

          CounterRotateRight_m1_m3.changeBeats(4).changehands(6).skew(-1.0,1.0) +
          CounterRotateRight_m1_m3.changeBeats(4).changehands(6).skew(-1.0,0.5),

          UmTurnRight.changeBeats(8).changehands(6).skew(0.5,0.0),

          RunRight.changeBeats(8).changehands(6).scale(1.5,2.0).skew(-0.5,0.0)
      ]),
  ];

