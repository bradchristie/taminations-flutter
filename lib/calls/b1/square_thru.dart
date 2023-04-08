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

  final List<AnimatedCall> SquareThru = [ 

    AnimatedCall('Square Thru 2',
      formation:Formations.FacingCouplesCompact,
      from:'Facing Couples',difficulty: 1,
      paths:[
          PullLeft.changeBeats(1.5).scale(1.5,0.5) +
          LeadRight.scale(0.5,1.5) +
          ExtendLeft.changeBeats(2).scale(1.5,0.5),

          PullLeft.changeBeats(1.5).scale(1.5,0.5) +
          LeadLeft.skew(0.5,-0.5) +
          ExtendLeft.changeBeats(2).scale(1.5,0.5)
      ]),

    AnimatedCall('Square Thru 2',
      formation:Formations.WaveRH,
      from:'Right-Hand Wave',difficulty: 2,
      paths:[
          LeadRight.changeBeats(3).scale(0.5,3.0) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          LeadLeft.changeBeats(3).skew(0.5,0.0) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Square Thru 2',
      formation:Formations.EightChainThru,
      from:'Eight Chain Thru',difficulty: 1,
      paths:[
          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          PullLeft.scale(1.0,0.5) +
          LeadLeft.skew(0.5,-0.5) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          PullLeft.scale(1.0,0.5) +
          LeadLeft.skew(0.5,-0.5) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Square Thru 2',
      formation:Formations.NormalLines,
      from:'Lines',difficulty: 1,
      paths:[
          Forward +
          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5) +
          ExtendLeft.scale(1.0,0.5),

          Forward +
          PullLeft.scale(1.0,0.5) +
          LeadLeft.skew(0.5,-0.5) +
          ExtendLeft.scale(1.0,0.5),

          Forward +
          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5) +
          ExtendLeft.scale(1.0,0.5),

          Forward +
          PullLeft.scale(1.0,0.5) +
          LeadLeft.skew(0.5,-0.5) +
          ExtendLeft.scale(1.0,0.5)
      ]),

    AnimatedCall('Square Thru 2',
      formation:Formations.OceanWavesRHBGGB,
      from:'Right-Hand Waves',difficulty: 2,
      paths:[
          LeadRight.changeBeats(3).scale(0.5,3.0) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          LeadLeft.changeBeats(3).skew(0.5,0.0) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          LeadLeft.changeBeats(3).skew(0.5,0.0) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          LeadRight.changeBeats(3).scale(0.5,3.0) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Square Thru 2',
      formation:Formations.TidalWaveRHBGGB,
      from:'Right-Hand Tidal Wave',difficulty: 2,
      paths:[
          LeadRight.changeBeats(2).scale(0.5,1.5) +
          ExtendLeft.changeBeats(2).scale(1.0,0.5),

          LeadLeft.changeBeats(2).scale(1.0,0.5).skew(0.5,0.0) +
          ExtendLeft.changeBeats(2).scale(1.0,0.5),

          LeadLeft.changeBeats(2).scale(1.0,0.5).skew(0.5,0.0) +
          ExtendLeft.changeBeats(2).scale(1.0,0.5),

          LeadRight.changeBeats(2).scale(0.5,1.5) +
          ExtendLeft.changeBeats(2).scale(1.0,0.5)
      ]),

    AnimatedCall('Square Thru 3',
      formation:Formations.FacingCouplesCompact,
      from:'Facing Couples',difficulty: 1,
      paths:[
          PullLeft.changeBeats(1.5).scale(1.5,0.5) +
          LeadRight.changeBeats(2).scale(0.5,1.5) +
          LeadRight.changeBeats(2).skew(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(1.5,0.5),

          PullLeft.changeBeats(1.5).scale(1.5,0.5) +
          LeadLeft.changeBeats(2).skew(0.5,-0.5) +
          LeadLeft.changeBeats(2).scale(0.5,1.5) +
          ExtendRight.changeBeats(2).scale(1.5,0.5)
      ]),

    AnimatedCall('Square Thru 3',
      formation:Formations.WaveRH,
      from:'Right-Hand Wave',difficulty: 2,
      paths:[
          LeadRight.changeBeats(3).scale(0.5,3.0) +
          LeadRight.skew(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          LeadLeft.changeBeats(3).skew(0.5,0.0) +
          LeadLeft.scale(0.5,1.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Square Thru 3',
      formation:Formations.EightChainThru,
      from:'Eight Chain Thru',difficulty: 1,
      paths:[
          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5) +
          ExtendRight.scale(1.0,0.5),

          PullLeft.scale(1.0,0.5) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.scale(0.5,1.5) +
          ExtendRight.scale(1.0,0.5),

          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5) +
          ExtendRight.scale(1.0,0.5),

          PullLeft.scale(1.0,0.5) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.scale(0.5,1.5) +
          ExtendRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Square Thru 3',
      formation:Formations.NormalLines,
      from:'Lines',difficulty: 1,
      paths:[
          Forward +
          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          Forward +
          PullLeft.scale(1.0,0.5) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.scale(0.5,1.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          Forward +
          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          Forward +
          PullLeft.scale(1.0,0.5) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.scale(0.5,1.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Square Thru 3',
      formation:Formations.OceanWavesRHBGGB,
      from:'Right-Hand Waves',difficulty: 2,
      paths:[
          LeadRight.changeBeats(3).scale(0.5,3.0) +
          LeadRight.skew(0.5,0.5) +
          ExtendRight.scale(1.0,0.5),

          LeadLeft.changeBeats(3).skew(0.5,0.0) +
          LeadLeft.scale(0.5,1.5) +
          ExtendRight.scale(1.0,0.5),

          LeadLeft.changeBeats(3).skew(0.5,0.0) +
          LeadLeft.scale(0.5,1.5) +
          ExtendRight.scale(1.0,0.5),

          LeadRight.changeBeats(3).scale(0.5,3.0) +
          LeadRight.skew(0.5,0.5) +
          ExtendRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Square Thru 3',
      formation:Formations.TidalWaveRHBGGB,
      from:'Right-Hand Tidal Wave',difficulty: 2,
      paths:[
          LeadRight.changeBeats(2).scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5) +
          ExtendRight.scale(1.5,0.5),

          LeadLeft.changeBeats(2).scale(1.0,0.5).skew(0.5,0.0) +
          LeadLeft.scale(0.5,1.5) +
          ExtendRight.scale(1.5,0.5),

          LeadLeft.changeBeats(2).scale(1.0,0.5).skew(0.5,0.0) +
          LeadLeft.scale(0.5,1.5) +
          ExtendRight.scale(1.5,0.5),

          LeadRight.changeBeats(2).scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5) +
          ExtendRight.scale(1.5,0.5)
      ]),

    AnimatedCall('Square Thru 4',
      formation:Formations.FacingCouplesCompact,
      from:'Facing Couples',difficulty: 1,
      paths:[
          PullLeft.changeBeats(2).scale(1.5,0.5) +
          LeadRight.changeBeats(2).scale(0.5,1.5) +
          LeadRight.changeBeats(2).skew(0.5,0.5) +
          LeadRight.changeBeats(2).scale(0.5,1.5) +
          ExtendLeft.changeBeats(2).scale(1.5,0.5),

          PullLeft.changeBeats(2).scale(1.5,0.5) +
          LeadLeft.changeBeats(2).skew(0.5,-0.5) +
          LeadLeft.changeBeats(2).scale(0.5,1.5) +
          LeadLeft.changeBeats(2).skew(0.5,-0.5) +
          ExtendLeft.changeBeats(2).scale(1.5,0.5)
      ]),

    AnimatedCall('Square Thru 4',
      formation:Formations.WaveRH,
      from:'Right-Hand Wave',difficulty: 2,
      paths:[
          LeadRight.changeBeats(3).scale(0.5,3.0) +
          LeadRight.skew(0.5,0.5) +
          LeadRight.scale(0.5,1.5) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          LeadLeft.changeBeats(3).skew(0.5,0.0) +
          LeadLeft.scale(0.5,1.5) +
          LeadLeft.skew(0.5,-0.5) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Square Thru 4',
      formation:Formations.EightChainThru,
      from:'Eight Chain Thru',difficulty: 1,
      paths:[
          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5) +
          LeadRight.scale(0.5,1.5) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          PullLeft.scale(1.0,0.5) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.scale(0.5,1.5) +
          LeadLeft.skew(0.5,-0.5) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5) +
          LeadRight.scale(0.5,1.5) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          PullLeft.scale(1.0,0.5) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.scale(0.5,1.5) +
          LeadLeft.skew(0.5,-0.5) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Square Thru 4',
      formation:Formations.NormalLines,
      from:'Lines',difficulty: 1,
      paths:[
          Forward +
          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5) +
          LeadRight.scale(0.5,1.5) +
          ExtendLeft.scale(1.0,0.5),

          Forward +
          PullLeft.scale(1.0,0.5) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.scale(0.5,1.5) +
          LeadLeft.skew(0.5,-0.5) +
          ExtendLeft.scale(1.0,0.5),

          Forward +
          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5) +
          LeadRight.scale(0.5,1.5) +
          ExtendLeft.scale(1.0,0.5),

          Forward +
          PullLeft.scale(1.0,0.5) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.scale(0.5,1.5) +
          LeadLeft.skew(0.5,-0.5) +
          ExtendLeft.scale(1.0,0.5)
      ]),

    AnimatedCall('Square Thru 4',
      formation:Formations.OceanWavesRHBGGB,
      from:'Right-Hand Waves',difficulty: 2,
      paths:[
          LeadRight.changeBeats(3).scale(0.5,3.0) +
          LeadRight.skew(0.5,0.5) +
          LeadRight.scale(0.5,1.5) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          LeadLeft.changeBeats(3).skew(0.5,0.0) +
          LeadLeft.scale(0.5,1.5) +
          LeadLeft.skew(0.5,-0.5) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          LeadLeft.changeBeats(3).skew(0.5,0.0) +
          LeadLeft.scale(0.5,1.5) +
          LeadLeft.skew(0.5,-0.5) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          LeadRight.changeBeats(3).scale(0.5,3.0) +
          LeadRight.skew(0.5,0.5) +
          LeadRight.scale(0.5,1.5) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Square Thru 4',
      formation:Formations.TidalWaveRHBGGB,
      from:'Right-Hand Tidal Wave',difficulty: 2,
      paths:[
          LeadRight.changeBeats(2).scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5) +
          LeadRight.scale(0.5,1.5) +
          ExtendLeft.scale(1.0,0.5),

          LeadLeft.changeBeats(2).scale(1.0,0.5).skew(0.5,0.0) +
          LeadLeft.scale(0.5,1.5) +
          LeadLeft.skew(0.5,-0.5) +
          ExtendLeft.scale(1.0,0.5),

          LeadLeft.changeBeats(2).scale(1.0,0.5).skew(0.5,0.0) +
          LeadLeft.scale(0.5,1.5) +
          LeadLeft.skew(0.5,-0.5) +
          ExtendLeft.scale(1.0,0.5),

          LeadRight.changeBeats(2).scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5) +
          LeadRight.scale(0.5,1.5) +
          ExtendLeft.scale(1.0,0.5)
      ]),

    AnimatedCall('Left Square Thru 4',
      formation:Formations.FacingCouplesCompact,
      from:'Facing Couples',difficulty: 1,noDisplay: true,
      paths:[
          Forward.scale(0.5,1.0) +
          PullRight.scale(1.0,0.5) +
          LeadRight.skew(0.5,0.5) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(1.5,0.5),

          Forward.scale(0.5,1.0) +
          PullRight.scale(1.0,0.5) +
          LeadLeft.scale(0.5,1.5) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.scale(0.5,1.5) +
          ExtendRight.changeBeats(2).scale(1.5,0.5)
      ]),

    AnimatedCall('Left Square Thru 4',
      formation:Formations.WaveLH,
      from:'Left-Hand Wave',difficulty: 2,noDisplay: true,
      paths:[
          LeadLeft.changeBeats(3).scale(0.5,3.0) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.scale(0.5,1.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          LeadRight.changeBeats(3).skew(0.5,0.0) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Left Square Thru 4',
      formation:Formations.EightChainThru,
      from:'Eight Chain Thru',difficulty: 1,noDisplay: true,
      paths:[
          PullRight.scale(1.0,0.5) +
          LeadRight.skew(0.5,0.5) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          PullRight.scale(1.0,0.5) +
          LeadLeft.scale(0.5,1.5) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.scale(0.5,1.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          PullRight.scale(1.0,0.5) +
          LeadRight.skew(0.5,0.5) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          PullRight.scale(1.0,0.5) +
          LeadLeft.scale(0.5,1.5) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.scale(0.5,1.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Left Square Thru 4',
      formation:Formations.NormalLines,
      from:'Lines',difficulty: 2,noDisplay: true,
      paths:[
          Forward +
          PullRight.scale(1.0,0.5) +
          LeadRight.skew(0.5,0.5) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5) +
          ExtendRight.scale(1.0,0.5),

          Forward +
          PullRight.scale(1.0,0.5) +
          LeadLeft.scale(0.5,1.5) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.scale(0.5,1.5) +
          ExtendRight.scale(1.0,0.5),

          Forward +
          PullRight.scale(1.0,0.5) +
          LeadRight.skew(0.5,0.5) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5) +
          ExtendRight.scale(1.0,0.5),

          Forward +
          PullRight.scale(1.0,0.5) +
          LeadLeft.scale(0.5,1.5) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.scale(0.5,1.5) +
          ExtendRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Left Square Thru 3 1/2',
      formation:Formations.FacingCouplesCompact,
      from:'Facing Couples',difficulty: 1,noDisplay: true,
      paths:[
          Forward.scale(0.5,1.0) +
          PullRight.scale(1.0,0.5) +
          LeadRight.skew(0.5,0.5) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.scale(3.0,1.0).skew(0.0,0.5),

          Forward.scale(0.5,1.0) +
          PullRight.scale(1.0,0.5) +
          LeadLeft.scale(0.5,1.5) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.scale(1.0,1.5)
      ]),

    AnimatedCall('Left Square Thru 3 1/2',
      formation:Formations.WaveLH,
      from:'Left-Hand Wave',difficulty: 2,noDisplay: true,
      paths:[
          LeadLeft.changeBeats(3).scale(0.5,3.0) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.scale(3.0,1.5),

          LeadRight.changeBeats(3).skew(0.5,0.0) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.skew(0.0,0.5)
      ]),

    AnimatedCall('Left Square Thru 3 1/2',
      formation:Formations.EightChainThru,
      from:'Eight Chain Thru',difficulty: 1,noDisplay: true,
      paths:[
          PullRight.scale(1.0,0.5) +
          LeadRight.skew(0.5,0.5) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5),

          PullRight.scale(1.0,0.5) +
          LeadLeft.scale(0.5,1.5) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.scale(0.5,1.5),

          PullRight.scale(1.0,0.5) +
          LeadRight.skew(0.5,0.5) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5),

          PullRight.scale(1.0,0.5) +
          LeadLeft.scale(0.5,1.5) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.scale(0.5,1.5)
      ]),

    AnimatedCall('Left Square Thru 3 1/2',
      formation:Formations.NormalLines,
      from:'Lines',difficulty: 2,noDisplay: true,
      paths:[
          Forward +
          PullRight.scale(1.0,0.5) +
          LeadRight.skew(0.5,0.5) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.scale(3.0,1.0).skew(0.0,0.5),

          Forward +
          PullRight.scale(1.0,0.5) +
          LeadLeft.scale(0.5,1.5) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.scale(1.0,1.5),

          Forward +
          PullRight.scale(1.0,0.5) +
          LeadRight.skew(0.5,0.5) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.scale(3.0,1.0).skew(0.0,0.5),

          Forward +
          PullRight.scale(1.0,0.5) +
          LeadLeft.scale(0.5,1.5) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.scale(1.0,1.5)
      ]),

    AnimatedCall('Left Square Thru 3',
      formation:Formations.FacingCouplesCompact,
      from:'Facing Couples',difficulty: 1,noDisplay: true,
      paths:[
          Forward.scale(0.5,1.0) +
          PullRight.scale(1.0,0.5) +
          LeadRight.skew(0.5,0.5) +
          LeadRight.scale(0.5,1.5) +
          ExtendLeft.changeBeats(2).scale(1.5,0.5),

          Forward.scale(0.5,1.0) +
          PullRight.scale(1.0,0.5) +
          LeadLeft.scale(0.5,1.5) +
          LeadLeft.skew(0.5,-0.5) +
          ExtendLeft.changeBeats(2).scale(1.5,0.5)
      ]),

    AnimatedCall('Left Square Thru 3',
      formation:Formations.WaveLH,
      from:'Left-Hand Wave',difficulty: 2,noDisplay: true,
      paths:[
          LeadLeft.changeBeats(3).scale(0.5,3.0) +
          LeadLeft.skew(0.5,-0.5) +
          ExtendLeft.changeBeats(2).scale(1.5,0.5),

          LeadRight.changeBeats(3).skew(0.5,0.0) +
          LeadRight.scale(0.5,1.5) +
          ExtendLeft.changeBeats(2).scale(1.5,0.5)
      ]),

    AnimatedCall('Left Square Thru 3',
      formation:Formations.EightChainThru,
      from:'Eight Chain Thru',difficulty: 1,noDisplay: true,
      paths:[
          PullRight.scale(1.0,0.5) +
          LeadRight.skew(0.5,0.5) +
          LeadRight.scale(0.5,1.5) +
          ExtendLeft.changeBeats(2).scale(1.0,0.5),

          PullRight.scale(1.0,0.5) +
          LeadLeft.scale(0.5,1.5) +
          LeadLeft.skew(0.5,-0.5) +
          ExtendLeft.changeBeats(2).scale(1.0,0.5),

          PullRight.scale(1.0,0.5) +
          LeadRight.skew(0.5,0.5) +
          LeadRight.scale(0.5,1.5) +
          ExtendLeft.changeBeats(2).scale(1.0,0.5),

          PullRight.scale(1.0,0.5) +
          LeadLeft.scale(0.5,1.5) +
          LeadLeft.skew(0.5,-0.5) +
          ExtendLeft.changeBeats(2).scale(1.0,0.5)
      ]),

    AnimatedCall('Left Square Thru 3',
      formation:Formations.NormalLines,
      from:'Lines',difficulty: 2,noDisplay: true,
      paths:[
          Forward +
          PullRight.scale(1.0,0.5) +
          LeadRight.skew(0.5,0.5) +
          LeadRight.scale(0.5,1.5) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          Forward +
          PullRight.scale(1.0,0.5) +
          LeadLeft.scale(0.5,1.5) +
          LeadLeft.skew(0.5,-0.5) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          Forward +
          PullRight.scale(1.0,0.5) +
          LeadRight.skew(0.5,0.5) +
          LeadRight.scale(0.5,1.5) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          Forward +
          PullRight.scale(1.0,0.5) +
          LeadLeft.scale(0.5,1.5) +
          LeadLeft.skew(0.5,-0.5) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Left Square Thru 2 1/2',
      formation:Formations.FacingCouplesCompact,
      from:'Facing Couples',difficulty: 1,noDisplay: true,
      paths:[
          Forward.scale(0.5,1.0) +
          PullRight.scale(1.0,0.5) +
          LeadRight.skew(0.5,0.5) +
          LeadRight.scale(3.0,1.5),

          Forward.scale(0.5,1.0) +
          PullRight.scale(1.0,0.5) +
          LeadLeft.scale(0.5,1.5) +
          LeadLeft.skew(0.0,-0.5)
      ]),

    AnimatedCall('Left Square Thru 2 1/2',
      formation:Formations.WaveLH,
      from:'Left-Hand Wave',difficulty: 2,noDisplay: true,
      paths:[
          LeadLeft.changeBeats(3).scale(0.5,3.0) +
          LeadLeft.skew(0.0,-0.5),

          LeadRight.changeBeats(3).skew(0.5,0.0) +
          LeadRight.scale(3.0,1.5)
      ]),

    AnimatedCall('Left Square Thru 2 1/2',
      formation:Formations.EightChainThru,
      from:'Eight Chain Thru',difficulty: 1,noDisplay: true,
      paths:[
          PullRight.scale(1.0,0.5) +
          LeadRight.skew(0.5,0.5) +
          LeadRight.scale(3.0,1.5),

          PullRight.scale(1.0,0.5) +
          LeadLeft.scale(0.5,1.5) +
          LeadLeft.skew(0.0,-0.5),

          PullRight.scale(1.0,0.5) +
          LeadRight.skew(0.5,0.5) +
          LeadRight.scale(3.0,1.5),

          PullRight.scale(1.0,0.5) +
          LeadLeft.scale(0.5,1.5) +
          LeadLeft.skew(0.0,-0.5)
      ]),

    AnimatedCall('Left Square Thru 2 1/2',
      formation:Formations.NormalLines,
      from:'Lines',difficulty: 2,noDisplay: true,
      paths:[
          Forward +
          PullRight.scale(1.0,0.5) +
          LeadRight.skew(0.5,0.5) +
          LeadRight.scale(0.5,1.5),

          Forward +
          PullRight.scale(1.0,0.5) +
          LeadLeft.scale(0.5,1.5) +
          LeadLeft.skew(0.5,-0.5),

          Forward +
          PullRight.scale(1.0,0.5) +
          LeadRight.skew(0.5,0.5) +
          LeadRight.scale(0.5,1.5),

          Forward +
          PullRight.scale(1.0,0.5) +
          LeadLeft.scale(0.5,1.5) +
          LeadLeft.skew(0.5,-0.5)
      ]),

    AnimatedCall('Left Square Thru 2',
      formation:Formations.FacingCouplesCompact,
      from:'Facing Couples',difficulty: 1,noDisplay: true,
      paths:[
          Forward.scale(0.5,1.0) +
          PullRight.scale(1.0,0.5) +
          LeadRight.skew(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(1.5,0.5),

          Forward.scale(0.5,1.0) +
          PullRight.scale(1.0,0.5) +
          LeadLeft.scale(0.5,1.5) +
          ExtendRight.changeBeats(2).scale(1.5,0.5)
      ]),

    AnimatedCall('Left Square Thru 2',
      formation:Formations.WaveLH,
      from:'Left-Hand Wave',difficulty: 2,noDisplay: true,
      paths:[
          LeadLeft.changeBeats(3).scale(0.5,3.0) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          LeadRight.changeBeats(3).skew(0.5,0.0) +
          ExtendRight.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Left Square Thru 2',
      formation:Formations.EightChainThru,
      from:'Eight Chain Thru',difficulty: 1,noDisplay: true,
      paths:[
          PullRight.scale(1.0,0.5) +
          LeadRight.skew(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          PullRight.scale(1.0,0.5) +
          LeadLeft.scale(0.5,1.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          PullRight.scale(1.0,0.5) +
          LeadRight.skew(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          PullRight.scale(1.0,0.5) +
          LeadLeft.scale(0.5,1.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Left Square Thru 2',
      formation:Formations.NormalLines,
      from:'Lines',difficulty: 2,noDisplay: true,
      paths:[
          Forward +
          PullRight.scale(1.0,0.5) +
          LeadRight.skew(0.5,0.5) +
          ExtendRight.scale(1.0,0.5),

          Forward +
          PullRight.scale(1.0,0.5) +
          LeadLeft.scale(0.5,1.5) +
          ExtendRight.scale(1.0,0.5),

          Forward +
          PullRight.scale(1.0,0.5) +
          LeadRight.skew(0.5,0.5) +
          ExtendRight.scale(1.0,0.5),

          Forward +
          PullRight.scale(1.0,0.5) +
          LeadLeft.scale(0.5,1.5) +
          ExtendRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Left Square Thru 1 1/2',
      formation:Formations.FacingCouplesCompact,
      from:'Facing Couples',difficulty: 1,noDisplay: true,
      paths:[
          Forward.scale(0.5,1.0) +
          PullRight.scale(1.0,0.5) +
          LeadRight.scale(3.0,1.0).skew(0.0,0.5),

          Forward.scale(0.5,1.0) +
          PullRight.scale(1.0,0.5) +
          LeadLeft.scale(1.0,1.5)
      ]),

    AnimatedCall('Left Square Thru 1 1/2',
      formation:Formations.WaveLH,
      from:'Left-Hand Wave',difficulty: 2,noDisplay: true,
      paths:[
          LeadLeft.changeBeats(3).scale(1.0,3.0),

          LeadRight.changeBeats(3).scale(3.0,1.0)
      ]),

    AnimatedCall('Left Square Thru 1 1/2',
      formation:Formations.EightChainThru,
      from:'Eight Chain Thru',difficulty: 1,noDisplay: true,
      paths:[
          PullRight.scale(1.0,0.5) +
          LeadRight.skew(0.5,0.5),

          PullRight.scale(1.0,0.5) +
          LeadLeft.scale(0.5,1.5),

          PullRight.scale(1.0,0.5) +
          LeadRight.skew(0.5,0.5),

          PullRight.scale(1.0,0.5) +
          LeadLeft.scale(0.5,1.5)
      ]),

    AnimatedCall('Left Square Thru 1 1/2',
      formation:Formations.NormalLines,
      from:'Lines',difficulty: 2,noDisplay: true,
      paths:[
          Forward +
          PullRight.scale(1.0,0.5) +
          LeadRight.scale(3.0,1.0).skew(0.0,0.5),

          Forward +
          PullRight.scale(1.0,0.5) +
          LeadLeft.scale(1.0,1.5),

          Forward +
          PullRight.scale(1.0,0.5) +
          LeadRight.scale(3.0,1.0).skew(0.0,0.5),

          Forward +
          PullRight.scale(1.0,0.5) +
          LeadLeft.scale(1.0,1.5)
      ]),

    AnimatedCall('Heads Square Thru 2',
      formation:Formations.StaticSquare,
      from:'Static Square',group:' ',difficulty: 1,notForSequencer: true,
      paths:[
          Forward_2 +
          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5) +
          ExtendLeft.scale(1.0,0.5),

          Forward_2 +
          PullLeft.scale(1.0,0.5) +
          LeadLeft.skew(0.5,-0.5) +
          ExtendLeft.scale(1.0,0.5),

          Path(),

          Path()
      ]),

    AnimatedCall('Heads Square Thru 3',
      formation:Formations.StaticSquare,
      from:'Static Square',group:' ',difficulty: 1,notForSequencer: true,
      paths:[
          Forward_2 +
          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5) +
          ExtendRight.scale(1.0,0.5),

          Forward_2 +
          PullLeft.scale(1.0,0.5) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.scale(0.5,1.5) +
          ExtendRight.scale(1.0,0.5),

          Path(),

          Path()
      ]),

    AnimatedCall('Heads Square Thru 4',
      formation:Formations.StaticSquare,
      from:'Static Square',group:' ',difficulty: 1,notForSequencer: true,
      paths:[
          Forward_2 +
          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5) +
          LeadRight.scale(0.5,1.5) +
          ExtendLeft.scale(1.0,0.5),

          Forward_2 +
          PullLeft.scale(1.0,0.5) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.scale(0.5,1.5) +
          LeadLeft.skew(0.5,-0.5) +
          ExtendLeft.scale(1.0,0.5),

          Path(),

          Path()
      ]),

    AnimatedCall('Heads Left Square Thru 4',
      formation:Formations.StaticSquare,
      from:'Static Square',group:' ',difficulty: 1,notForSequencer: true,
      paths:[
          Forward_2 +
          PullRight.scale(1.0,0.5) +
          LeadRight.skew(0.5,0.5) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5) +
          ExtendRight.scale(1.0,0.5),

          Forward_2 +
          PullRight.scale(1.0,0.5) +
          LeadLeft.scale(0.5,1.5) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.scale(0.5,1.5) +
          ExtendRight.scale(1.0,0.5),

          Path(),

          Path()
      ]),

    AnimatedCall('Sides Square Thru 2',
      formation:Formations.StaticSquare,
      from:'Static Square',group:' ',difficulty: 1,notForSequencer: true,noDisplay: true,
      paths:[
          Path(),

          Path(),

          Forward_2 +
          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5) +
          ExtendLeft.scale(1.0,0.5),

          Forward_2 +
          PullLeft.scale(1.0,0.5) +
          LeadLeft.skew(0.5,-0.5) +
          ExtendLeft.scale(1.0,0.5)
      ]),

    AnimatedCall('Sides Square Thru 3',
      formation:Formations.StaticSquare,
      from:'Static Square',group:' ',difficulty: 1,notForSequencer: true,noDisplay: true,
      paths:[
          Path(),

          Path(),

          Forward_2 +
          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5) +
          ExtendRight.scale(1.0,0.5),

          Forward_2 +
          PullLeft.scale(1.0,0.5) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.scale(0.5,1.5) +
          ExtendRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Sides Square Thru 4',
      formation:Formations.StaticSquare,
      from:'Static Square',group:' ',difficulty: 1,notForSequencer: true,noDisplay: true,
      paths:[
          Path(),

          Path(),

          Forward_2 +
          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5) +
          LeadRight.scale(0.5,1.5) +
          ExtendLeft.scale(1.0,0.5),

          Forward_2 +
          PullLeft.scale(1.0,0.5) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.scale(0.5,1.5) +
          LeadLeft.skew(0.5,-0.5) +
          ExtendLeft.scale(1.0,0.5)
      ]),

    AnimatedCall('Sides Left Square Thru 4',
      formation:Formations.StaticSquare,
      from:'Static Square',group:' ',difficulty: 2,notForSequencer: true,noDisplay: true,
      paths:[
          Path(),

          Path(),

          Forward_2 +
          PullRight.scale(1.0,0.5) +
          LeadRight.skew(0.5,0.5) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5) +
          ExtendRight.scale(1.0,0.5),

          Forward_2 +
          PullRight.scale(1.0,0.5) +
          LeadLeft.scale(0.5,1.5) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.scale(0.5,1.5) +
          ExtendRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Square Thru 1 1/2',
      formation:Formations.FacingCouplesCompact,
      from:'Facing Couples',difficulty: 2,
      paths:[
          Forward.scale(0.5,1.0) +
          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5),

          Forward.scale(0.5,1.0) +
          PullLeft.scale(1.0,0.5) +
          LeadLeft.skew(0.5,-0.5)
      ]),

    AnimatedCall('Square Thru 1 1/2',
      formation:Formations.WaveRH,
      from:'Right-Hand Wave',difficulty: 3,
      paths:[
          LeadRight.changeBeats(3).scale(0.5,3.0),

          LeadLeft.changeBeats(3).skew(0.5,0.0)
      ]),

    AnimatedCall('Square Thru 1 1/2',
      formation:Formations.EightChainThru,
      from:'Eight Chain Thru',difficulty: 2,
      paths:[
          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5),

          PullLeft.scale(1.0,0.5) +
          LeadLeft.skew(0.5,-0.5),

          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5),

          PullLeft.scale(1.0,0.5) +
          LeadLeft.skew(0.5,-0.5)
      ]),

    AnimatedCall('Square Thru 1 1/2',
      formation:Formations.NormalLines,
      from:'Lines',difficulty: 2,
      paths:[
          Forward +
          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5),

          Forward +
          PullLeft.scale(1.0,0.5) +
          LeadLeft.skew(0.5,-0.5),

          Forward +
          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5),

          Forward +
          PullLeft.scale(1.0,0.5) +
          LeadLeft.skew(0.5,-0.5)
      ]),

    AnimatedCall('Square Thru 1 1/2',
      formation:Formations.OceanWavesRHBGGB,
      from:'Right-Hand Waves',difficulty: 3,
      paths:[
          LeadRight.changeBeats(3).scale(0.5,3.0),

          LeadLeft.changeBeats(3).skew(0.5,0.0),

          LeadLeft.changeBeats(3).skew(0.5,0.0),

          LeadRight.changeBeats(3).scale(0.5,3.0)
      ]),

    AnimatedCall('Square Thru 1 1/2',
      formation:Formations.TidalWaveRHBGGB,
      from:'Right-Hand Tidal Wave',difficulty: 3,
      paths:[
          LeadRight.changeBeats(2).scale(0.5,1.5),

          LeadLeft.changeBeats(2).scale(1.0,0.5).skew(0.5,0.0),

          LeadLeft.changeBeats(2).scale(1.0,0.5).skew(0.5,0.0),

          LeadRight.changeBeats(2).scale(0.5,1.5)
      ]),

    AnimatedCall('Square Thru 2 1/2',
      formation:Formations.FacingCouplesCompact,
      from:'Facing Couples',difficulty: 2,
      paths:[
          Forward.scale(0.5,1.0) +
          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5),

          Forward.scale(0.5,1.0) +
          PullLeft.scale(1.0,0.5) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.scale(0.5,1.5)
      ]),

    AnimatedCall('Square Thru 2 1/2',
      formation:Formations.WaveRH,
      from:'Right-Hand Wave',difficulty: 3,
      paths:[
          LeadRight.changeBeats(3).scale(0.5,3.0) +
          LeadRight.skew(0.5,0.5),

          LeadLeft.changeBeats(3).skew(0.5,0.0) +
          LeadLeft.scale(0.5,1.5)
      ]),

    AnimatedCall('Square Thru 2 1/2',
      formation:Formations.EightChainThru,
      from:'Eight Chain Thru',difficulty: 2,
      paths:[
          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5),

          PullLeft.scale(1.0,0.5) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.scale(0.5,1.5),

          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5),

          PullLeft.scale(1.0,0.5) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.scale(0.5,1.5)
      ]),

    AnimatedCall('Square Thru 2 1/2',
      formation:Formations.NormalLines,
      from:'Lines',difficulty: 2,
      paths:[
          Forward +
          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5),

          Forward +
          PullLeft.scale(1.0,0.5) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.scale(0.5,1.5),

          Forward +
          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5),

          Forward +
          PullLeft.scale(1.0,0.5) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.scale(0.5,1.5)
      ]),

    AnimatedCall('Square Thru 2 1/2',
      formation:Formations.OceanWavesRHBGGB,
      from:'Right-Hand Waves',difficulty: 3,
      paths:[
          LeadRight.changeBeats(3).scale(0.5,3.0) +
          LeadRight.skew(0.5,0.5),

          LeadLeft.changeBeats(3).skew(0.5,0.0) +
          LeadLeft.scale(0.5,1.5),

          LeadLeft.changeBeats(3).skew(0.5,0.0) +
          LeadLeft.scale(0.5,1.5),

          LeadRight.changeBeats(3).scale(0.5,3.0) +
          LeadRight.skew(0.5,0.5)
      ]),

    AnimatedCall('Square Thru 2 1/2',
      formation:Formations.TidalWaveRHBGGB,
      from:'Right-Hand Tidal Wave',difficulty: 3,
      paths:[
          LeadRight.changeBeats(2).scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5),

          LeadLeft.changeBeats(2).scale(1.0,0.5).skew(0.5,0.0) +
          LeadLeft.scale(0.5,1.5),

          LeadLeft.changeBeats(2).scale(1.0,0.5).skew(0.5,0.0) +
          LeadLeft.scale(0.5,1.5),

          LeadRight.changeBeats(2).scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5)
      ]),

    AnimatedCall('Square Thru 3 1/2',
      formation:Formations.FacingCouplesCompact,
      from:'Facing Couples',difficulty: 2,
      paths:[
          Forward.scale(0.5,1.0) +
          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5) +
          LeadRight.scale(0.5,1.5),

          Forward.scale(0.5,1.0) +
          PullLeft.scale(1.0,0.5) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.scale(0.5,1.5) +
          LeadLeft.skew(0.5,-0.5)
      ]),

    AnimatedCall('Square Thru 3 1/2',
      formation:Formations.WaveRH,
      from:'Right-Hand Wave',difficulty: 3,
      paths:[
          LeadRight.changeBeats(3).scale(0.5,3.0) +
          LeadRight.skew(0.5,0.5) +
          LeadRight.scale(0.5,1.5),

          LeadLeft.changeBeats(3).skew(0.5,0.0) +
          LeadLeft.scale(0.5,1.5) +
          LeadLeft.skew(0.5,-0.5)
      ]),

    AnimatedCall('Square Thru 3 1/2',
      formation:Formations.EightChainThru,
      from:'Eight Chain Thru',difficulty: 2,
      paths:[
          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5) +
          LeadRight.scale(0.5,1.5),

          PullLeft.scale(1.0,0.5) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.scale(0.5,1.5) +
          LeadLeft.skew(0.5,-0.5),

          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5) +
          LeadRight.scale(0.5,1.5),

          PullLeft.scale(1.0,0.5) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.scale(0.5,1.5) +
          LeadLeft.skew(0.5,-0.5)
      ]),

    AnimatedCall('Square Thru 3 1/2',
      formation:Formations.NormalLines,
      from:'Lines',difficulty: 2,
      paths:[
          Forward +
          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5) +
          LeadRight.scale(0.5,1.5),

          Forward +
          PullLeft.scale(1.0,0.5) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.scale(0.5,1.5) +
          LeadLeft.skew(0.5,-0.5),

          Forward +
          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5) +
          LeadRight.scale(0.5,1.5),

          Forward +
          PullLeft.scale(1.0,0.5) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.scale(0.5,1.5) +
          LeadLeft.skew(0.5,-0.5)
      ]),

    AnimatedCall('Square Thru 3 1/2',
      formation:Formations.OceanWavesRHBGGB,
      from:'Right-Hand Waves',difficulty: 3,
      paths:[
          LeadRight.changeBeats(3).scale(0.5,3.0) +
          LeadRight.skew(0.5,0.5) +
          LeadRight.scale(0.5,1.5),

          LeadLeft.changeBeats(3).skew(0.5,0.0) +
          LeadLeft.scale(0.5,1.5) +
          LeadLeft.skew(0.5,-0.5),

          LeadLeft.changeBeats(3).skew(0.5,0.0) +
          LeadLeft.scale(0.5,1.5) +
          LeadLeft.skew(0.5,-0.5),

          LeadRight.changeBeats(3).scale(0.5,3.0) +
          LeadRight.skew(0.5,0.5) +
          LeadRight.scale(0.5,1.5)
      ]),

    AnimatedCall('Square Thru 3 1/2',
      formation:Formations.TidalWaveRHBGGB,
      from:'Right-Hand Tidal Wave',difficulty: 3,
      paths:[
          LeadRight.changeBeats(2).scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5) +
          LeadRight.scale(0.5,1.5),

          LeadLeft.changeBeats(2).scale(1.0,0.5).skew(0.5,0.0) +
          LeadLeft.scale(0.5,1.5) +
          LeadLeft.skew(0.5,-0.5),

          LeadLeft.changeBeats(2).scale(1.0,0.5).skew(0.5,0.0) +
          LeadLeft.scale(0.5,1.5) +
          LeadLeft.skew(0.5,-0.5),

          LeadRight.changeBeats(2).scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5) +
          LeadRight.scale(0.5,1.5)
      ]),

    AnimatedCall('Square Thru, on the Third Hand Spin the Top',
      formation:Formations.NormalLines,
      group:'   ',parts:'5;3',difficulty: 2,
      paths:[
          Forward +
          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5) +
          SwingRight.scale(0.5,0.5) +
          SwingLeft.scale(0.5,0.5) +
          HingeLeft.scale(1.0,0.5),

          Forward +
          PullLeft.scale(1.0,0.5) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.scale(0.5,1.5) +
          SwingRight.scale(0.5,0.5) +
          LeadRight.changeBeats(4.5).scale(3.0,1.5),

          Forward +
          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5) +
          SwingRight.scale(0.5,0.5) +
          SwingLeft.scale(0.5,0.5) +
          HingeLeft.scale(1.0,0.5),

          Forward +
          PullLeft.scale(1.0,0.5) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.scale(0.5,1.5) +
          SwingRight.scale(0.5,0.5) +
          LeadRight.changeBeats(4.5).scale(3.0,1.5)
      ]),

    AnimatedCall('Square Thru, on the Third Hand Eight Chain 5',
      formation:Formations.EightChainThru,
      group:'   ',difficulty: 2,
      paths:[
          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5) +
          ExtendRight.scale(1.0,0.5) +
          BeauWheel.changeBeats(2.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          PullRight.changeBeats(1.25).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.25).scale(1.0,0.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5),

          PullLeft.scale(1.0,0.5) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.scale(0.5,1.5) +
          ExtendRight.scale(1.0,0.5) +
          BelleWheel.changeBeats(2.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          PullRight.changeBeats(1.25).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.25).scale(1.0,0.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5),

          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5) +
          ExtendRight.scale(1.0,0.5) +
          PullRight.changeBeats(1.25).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.25).scale(1.0,0.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          BeauWheel.changeBeats(2.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5),

          PullLeft.scale(1.0,0.5) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.scale(0.5,1.5) +
          ExtendRight.scale(1.0,0.5) +
          PullRight.changeBeats(1.25).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.25).scale(1.0,0.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          BelleWheel.changeBeats(2.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5)
      ]),

    AnimatedCall('Square Thru, on the Third Hand Box the Gnat and Right and Left Grand',
      formation:Formations.EightChainThru,
      group:'   ',parts:'4;3',difficulty: 2,
      paths:[
          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5) +
          UmTurnRight.changehands(6).skew(1.0,-0.5) +
          Forward.changehands(6) +
          Forward.changeBeats(.5).scale(0.5,1.0) +
          ExtendRight.changeBeats(2.5).changehands(1).scale(1.5,2.75) +
          LeadLeft_12.changeBeats(3).changehands(2).scale(2.0,2.0).skew(0.16,1.58) +
          LeadLeft_12.changeBeats(3).changehands(1).scale(3.0,3.0).skew(0.52,-1.2) +
          LeadLeft_12.changeBeats(2),

          PullLeft.scale(1.0,0.5) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.scale(0.5,1.5) +
          UmTurnLeft.changehands(6).skew(1.0,-0.5) +
          ExtendLeft.changehands(6) +
          ExtendLeft.changeBeats(3).changehands(1).scale(2.0,0.25) +
          LeadRight_12.changeBeats(3).changehands(2).scale(3.0,3.0).skew(0.52,1.3) +
          LeadRight_12.changeBeats(3).changehands(1).scale(2.0,2.0).skew(0.16,-1.67) +
          LeadRight_12.changeBeats(2).skew(1.0,0.5),

          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5) +
          UmTurnRight.changehands(6).skew(1.0,-0.5) +
          Forward.changehands(6) +
          LeadLeft.changeBeats(3).changehands(1).scale(1.75,1.0) +
          LeadLeft_12.changeBeats(3).changehands(2).scale(2.0,2.0).skew(0.16,1.58) +
          LeadLeft_12.changeBeats(3).changehands(1).scale(3.0,3.0).skew(0.52,-1.2) +
          LeadLeft_12.changeBeats(2),

          PullLeft.scale(1.0,0.5) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.scale(0.5,1.5) +
          UmTurnLeft.changehands(6).skew(1.0,-0.5) +
          ExtendLeft.changehands(6) +
          LeadRight.changeBeats(3).changehands(1).scale(0.25,2.0) +
          LeadRight_12.changeBeats(3).changehands(2).scale(3.0,3.0).skew(0.52,1.3) +
          LeadRight_12.changeBeats(3).changehands(1).scale(2.0,2.0).skew(0.16,-1.67) +
          LeadRight_12.changeBeats(2).skew(1.0,0.5)
      ]),

    AnimatedCall('Square Thru, on the Fourth Hand Left Swing Thru',
      formation:Formations.NormalLines,
      group:'   ',difficulty: 2,
      paths:[
          Forward +
          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5) +
          LeadRight.scale(0.5,1.5) +
          SwingLeft.scale(0.6,1.0),

          Forward +
          PullLeft.scale(1.0,0.5) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.scale(0.5,1.5) +
          LeadLeft.skew(0.5,-0.5) +
          SwingLeft.scale(0.6,0.4) +
          SwingRight.scale(0.7,0.7),

          Forward +
          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5) +
          LeadRight.scale(0.5,1.5) +
          SwingLeft.scale(0.6,1.0),

          Forward +
          PullLeft.scale(1.0,0.5) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.scale(0.5,1.5) +
          LeadLeft.skew(0.5,-0.5) +
          SwingLeft.scale(0.6,0.4) +
          SwingRight.scale(0.7,0.7)
      ]),

    AnimatedCall('Square Thru, on the Fourth Hand Left Allemande',
      formation:Formations.NormalLines,
      group:'   ',parts:'6.5',difficulty: 2,
      paths:[
          Forward +
          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5) +
          LeadRight.scale(0.5,1.5) +
          SwingLeft.scale(0.5,0.5) +
          Forward.changeBeats(2),

          Forward +
          PullLeft.scale(1.0,0.5) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.scale(0.5,1.5) +
          LeadLeft.skew(0.5,-0.5) +
          SwingLeft.scale(0.5,0.5) +
          EighthRight.changeBeats(2).skew(1.5,0.75),

          Forward +
          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5) +
          LeadRight.scale(0.5,1.5) +
          SwingLeft.scale(0.5,0.5) +
          EighthLeft.changeBeats(2).skew(1.5,0.25),

          Forward +
          PullLeft.scale(1.0,0.5) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.scale(0.5,1.5) +
          LeadLeft.skew(0.5,-0.5) +
          SwingLeft.scale(0.5,0.5) +
          ExtendLeft.changeBeats(2).scale(1.0,1.0)
      ]),

    AnimatedCall('Square Thru, on the Third Hand Touch 1/4',
      formation:Formations.FacingCouplesCompact,
      group:'   ',difficulty: 2,
      paths:[
          Forward.scale(0.5,1.0) +
          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5) +
          QuarterRight.changehands(2).skew(1.0,0.0),

          Forward.scale(0.5,1.0) +
          PullLeft.scale(1.0,0.5) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.scale(0.5,1.5) +
          HingeRight
      ]),

    AnimatedCall('Square Thru, on the Fourth Hand Left Touch 1/4',
      formation:Formations.FacingCouplesCompact,
      group:'   ',difficulty: 2,
      paths:[
          Forward.scale(0.5,1.0) +
          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5) +
          LeadRight.scale(0.5,1.5) +
          HingeLeft,

          Forward.scale(0.5,1.0) +
          PullLeft.scale(1.0,0.5) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.scale(0.5,1.5) +
          LeadLeft.skew(0.5,-0.5) +
          QuarterLeft.changehands(1).skew(1.0,0.0)
      ]),
  ];

