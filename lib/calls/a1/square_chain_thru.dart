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
import '../a2/all_4_all_8.dart' as a2;

  final List<AnimatedCall> SquareChainThru = [

    AnimatedCall('Square Chain Thru',
      formation:Formations.FacingCouplesCompact,
      from:'Facing Couples',parts:'3;6',
      paths:[
          PullLeft.scale(1.0,0.5) +
          LeadRight.changeBeats(2).scale(1.0,1.5) +
          SwingLeft +
          Stand.changeBeats(3) +
          SwingLeft.scale(0.75,0.75) +
          Forward.changeBeats(2).scale(1.5,1.0),

          PullLeft.scale(1.0,0.5) +
          LeadLeft.changeBeats(2).scale(3.0,0.5) +
          SwingLeft +
          SwingRight.scale(0.75,0.75) +
          SwingLeft.scale(0.75,0.75) +
          ExtendLeft.changeBeats(2).scale(1.5,1.5)
      ]),

    AnimatedCall('Square Chain Thru',
      formation:Formations.WaveRH,
      from:'Right-Hand Wave',
      paths:[
          LeadRight.changeBeats(3).scale(0.5,3.0) +
          SwingLeft +
          Stand.changeBeats(3) +
          SwingLeft.scale(0.75,0.75) +
          Forward.changeBeats(2).scale(2.0,1.0),

          LeadLeft.changeBeats(3).scale(2.5,1.0) +
          SwingLeft +
          SwingRight.scale(0.75,0.75) +
          SwingLeft.scale(0.75,0.75) +
          ExtendLeft.changeBeats(2).scale(2.0,1.5)
      ]),

    AnimatedCall('Square Chain Thru',
      formation:Formations.NormalLines,
      from:'Lines',parts:'3;6',
      paths:[
          PullLeft.scale(2.0,0.5) +
          LeadRight.changeBeats(2).scale(1.0,1.5) +
          SwingLeft +
          Stand.changeBeats(3) +
          SwingLeft +
          Forward.changeBeats(2),

          PullLeft.scale(2.0,0.5) +
          LeadLeft.changeBeats(2).scale(3.0,0.5) +
          SwingLeft +
          SwingRight +
          SwingLeft +
          ExtendLeft.changeBeats(2).scale(1.0,2.0),

          PullLeft.scale(2.0,0.5) +
          LeadRight.changeBeats(2).scale(1.0,1.5) +
          SwingLeft +
          Stand.changeBeats(3) +
          SwingLeft +
          Forward.changeBeats(2),

          PullLeft.scale(2.0,0.5) +
          LeadLeft.changeBeats(2).scale(3.0,0.5) +
          SwingLeft +
          SwingRight +
          SwingLeft +
          ExtendLeft.changeBeats(2).scale(1.0,2.0)
      ]),

    AnimatedCall('Square Chain Thru',
      formation:Formations.OceanWavesRHBGGB,
      from:'Right-Hand Waves',parts:'3;6',
      paths:[
          LeadRight.changeBeats(3).scale(0.5,3.0) +
          SwingLeft.changehands(5).scale(0.5,0.5) +
          Stand.changeBeats(3) +
          SwingLeft.changehands(5).scale(0.5,0.5) +
          ExtendLeft.changeBeats(3).scale(2.0,0.5),

          LeadLeft.changeBeats(3).scale(1.5,1.0) +
          SwingLeft.changehands(5).scale(0.5,0.5) +
          SwingRight.changehands(6).scale(0.5,0.5) +
          SwingLeft.changehands(5).scale(0.5,0.5) +
          ExtendLeft.changeBeats(3).scale(2.0,0.5),

          LeadLeft.changeBeats(3).scale(1.5,1.0) +
          SwingLeft.changehands(5).scale(0.5,0.5) +
          SwingRight.changehands(6).scale(0.5,0.5) +
          SwingLeft.changehands(5).scale(0.5,0.5) +
          ExtendLeft.changeBeats(3).scale(2.0,0.5),

          LeadRight.changeBeats(3).scale(0.5,3.0) +
          SwingLeft.changehands(5).scale(0.5,0.5) +
          Stand.changeBeats(3) +
          SwingLeft.changehands(5).scale(0.5,0.5) +
          ExtendLeft.changeBeats(3).scale(2.0,0.5)
      ]),

    AnimatedCall('Square Chain Thru',
      formation:Formations.EightChainThru,
      from:'Eight Chain Thru',parts:'3;6',
      paths:[
          PullLeft.scale(1.0,0.5) +
          LeadRight.changeBeats(2).scale(0.5,1.5) +
          SwingLeft.changehands(5).scale(0.5,0.5) +
          Stand.changeBeats(3) +
          SwingLeft.changehands(5).scale(0.5,0.5) +
          ExtendLeft.changeBeats(3).scale(2.0,0.5),

          PullLeft.scale(1.0,0.5) +
          LeadLeft.changeBeats(2).scale(1.5,0.5) +
          SwingLeft.changehands(5).scale(0.5,0.5) +
          SwingRight.changehands(6).scale(0.5,0.5) +
          SwingLeft.changehands(5).scale(0.5,0.5) +
          ExtendLeft.changeBeats(3).scale(2.0,0.5),

          PullLeft.scale(1.0,0.5) +
          LeadRight.changeBeats(2).scale(0.5,1.5) +
          SwingLeft.changehands(5).scale(0.5,0.5) +
          Stand.changeBeats(3) +
          SwingLeft.changehands(5).scale(0.5,0.5) +
          ExtendLeft.changeBeats(3).scale(2.0,0.5),

          PullLeft.scale(1.0,0.5) +
          LeadLeft.changeBeats(2).scale(1.5,0.5) +
          SwingLeft.changehands(5).scale(0.5,0.5) +
          SwingRight.changehands(6).scale(0.5,0.5) +
          SwingLeft.changehands(5).scale(0.5,0.5) +
          ExtendLeft.changeBeats(3).scale(2.0,0.5)
      ]),

    AnimatedCall('Square Chain Thru',
      formation:Formations.TidalWaveRHBGGB,
      from:'Tidal Wave',parts:'2;6',
      paths:[
          LeadRight.changeBeats(2).scale(1.0,1.5) +
          SwingLeft +
          Stand.changeBeats(3) +
          SwingLeft +
          Forward.changeBeats(2),

          LeadLeft.changeBeats(2).scale(3.0,0.5) +
          SwingLeft +
          SwingRight +
          SwingLeft +
          ExtendLeft.changeBeats(2).scale(1.0,2.0),

          LeadLeft.changeBeats(2).scale(3.0,0.5) +
          SwingLeft +
          SwingRight +
          SwingLeft +
          ExtendLeft.changeBeats(2).scale(1.0,2.0),

          LeadRight.changeBeats(2).scale(1.0,1.5) +
          SwingLeft +
          Stand.changeBeats(3) +
          SwingLeft +
          Forward.changeBeats(2)
      ]),

    AnimatedCall('As Couples Square Chain Thru',
      formation:Formations.NormalLines,
      from:'Lines',group:' ',parts:'6;8',
      paths:[
          ExtendLeft.changeBeats(2).changehands(2).scale(2.0,0.5) +
          LeadRight.changeBeats(4).scale(1.5,3.5) +
          SwingLeft.changeBeats(4).scale(0.5,0.5) +
          Stand.changeBeats(4) +
          SwingLeft.changeBeats(4).scale(0.5,0.5) +
          ExtendLeft.changeBeats(2).changehands(2).scale(2.0,1.5),

          ExtendLeft.changeBeats(2).changehands(1).scale(2.0,1.5) +
          LeadRight.changeBeats(4).scale(0.5,2.5) +
          SwingLeft.changeBeats(4).scale(1.5,1.5) +
          Stand.changeBeats(4) +
          SwingLeft.changeBeats(4).scale(1.5,1.5) +
          ExtendLeft.changeBeats(2).changehands(1).scale(2.0,0.5),

          ExtendLeft.changeBeats(2).changehands(2).scale(2.0,0.5) +
          LeadLeft.changeBeats(4).scale(2.5,0.5) +
          SwingLeft.changeBeats(4).scale(0.5,0.5) +
          SwingRight.changeBeats(4).scale(1.5,1.5) +
          SwingLeft.changeBeats(4).scale(0.5,0.5) +
          ExtendLeft.changeBeats(2).changehands(2).scale(2.0,1.5),

          ExtendLeft.changeBeats(2).changehands(1).scale(2.0,1.5) +
          LeadLeft.changeBeats(4).scale(3.5,1.5) +
          SwingLeft.changeBeats(4).scale(1.5,1.5) +
          SwingRight.changeBeats(4).scale(0.5,0.5) +
          SwingLeft.changeBeats(4).scale(1.5,1.5) +
          ExtendLeft.changeBeats(2).changehands(1).scale(2.0,0.5)
      ]),
    a2.All4All8.where((tam) =>
      tam.title == 'All 4 Couples Square Chain Thru').first.xref(title: 'All 4 Couples Square Chain Thru').xref(group: ' '),

    AnimatedCall('Left Square Chain Thru',
      formation:Formations.FacingCouplesCompact,
      from:'Facing Couples',parts:'3;6',
      paths:[
          PullRight.scale(1.5,0.5) +
          LeadRight.changeBeats(2).scale(3.0,0.5) +
          SwingRight +
          SwingLeft +
          SwingRight +
          ExtendRight.changeBeats(2).scale(1.5,2.0),

          PullRight.scale(1.5,0.5) +
          LeadLeft.changeBeats(2).scale(1.0,1.5) +
          SwingRight +
          Stand.changeBeats(3) +
          SwingRight +
          Forward.changeBeats(2).scale(1.5,1.0)
      ]),

    AnimatedCall('Left Square Chain Thru',
      formation:Formations.WaveLH,
      from:'Left-Hand Wave',
      paths:[
          LeadLeft.changeBeats(3).scale(0.5,3.0) +
          SwingRight +
          Stand.changeBeats(3) +
          SwingRight.scale(0.75,0.75) +
          Forward.changeBeats(2).scale(2.0,1.0),

          LeadRight.changeBeats(3).scale(2.5,1.0) +
          SwingRight +
          SwingLeft.scale(0.75,0.75) +
          SwingRight.scale(0.75,0.75) +
          ExtendRight.changeBeats(2).scale(2.0,1.5)
      ]),

    AnimatedCall('Left Square Chain Thru',
      formation:Formations.NormalLines,
      from:'Lines',
      paths:[
          PullRight.scale(2.0,0.5) +
          LeadRight.changeBeats(2).scale(3.0,0.5) +
          SwingRight +
          SwingLeft +
          SwingRight +
          ExtendRight.changeBeats(2).scale(1.0,2.0),

          PullRight.scale(2.0,0.5) +
          LeadLeft.changeBeats(2).scale(1.0,1.5) +
          SwingRight +
          Stand.changeBeats(3) +
          SwingRight +
          Forward.changeBeats(2),

          PullRight.scale(2.0,0.5) +
          LeadRight.changeBeats(2).scale(3.0,0.5) +
          SwingRight +
          SwingLeft +
          SwingRight +
          ExtendRight.changeBeats(2).scale(1.0,2.0),

          PullRight.scale(2.0,0.5) +
          LeadLeft.changeBeats(2).scale(1.0,1.5) +
          SwingRight +
          Stand.changeBeats(3) +
          SwingRight +
          Forward.changeBeats(2)
      ]),

    AnimatedCall('Left Square Chain Thru',
      formation:Formations.OceanWavesLHBGGB,
      from:'Left-Hand Waves',parts:'3;6',
      paths:[
          LeadLeft.changeBeats(3).scale(0.5,3.0) +
          SwingRight.changehands(6).scale(0.5,0.5) +
          Stand.changeBeats(3) +
          SwingRight.changehands(6).scale(0.5,0.5) +
          ExtendRight.changeBeats(3).scale(2.0,0.5),

          LeadRight.changeBeats(3).scale(1.5,1.0) +
          SwingRight.changehands(6).scale(0.5,0.5) +
          SwingLeft.changehands(5).scale(0.5,0.5) +
          SwingRight.changehands(6).scale(0.5,0.5) +
          ExtendRight.changeBeats(3).scale(2.0,0.5),

          LeadRight.changeBeats(3).scale(1.5,1.0) +
          SwingRight.changehands(6).scale(0.5,0.5) +
          SwingLeft.changehands(5).scale(0.5,0.5) +
          SwingRight.changehands(6).scale(0.5,0.5) +
          ExtendRight.changeBeats(3).scale(2.0,0.5),

          LeadLeft.changeBeats(3).scale(0.5,3.0) +
          SwingRight.changehands(6).scale(0.5,0.5) +
          Stand.changeBeats(3) +
          SwingRight.changehands(6).scale(0.5,0.5) +
          ExtendRight.changeBeats(3).scale(2.0,0.5)
      ]),

    AnimatedCall('Left Square Chain Thru',
      formation:Formations.EightChainThru,
      from:'Eight Chain Thru',
      paths:[
          PullRight.scale(1.0,0.5) +
          LeadRight.changeBeats(2).scale(1.5,0.5) +
          SwingRight.scale(0.5,0.5) +
          SwingLeft.scale(0.5,0.5) +
          SwingRight.scale(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          PullRight.scale(1.0,0.5) +
          LeadLeft.changeBeats(2).scale(0.5,1.5) +
          SwingRight.scale(0.5,0.5) +
          Stand.changeBeats(3) +
          SwingRight.scale(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          PullRight.scale(1.0,0.5) +
          LeadRight.changeBeats(2).scale(1.5,0.5) +
          SwingRight.scale(0.5,0.5) +
          SwingLeft.scale(0.5,0.5) +
          SwingRight.scale(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          PullRight.scale(1.0,0.5) +
          LeadLeft.changeBeats(2).scale(0.5,1.5) +
          SwingRight.scale(0.5,0.5) +
          Stand.changeBeats(3) +
          SwingRight.scale(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Left Square Chain Thru',
      formation:Formations.TidalWaveLHBGGB,
      from:'Left-Hand Tidal Wave',parts:'2;6',
      paths:[
          LeadLeft.changeBeats(2).scale(1.0,1.5) +
          SwingRight +
          Stand.changeBeats(3) +
          SwingRight +
          Forward.changeBeats(2),

          LeadRight.changeBeats(2).scale(3.0,0.5) +
          SwingRight +
          SwingLeft +
          SwingRight +
          ExtendRight.changeBeats(2).scale(1.0,2.0),

          LeadRight.changeBeats(2).scale(3.0,0.5) +
          SwingRight +
          SwingLeft +
          SwingRight +
          ExtendRight.changeBeats(2).scale(1.0,2.0),

          LeadLeft.changeBeats(2).scale(1.0,1.5) +
          SwingRight +
          Stand.changeBeats(3) +
          SwingRight +
          Forward.changeBeats(2)
      ]),

    AnimatedCall('As Couples Left Square Chain Thru',
      formation:Formations.NormalLines,
      from:'Lines',group:' ',
      paths:[
          ExtendRight.changeBeats(2).changehands(2).scale(2.0,1.5) +
          LeadRight.changeBeats(4).scale(3.5,1.5) +
          SwingRight.changeBeats(4).scale(1.5,1.5) +
          SwingLeft.changeBeats(4).scale(0.5,0.5) +
          SwingRight.changeBeats(4).scale(1.5,1.5) +
          ExtendRight.changeBeats(2).changehands(2).scale(2.0,0.5),

          ExtendRight.changeBeats(2).changehands(1).scale(2.0,0.5) +
          LeadRight.changeBeats(4).scale(2.5,0.5) +
          SwingRight.changeBeats(4).scale(0.5,0.5) +
          SwingLeft.changeBeats(4).scale(1.5,1.5) +
          SwingRight.changeBeats(4).scale(0.5,0.5) +
          ExtendRight.changeBeats(2).changehands(1).scale(2.0,1.5),

          ExtendRight.changeBeats(2).changehands(2).scale(2.0,1.5) +
          LeadLeft.changeBeats(4).scale(0.5,2.5) +
          SwingRight.changeBeats(4).scale(1.5,1.5) +
          Stand.changeBeats(4) +
          SwingRight.changeBeats(4).scale(1.5,1.5) +
          ExtendRight.changeBeats(2).changehands(2).scale(2.0,0.5),

          ExtendRight.changeBeats(2).changehands(1).scale(2.0,0.5) +
          LeadLeft.changeBeats(4).scale(1.5,3.5) +
          SwingRight.changeBeats(4).scale(0.5,0.5) +
          Stand.changeBeats(4) +
          SwingRight.changeBeats(4).scale(0.5,0.5) +
          ExtendRight.changeBeats(2).changehands(1).scale(2.0,1.5)
      ]),
  ];

