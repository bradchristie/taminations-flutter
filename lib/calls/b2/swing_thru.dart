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
import '../../common_dart.dart';
import '../../formations.dart';
import '../../moves.dart';

  final List<AnimatedCall> SwingThru = [

    AnimatedCall('Swing Thru',
      formation:Formations.WaveRH,
      from:'Right-Hand Wave',parts:'3',difficulty: 1,
      paths:[
          SwingRight +
          SwingLeft,

          SwingRight
      ]),

    AnimatedCall('Swing Thru',
      formation:Formations.CompactWaveRH,
      from:'Compact Right-Hand Wave',parts:'3',noDisplay: true,
      paths:[
          SwingRight.scale(0.5,0.5) +
          SwingLeft.scale(0.5,0.5),

          SwingRight.scale(0.5,0.5)
      ]),

    AnimatedCall('Swing Thru',
      formation:Formations.WaveLH,
      from:'Left-Hand Wave',parts:'3',difficulty: 2,
      paths:[
          Stand.changeBeats(3).changehands(0) +
          SwingLeft,

          SwingRight +
          SwingLeft
      ]),

    AnimatedCall('Swing Thru',
      formation:Formations.CompactWaveLH,
      from:'Compact Left-Hand Wave',parts:'3',difficulty: 2,noDisplay: true,
      paths:[
          Stand.changeBeats(3).changehands(0) +
          SwingLeft.scale(0.5,0.5),

          SwingRight.scale(0.5,0.5) +
          SwingLeft.scale(0.5,0.5)
      ]),

    AnimatedCall('Swing Thru',
      formation:Formations.FacingCouplesCompact,
      from:'Facing Couples',parts:'6',difficulty: 1,
      paths:[
          ExtendLeft.changeBeats(3).scale(1.5,2.0) +
          SwingRight +
          SwingLeft,

          Forward.changeBeats(3).scale(1.5,1.0) +
          SwingRight
      ]),

    AnimatedCall('Swing Thru',
      formation:Formations.OceanWavesRHBGGB,
      from:'Right-Hand Waves',parts:'3',difficulty: 1,
      paths:[
          SwingRight +
          SwingLeft,

          SwingRight,

          SwingRight,

          SwingRight +
          SwingLeft
      ]),

    AnimatedCall('Swing Thru',
      formation:Formations.OceanWavesLHBGGB,
      from:'Left-Hand Waves',parts:'3',difficulty: 2,
      paths:[
          Stand.changeBeats(3) +
          SwingLeft,

          SwingRight +
          SwingLeft,

          SwingRight +
          SwingLeft,

          Stand.changeBeats(3) +
          SwingLeft
      ]),

    AnimatedCall('Swing Thru',
      formation:Formations.TidalWaveRHBGGB,
      from:'Right-Hand Tidal Wave',parts:'3',difficulty: 2,
      paths:[
          SwingRight.changehands(6).scale(0.75,0.5) +
          SwingLeft.changehands(5).scale(0.75,0.5),

          SwingRight.changehands(6).scale(0.75,0.5),

          SwingRight.changehands(6).scale(0.75,0.5),

          SwingRight.changehands(6).scale(0.75,0.5) +
          SwingLeft.changehands(5).scale(0.75,0.5)
      ]),

    AnimatedCall('Swing Thru',
      formation:Formations.TidalWaveLHBGGB,
      from:'Left-Hand Tidal Wave',parts:'3',difficulty: 2,
      paths:[
          Stand.changeBeats(3).changehands(0) +
          SwingLeft.changehands(5).scale(0.75,0.5),

          SwingRight.changehands(6).scale(0.75,0.5) +
          SwingLeft.changehands(5).scale(0.75,0.5),

          SwingRight.changehands(6).scale(0.75,0.5) +
          SwingLeft.changehands(5).scale(0.75,0.5),

          Stand.changeBeats(3).changehands(0) +
          SwingLeft.changehands(5).scale(0.75,0.5)
      ]),

    AnimatedCall('Swing Thru',
      formation:Formations.EightChainThru,
      from:'Eight Chain Thru',parts:'4',difficulty: 1,
      paths:[
          ExtendLeft.scale(1.0,2.0) +
          SwingRight +
          SwingLeft,

          Forward +
          SwingRight,

          ExtendLeft.scale(1.0,2.0) +
          SwingRight +
          SwingLeft,

          Forward +
          SwingRight
      ]),

    AnimatedCall('Swing Thru',
      formation:Formations.QuarterTag,
      from:'Quarter Tag',parts:'3',difficulty: 1,
      paths:[
          Path(),

          Path(),

          SwingRight +
          SwingLeft,

          SwingRight
      ]),

    AnimatedCall('Swing Thru',
      formation:Formations.AlamoWave,
      from:'Alamo Wave',parts:'3.2',difficulty: 1,
      paths:[
          SxtnthLeft.changehands(2) +
          SwingRight +
          SxtnthLeft.changehands(2) +
          SxtnthLeft.changehands(1) +
          SwingLeft +
          SxtnthLeft.changehands(1),

          SxtnthRight.changehands(2) +
          SwingRight +
          SxtnthRight.changehands(2) +
          SxtnthRight.changehands(1) +
          SwingLeft +
          SxtnthRight.changehands(1),

          SxtnthLeft.changehands(2) +
          SwingRight +
          SxtnthLeft.changehands(2) +
          SxtnthLeft.changehands(1) +
          SwingLeft +
          SxtnthLeft.changehands(1),

          SxtnthRight.changehands(2) +
          SwingRight +
          SxtnthRight.changehands(2) +
          SxtnthRight.changehands(1) +
          SwingLeft +
          SxtnthRight.changehands(1)
      ]),

    AnimatedCall('Swing Thru',
      formation:Formations.NormalLines,
      from:'Facing Lines',parts:'5',difficulty: 2,
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          SwingRight.scale(0.5,0.5) +
          SwingLeft.scale(0.5,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          SwingRight.scale(0.5,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          SwingRight.scale(0.5,0.5) +
          SwingLeft.scale(0.5,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          SwingRight.scale(0.5,0.5)
      ]),

    AnimatedCall('Left Swing Thru',
      formation:Formations.WaveLH,
      from:'Left-Hand Wave',parts:'3',difficulty: 1,
      paths:[
          SwingLeft +
          SwingRight,

          SwingLeft
      ]),

    AnimatedCall('Left Swing Thru',
      formation:Formations.CompactWaveLH,
      from:'Compact Left-Hand Wave',parts:'3',difficulty: 1,noDisplay: true,
      paths:[
          SwingLeft.scale(0.5,0.5) +
          SwingRight.scale(0.5,0.5),

          SwingLeft.scale(0.5,0.5)
      ]),

    AnimatedCall('Left Swing Thru',
      formation:Formations.WaveRH,
      from:'Right-Hand Wave',parts:'3',difficulty: 2,
      paths:[
          Stand.changeBeats(3).changehands(0) +
          SwingRight,

          SwingLeft +
          SwingRight
      ]),

    AnimatedCall('Left Swing Thru',
      formation:Formations.CompactWaveRH,
      from:'Compact Right-Hand Wave',parts:'3',difficulty: 2,noDisplay: true,
      paths:[
          Stand.changeBeats(3).changehands(0) +
          SwingRight.scale(0.5,0.5),

          SwingLeft.scale(0.5,0.5) +
          SwingRight.scale(0.5,0.5)
      ]),

    AnimatedCall('Left Swing Thru',
      formation:Formations.FacingCouplesCompact,
      from:'Facing Couples',parts:'5',difficulty: 2,
      paths:[
          Forward_2.scale(0.75,1.0) +
          SwingLeft,

          ExtendRight.changeBeats(2).scale(1.5,2.0) +
          SwingLeft +
          SwingRight
      ]),

    AnimatedCall('Left Swing Thru',
      formation:Formations.OceanWavesLHBGGB,
      from:'Left-Hand Waves',parts:'3',difficulty: 1,
      paths:[
          SwingLeft +
          SwingRight,

          SwingLeft,

          SwingLeft,

          SwingLeft +
          SwingRight
      ]),

    AnimatedCall('Left Swing Thru',
      formation:Formations.OceanWavesRHBGGB,
      from:'Right-Hand Waves',parts:'3',difficulty: 2,
      paths:[
          Stand.changeBeats(3) +
          SwingRight,

          SwingLeft +
          SwingRight,

          SwingLeft +
          SwingRight,

          Stand.changeBeats(3) +
          SwingRight
      ]),

    AnimatedCall('Left Swing Thru',
      formation:Formations.TidalWaveLHBGGB,
      from:'Left-Hand Tidal Wave',parts:'3',difficulty: 2,
      paths:[
          SwingLeft.changehands(5).scale(0.75,0.5) +
          SwingRight.changehands(6).scale(0.75,0.5),

          SwingLeft.changehands(5).scale(0.75,0.5),

          SwingLeft.changehands(5).scale(0.75,0.5),

          SwingLeft.changehands(5).scale(0.75,0.5) +
          SwingRight.changehands(6).scale(0.75,0.5)
      ]),

    AnimatedCall('Left Swing Thru',
      formation:Formations.TidalWaveRHBGGB,
      from:'Right-Hand Tidal Wave',parts:'3',difficulty: 2,
      paths:[
          Stand.changeBeats(3).changehands(0) +
          SwingRight.changehands(6).scale(0.75,0.5),

          SwingLeft.changehands(5).scale(0.75,0.5) +
          SwingRight.changehands(6).scale(0.75,0.5),

          SwingLeft.changehands(5).scale(0.75,0.5) +
          SwingRight.changehands(6).scale(0.75,0.5),

          Stand.changeBeats(3).changehands(0) +
          SwingRight.changehands(6).scale(0.75,0.5)
      ]),

    AnimatedCall('Left Swing Thru',
      formation:Formations.EightChainThru,
      from:'Eight Chain Thru',parts:'4',difficulty: 2,
      paths:[
          Forward +
          SwingLeft,

          ExtendRight.scale(1.0,2.0) +
          SwingLeft +
          SwingRight,

          Forward +
          SwingLeft,

          ExtendRight.scale(1.0,2.0) +
          SwingLeft +
          SwingRight
      ]),

    AnimatedCall('Left Swing Thru',
      formation:Formations.QuarterTagLH,
      from:'Left-Hand Quarter Tag',parts:'3',difficulty: 2,
      paths:[
          Path(),

          Path(),

          SwingLeft +
          SwingRight,

          SwingLeft
      ]),

    AnimatedCall('Left Swing Thru',
      formation:Formations.AlamoWave,
      from:'Alamo Wave',parts:'3.2',difficulty: 2,
      paths:[
          SxtnthRight.changehands(1) +
          SwingLeft +
          SxtnthRight.changehands(1) +
          SxtnthRight.changehands(2) +
          SwingRight +
          SxtnthRight.changehands(2),

          SxtnthLeft.changehands(1) +
          SwingLeft +
          SxtnthLeft.changehands(1) +
          SxtnthLeft.changehands(2) +
          SwingRight +
          SxtnthLeft.changehands(2),

          SxtnthRight.changehands(1) +
          SwingLeft +
          SxtnthRight.changehands(1) +
          SxtnthRight.changehands(2) +
          SwingRight +
          SxtnthRight.changehands(2),

          SxtnthLeft.changehands(1) +
          SwingLeft +
          SxtnthLeft.changehands(1) +
          SxtnthLeft.changehands(2) +
          SwingRight +
          SxtnthLeft.changehands(2)
      ]),

    AnimatedCall('Left Swing Thru',
      formation:Formations.NormalLines,
      from:'Facing Lines',parts:'5',difficulty: 2,
      paths:[
          ExtendRight.changeBeats(2).scale(2.0,0.5) +
          SwingLeft.scale(0.5,0.5),

          ExtendRight.changeBeats(2).scale(2.0,0.5) +
          SwingLeft.scale(0.5,0.5) +
          SwingRight.scale(0.5,0.5),

          ExtendRight.changeBeats(2).scale(2.0,0.5) +
          SwingLeft.scale(0.5,0.5),

          ExtendRight.changeBeats(2).scale(2.0,0.5) +
          SwingLeft.scale(0.5,0.5) +
          SwingRight.scale(0.5,0.5)
      ]),
  ];

