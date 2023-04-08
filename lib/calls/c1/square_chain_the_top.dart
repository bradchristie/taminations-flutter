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

  final List<AnimatedCall> SquareChainTheTop = [ 

    AnimatedCall('Square Chain the Top',
      formation:Formations.FacingCouplesCompact,
      from:'Facing Couples',parts:'5;7.5',
      paths:[
          ExtendLeft.changeBeats(2).scale(1.5,0.5) +
          LeadRight.changeBeats(3).scale(1.0,1.5) +
          SwingLeft +
          LeadLeft.changeBeats(4.5).scale(2.5,3.0) +
          SwingLeft.scale(0.75,0.75) +
          Forward_2.scale(0.75,1.0),

          ExtendLeft.changeBeats(2).scale(1.5,0.5) +
          LeadLeft.changeBeats(3).scale(3.0,0.5) +
          SwingLeft +
          SwingRight +
          HingeRight +
          SwingLeft.scale(0.75,0.75) +
          ExtendLeft.changeBeats(2).scale(1.5,1.5)
      ]),

    AnimatedCall('Square Chain the Top',
      formation:Formations.WaveRH,
      from:'Right-Hand Wave',parts:'3;7.5',
      paths:[
          LeadRight.changeBeats(3).scale(1.0,3.0) +
          SwingLeft +
          LeadLeft.changeBeats(4.5).scale(2.5,3.0) +
          SwingLeft.scale(0.75,0.75) +
          Forward_2,

          LeadLeft.changeBeats(3).scale(3.0,1.0) +
          SwingLeft +
          SwingRight +
          HingeRight +
          SwingLeft.scale(0.75,0.75) +
          ExtendLeft.changeBeats(2).scale(2.0,1.5)
      ]),

    AnimatedCall('Square Chain the Top',
      formation:Formations.NormalLines,
      from:'Normal Lines',parts:'5;7.5',
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          LeadRight.changeBeats(3).scale(1.0,1.5) +
          SwingLeft +
          LeadLeft.changeBeats(4.5).scale(1.5,3.0) +
          SwingLeft.scale(0.5,0.5) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          LeadLeft.changeBeats(3).scale(3.0,0.5) +
          SwingLeft +
          SwingRight +
          HingeRight.scale(0.5,1.0) +
          SwingLeft.scale(0.5,0.5) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          LeadRight.changeBeats(3).scale(1.0,1.5) +
          SwingLeft +
          LeadLeft.changeBeats(4.5).scale(1.5,3.0) +
          SwingLeft.scale(0.5,0.5) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          LeadLeft.changeBeats(3).scale(3.0,0.5) +
          SwingLeft +
          SwingRight +
          HingeRight.scale(0.5,1.0) +
          SwingLeft.scale(0.5,0.5) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Square Chain the Top',
      formation:Formations.EightChainThru,
      from:'Eight Chain Thru',parts:'3;7.5',
      paths:[
          ExtendLeft.scale(1.0,0.5) +
          LeadRight.changeBeats(2).scale(0.5,1.5) +
          SwingLeft.scale(0.5,0.5) +
          LeadLeft.changeBeats(4.5).scale(1.5,1.5) +
          SwingLeft.scale(0.5,0.5) +
          ExtendLeft.scale(1.0,0.5),

          ExtendLeft.scale(1.0,0.5) +
          LeadLeft.changeBeats(2).scale(1.5,0.5) +
          SwingLeft.scale(0.5,0.5) +
          SwingRight.scale(0.5,0.5) +
          HingeRight.scale(0.5,0.5) +
          SwingLeft.scale(0.5,0.5) +
          ExtendLeft.scale(1.0,0.5),

          ExtendLeft.scale(1.0,0.5) +
          LeadRight.changeBeats(2).scale(0.5,1.5) +
          SwingLeft.scale(0.5,0.5) +
          LeadLeft.changeBeats(4.5).scale(1.5,1.5) +
          SwingLeft.scale(0.5,0.5) +
          ExtendLeft.scale(1.0,0.5),

          ExtendLeft.scale(1.0,0.5) +
          LeadLeft.changeBeats(2).scale(1.5,0.5) +
          SwingLeft.scale(0.5,0.5) +
          SwingRight.scale(0.5,0.5) +
          HingeRight.scale(0.5,0.5) +
          SwingLeft.scale(0.5,0.5) +
          ExtendLeft.scale(1.0,0.5)
      ]),

    AnimatedCall('Square Chain the Top',
      formation:Formations.OceanWavesRHBGGB,
      from:'Right-Hand Waves',parts:'2;7.5',
      paths:[
          LeadRight.changeBeats(2).scale(0.5,3.0) +
          SwingLeft.scale(0.5,0.5) +
          LeadLeft.changeBeats(4.5).scale(1.5,1.5) +
          SwingLeft.scale(0.5,0.5) +
          ExtendLeft.scale(1.0,0.5),

          LeadLeft.changeBeats(2).scale(1.5,1.0) +
          SwingLeft.scale(0.5,0.5) +
          SwingRight.scale(0.5,0.5) +
          HingeRight.scale(0.5,0.5) +
          SwingLeft.scale(0.5,0.5) +
          ExtendLeft.scale(1.0,0.5),

          LeadLeft.changeBeats(2).scale(1.5,1.0) +
          SwingLeft.scale(0.5,0.5) +
          SwingRight.scale(0.5,0.5) +
          HingeRight.scale(0.5,0.5) +
          SwingLeft.scale(0.5,0.5) +
          ExtendLeft.scale(1.0,0.5),

          LeadRight.changeBeats(2).scale(0.5,3.0) +
          SwingLeft.scale(0.5,0.5) +
          LeadLeft.changeBeats(4.5).scale(1.5,1.5) +
          SwingLeft.scale(0.5,0.5) +
          ExtendLeft.scale(1.0,0.5)
      ]),

    AnimatedCall('Square Chain the Top',
      formation:Formations.TidalWaveRHBGGB,
      from:'Tidal Wave',parts:'3;7.5',
      paths:[
          LeadRight.changeBeats(3).scale(1.0,1.5) +
          SwingLeft +
          LeadLeft.changeBeats(4.5).scale(1.5,3.0) +
          SwingLeft.scale(0.5,0.5) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          LeadLeft.changeBeats(3).scale(3.0,0.5) +
          SwingLeft +
          SwingRight +
          HingeRight.scale(0.5,1.0) +
          SwingLeft.scale(0.5,0.5) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          LeadLeft.changeBeats(3).scale(3.0,0.5) +
          SwingLeft +
          SwingRight +
          HingeRight.scale(0.5,1.0) +
          SwingLeft.scale(0.5,0.5) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          LeadRight.changeBeats(3).scale(1.0,1.5) +
          SwingLeft +
          LeadLeft.changeBeats(4.5).scale(1.5,3.0) +
          SwingLeft.scale(0.5,0.5) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Left Square Chain the Top',
      formation:Formations.FacingCouplesCompact,
      from:'Facing Couples',parts:'5;7.5',
      paths:[
          ExtendRight.changeBeats(2).scale(1.5,0.5) +
          LeadRight.changeBeats(3).scale(3.0,0.5) +
          SwingRight +
          SwingLeft +
          HingeLeft +
          SwingRight.scale(0.75,0.75) +
          ExtendRight.changeBeats(2).scale(1.5,1.5),

          ExtendRight.changeBeats(2).scale(1.5,0.5) +
          LeadLeft.changeBeats(3).scale(1.0,1.5) +
          SwingRight +
          LeadRight.changeBeats(4.5).scale(2.5,3.0) +
          SwingRight.scale(0.75,0.75) +
          Forward_2.scale(0.75,1.0)
      ]),

    AnimatedCall('Left Square Chain the Top',
      formation:Formations.WaveLH,
      from:'Left-Hand Wave',parts:'3;7.5',
      paths:[
          LeadLeft.changeBeats(3).scale(1.0,3.0) +
          SwingRight +
          LeadRight.changeBeats(4.5).scale(2.5,3.0) +
          SwingRight.scale(0.75,0.75) +
          Forward_2,

          LeadRight.changeBeats(3).scale(3.0,1.0) +
          SwingRight +
          SwingLeft +
          HingeLeft +
          SwingRight.scale(0.75,0.75) +
          ExtendRight.changeBeats(2).scale(2.0,1.5)
      ]),

    AnimatedCall('Left Square Chain the Top',
      formation:Formations.NormalLines,
      from:'Normal Lines',parts:'5;7.5',
      paths:[
          ExtendRight.changeBeats(2).scale(2.0,0.5) +
          LeadRight.changeBeats(3).scale(3.0,0.5) +
          SwingRight +
          SwingLeft +
          HingeLeft.scale(0.5,1.0) +
          SwingRight.scale(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          ExtendRight.changeBeats(2).scale(2.0,0.5) +
          LeadLeft.changeBeats(3).scale(1.0,1.5) +
          SwingRight +
          LeadRight.changeBeats(4.5).scale(1.5,3.0) +
          SwingRight.scale(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          ExtendRight.changeBeats(2).scale(2.0,0.5) +
          LeadRight.changeBeats(3).scale(3.0,0.5) +
          SwingRight +
          SwingLeft +
          HingeLeft.scale(0.5,1.0) +
          SwingRight.scale(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          ExtendRight.changeBeats(2).scale(2.0,0.5) +
          LeadLeft.changeBeats(3).scale(1.0,1.5) +
          SwingRight +
          LeadRight.changeBeats(4.5).scale(1.5,3.0) +
          SwingRight.scale(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Left Square Chain the Top',
      formation:Formations.EightChainThru,
      from:'Eight Chain Thru',parts:'3;7.5',
      paths:[
          ExtendRight.scale(1.0,0.5) +
          LeadRight.changeBeats(2).scale(1.5,0.5) +
          SwingRight.scale(0.5,0.5) +
          SwingLeft.scale(0.5,0.5) +
          HingeLeft.scale(0.5,0.5) +
          SwingRight.scale(0.5,0.5) +
          ExtendRight.scale(1.0,0.5),

          ExtendRight.scale(1.0,0.5) +
          LeadLeft.changeBeats(2).scale(0.5,1.5) +
          SwingRight.scale(0.5,0.5) +
          LeadRight.changeBeats(4.5).scale(1.5,1.5) +
          SwingRight.scale(0.5,0.5) +
          ExtendRight.scale(1.0,0.5),

          ExtendRight.scale(1.0,0.5) +
          LeadRight.changeBeats(2).scale(1.5,0.5) +
          SwingRight.scale(0.5,0.5) +
          SwingLeft.scale(0.5,0.5) +
          HingeLeft.scale(0.5,0.5) +
          SwingRight.scale(0.5,0.5) +
          ExtendRight.scale(1.0,0.5),

          ExtendRight.scale(1.0,0.5) +
          LeadLeft.changeBeats(2).scale(0.5,1.5) +
          SwingRight.scale(0.5,0.5) +
          LeadRight.changeBeats(4.5).scale(1.5,1.5) +
          SwingRight.scale(0.5,0.5) +
          ExtendRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Left Square Chain the Top',
      formation:Formations.OceanWavesLHBGGB,
      from:'Left-Hand Waves',parts:'2;7.5',
      paths:[
          LeadLeft.changeBeats(2).scale(0.5,3.0) +
          SwingRight.scale(0.5,0.5) +
          LeadRight.changeBeats(4.5).scale(1.5,1.5) +
          SwingRight.scale(0.5,0.5) +
          ExtendRight.scale(1.0,0.5),

          LeadRight.changeBeats(2).scale(1.5,1.0) +
          SwingRight.scale(0.5,0.5) +
          SwingLeft.scale(0.5,0.5) +
          HingeLeft.scale(0.5,0.5) +
          SwingRight.scale(0.5,0.5) +
          ExtendRight.scale(1.0,0.5),

          LeadRight.changeBeats(2).scale(1.5,1.0) +
          SwingRight.scale(0.5,0.5) +
          SwingLeft.scale(0.5,0.5) +
          HingeLeft.scale(0.5,0.5) +
          SwingRight.scale(0.5,0.5) +
          ExtendRight.scale(1.0,0.5),

          LeadLeft.changeBeats(2).scale(0.5,3.0) +
          SwingRight.scale(0.5,0.5) +
          LeadRight.changeBeats(4.5).scale(1.5,1.5) +
          SwingRight.scale(0.5,0.5) +
          ExtendRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Left Square Chain the Top',
      formation:Formations.TidalWaveLHBGGB,
      from:'Left-Hand Tidal Wave',parts:'3;7.5',
      paths:[
          LeadLeft.changeBeats(3).scale(1.0,1.5) +
          SwingRight +
          LeadRight.changeBeats(4.5).scale(1.5,3.0) +
          SwingRight.scale(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          LeadRight.changeBeats(3).scale(3.0,0.5) +
          SwingRight +
          SwingLeft +
          HingeLeft.scale(0.5,1.0) +
          SwingRight.scale(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          LeadRight.changeBeats(3).scale(3.0,0.5) +
          SwingRight +
          SwingLeft +
          HingeLeft.scale(0.5,1.0) +
          SwingRight.scale(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          LeadLeft.changeBeats(3).scale(1.0,1.5) +
          SwingRight +
          LeadRight.changeBeats(4.5).scale(1.5,3.0) +
          SwingRight.scale(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('All 4 Couples Square Chain the Top',
      formation:Formations.StaticSquare,
      from:'Static Square',group:' ',parts:'6.5;7.5',
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,2.0) +
          Forward +
          LeadRight.changeBeats(3.5).scale(1.0,3.0) +
          SwingLeft +
          LeadLeft.changeBeats(4.5).scale(3.0,3.0) +
          SwingLeft +
          Forward_3,

          ExtendRight.changeBeats(3).scale(3.0,1.0) +
          Forward_2 +
          LeadLeft.scale(1.0,2.0) +
          SwingLeft +
          SwingRight +
          HingeRight +
          SwingLeft +
          ExtendLeft.changeBeats(3).scale(3.0,2.0),

          ExtendLeft.changeBeats(2).scale(2.0,2.0) +
          Forward +
          LeadRight.changeBeats(3.5).scale(1.0,3.0) +
          SwingLeft +
          LeadLeft.changeBeats(4.5).scale(3.0,3.0) +
          SwingLeft +
          Forward_3,

          ExtendRight.changeBeats(3).scale(3.0,1.0) +
          Forward_2 +
          LeadLeft.scale(1.0,2.0) +
          SwingLeft +
          SwingRight +
          HingeRight +
          SwingLeft +
          ExtendLeft.changeBeats(3).scale(3.0,2.0)
      ]),

    AnimatedCall('As Couples Square Chain the Top',
      formation:Formations.NormalLines,
      group:' ',parts:'6;10',
      paths:[
          ExtendLeft.changeBeats(2).changehands(2).scale(2.0,0.5) +
          LeadRight.changeBeats(4).scale(1.5,3.5) +
          SwingLeft.changeBeats(4).scale(0.5,0.5) +
          LeadLeft.changeBeats(6).changehands(2).scale(2.5,2.5) +
          SwingLeft.changeBeats(4).scale(0.5,0.5) +
          ExtendLeft.changeBeats(2).changehands(2).scale(2.0,1.5),

          ExtendLeft.changeBeats(2).changehands(1).scale(2.0,1.5) +
          LeadRight.changeBeats(4).scale(0.5,2.5) +
          SwingLeft.changeBeats(4).scale(1.5,1.5) +
          LeadLeft.changeBeats(6).changehands(1).scale(3.5,3.5) +
          SwingLeft.changeBeats(4).scale(1.5,1.5) +
          ExtendLeft.changeBeats(2).changehands(1).scale(2.0,0.5),

          ExtendLeft.changeBeats(2).changehands(2).scale(2.0,0.5) +
          LeadLeft.changeBeats(4).scale(2.5,0.5) +
          SwingLeft.changeBeats(4).scale(0.5,0.5) +
          SwingRight.changeBeats(4).scale(1.5,1.5) +
          HingeRight.changeBeats(2).scale(1.5,1.5) +
          SwingLeft.changeBeats(4).scale(0.5,0.5) +
          ExtendLeft.changeBeats(2).changehands(2).scale(2.0,1.5),

          ExtendLeft.changeBeats(2).changehands(1).scale(2.0,1.5) +
          LeadLeft.changeBeats(4).scale(3.5,1.5) +
          SwingLeft.changeBeats(4).scale(1.5,1.5) +
          SwingRight.changeBeats(4).scale(0.5,0.5) +
          HingeRight.changeBeats(2).scale(0.5,0.5) +
          SwingLeft.changeBeats(4).scale(1.5,1.5) +
          ExtendLeft.changeBeats(2).changehands(1).scale(2.0,0.5)
      ]),

    AnimatedCall('Tandem Square Chain the Top',
      formation:Formations.DoublePassThru,
      group:' ',parts:'5;11',
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,1.5) +
          CounterRotateRight_2_0.changeBeats(3).skew(0.0,-1.5) +
          CounterRotateLeft_2_0.changehands(1) +
          CounterRotateLeft_2_0.changehands(1) +
          Forward_2 +
          LeadLeft.changeBeats(4).scale(2.0,2.0) +
          CounterRotateLeft_2_0.changehands(1) +
          CounterRotateLeft_2_0.changehands(1) +
          Forward_2.changeBeats(3),

          Forward_2 +
          CounterRotateLeft_2_0.changeBeats(3).skew(2.0,0.0) +
          CounterRotateLeft_2_0.changehands(1) +
          CounterRotateLeft_2_0.changehands(1) +
          CounterRotateRight_2_0.changehands(2) +
          CounterRotateRight_2_0.changehands(2) +
          CounterRotateRight_2_0.changehands(2) +
          CounterRotateLeft_2_0.changehands(1) +
          CounterRotateLeft_2_0.changehands(1) +
          ExtendLeft.changeBeats(3).scale(2.0,2.0),

          ExtendLeft.changeBeats(2).scale(2.0,1.5) +
          CounterRotateRight_0_m2.changeBeats(3).skew(0.0,-1.5) +
          CounterRotateLeft_0_2.changehands(1) +
          CounterRotateLeft_0_2.changehands(1) +
          LeadLeft.changeBeats(4).scale(2.0,2.0) +
          Forward_2 +
          CounterRotateLeft_0_2.changehands(1) +
          CounterRotateLeft_0_2.changehands(1) +
          Forward_2.changeBeats(3),

          Forward_2 +
          CounterRotateLeft_0_2.changeBeats(3).skew(2.0,0.0) +
          CounterRotateLeft_0_2.changehands(1) +
          CounterRotateLeft_0_2.changehands(1) +
          CounterRotateRight_0_m2.changehands(2) +
          CounterRotateRight_0_m2.changehands(2) +
          CounterRotateRight_0_m2.changehands(2) +
          CounterRotateLeft_0_2.changehands(1) +
          CounterRotateLeft_0_2.changehands(1) +
          ExtendLeft.changeBeats(3).scale(2.0,2.0)
      ]),
  ];

