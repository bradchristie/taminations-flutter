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

  final List<AnimatedCall> FanTheTop = [ 

    AnimatedCall('Fan the Top',
      formation:Formations.WaveRH,
      from:'Right-Hand Wave',difficulty: 1,
      paths:[
          LeadRight.changeBeats(4).scale(3.0,3.0),

          SwingLeft.changeBeats(2.67) +
          HingeLeft.changeBeats(1.33)
      ]),

    AnimatedCall('Fan the Top',
      formation:Formations.WaveLH,
      from:'Left-Hand Wave',difficulty: 2,
      paths:[
          LeadLeft.changeBeats(4).scale(3.0,3.0),

          SwingRight.changeBeats(2.67) +
          HingeRight.changeBeats(1.33)
      ]),

    AnimatedCall('Fan the Top',
      formation:Formations.DiamondRH,
      from:'Right-Hand Diamond',difficulty: 3,
      paths:[
          LeadRight.changeBeats(4).scale(3.0,3.0),

          CastRight.changeBeats(4)
      ]),

    AnimatedCall('Fan the Top',
      formation:Formations.DiamondLH,
      from:'Left-Hand Diamond',difficulty: 3,
      paths:[
          LeadLeft.changeBeats(4).scale(3.0,3.0),

          CastLeft.changeBeats(4)
      ]),

    AnimatedCall('Fan the Top',
      formation:Formations.DiamondFacingRH,
      from:'Facing Diamond',difficulty: 3,noDisplay: true,
      paths:[
          LeadLeft.changeBeats(4).scale(3.0,3.0),

          CastRight.changeBeats(4)
      ]),

    AnimatedCall('Fan the Top',
      formation:Formations.DiamondFacing,
      from:'Left-Hand Facing Diamond',difficulty: 3,noDisplay: true,
      paths:[
          LeadRight.changeBeats(4).scale(3.0,3.0),

          CastLeft.changeBeats(4)
      ]),

    AnimatedCall('Fan the Top',
      formation:Formations.TwomFacedLineRH,
      from:'Right-Hand Two-Faced Line',difficulty: 2,
      paths:[
          LeadRight.changeBeats(4).scale(3.0,3.0),

          SwingRight.changeBeats(2.67) +
          HingeRight.changeBeats(1.33)
      ]),

    AnimatedCall('Fan the Top',
      formation:Formations.TwomFacedLineLH,
      from:'Left-Hand Two-Faced Line',difficulty: 2,
      paths:[
          SwingLeft.changeBeats(2.67) +
          HingeLeft.changeBeats(1.33),

          LeadLeft.changeBeats(4).scale(3.0,3.0)
      ]),

    AnimatedCall('Fan the Top',
      formation:Formations.FacingCouples,
      from:'Facing Couples',difficulty: 2,
      paths:[
          ExtendLeft.changeBeats(3).scale(2.0,2.0) +
          LeadRight.changeBeats(4.5).scale(3.0,3.0),

          Forward_2.changeBeats(3) +
          SwingLeft +
          HingeLeft
      ]),

    AnimatedCall('Fan the Top',
      formation:Formations.FacingCouplesClose,
      from:'Close Couples',parts:'4',difficulty: 2,noDisplay: true,
      paths:[
          ExtendLeft.scale(1.0,0.5) +
          LeadRight.changeBeats(4.5).scale(1.5,1.5),

          ExtendLeft.scale(1.0,0.5) +
          CastLeft.scale(0.5,0.5)
      ]),

    AnimatedCall('Fan the Top',
      formation:Formations.OceanWavesRHBGGB,
      from:'Right-Hand Waves',difficulty: 1,
      paths:[
          LeadRight.changeBeats(4).scale(1.5,3.0),

          HingeLeft.changeBeats(1.33) +
          HingeLeft.changeBeats(1.33) +
          HingeLeft.changeBeats(1.33).scale(0.5,1.0),

          HingeLeft.changeBeats(1.33) +
          HingeLeft.changeBeats(1.33) +
          HingeLeft.changeBeats(1.33).scale(0.5,1.0),

          LeadRight.changeBeats(4).scale(1.5,3.0)
      ]),

    AnimatedCall('Fan the Top',
      formation:Formations.OceanWavesLHBGGB,
      from:'Left-Hand Waves',difficulty: 2,
      paths:[
          LeadLeft.changeBeats(4).scale(1.5,3.0),

          HingeRight.changeBeats(1.33) +
          HingeRight.changeBeats(1.33) +
          HingeRight.changeBeats(1.33).scale(0.5,1.0),

          HingeRight.changeBeats(1.33) +
          HingeRight.changeBeats(1.33) +
          HingeRight.changeBeats(1.33).scale(0.5,1.0),

          LeadLeft.changeBeats(4).scale(1.5,3.0)
      ]),

    AnimatedCall('Fan the Top',
      formation:Formations.TwomFacedLinesRH,
      from:'Right-Hand Two-Faced Lines',difficulty: 2,
      paths:[
          LeadRight.changeBeats(4).scale(1.5,3.0),

          HingeRight.changeBeats(1.33) +
          HingeRight.changeBeats(1.33) +
          HingeRight.changeBeats(1.33).scale(0.5,1.0),

          HingeRight.changeBeats(1.33) +
          HingeRight.changeBeats(1.33) +
          HingeRight.changeBeats(1.33).scale(0.5,1.0),

          LeadRight.changeBeats(4).scale(1.5,3.0)
      ]),

    AnimatedCall('Fan the Top',
      formation:Formations.TwomFacedLinesLH,
      from:'Left-Hand Two-Faced Lines',difficulty: 2,
      paths:[
          LeadLeft.changeBeats(4).scale(1.5,3.0),

          HingeLeft.changeBeats(1.33) +
          HingeLeft.changeBeats(1.33) +
          HingeLeft.changeBeats(1.33).scale(0.5,1.0),

          HingeLeft.changeBeats(1.33) +
          HingeLeft.changeBeats(1.33) +
          HingeLeft.changeBeats(1.33).scale(0.5,1.0),

          LeadLeft.changeBeats(4).scale(1.5,3.0)
      ]),

    AnimatedCall('Fan the Top',
      formation:Formations.TidalWaveRHBGGB,
      from:'Right-Hand Tidal Wave',difficulty: 1,
      paths:[
          LeadRight.changeBeats(4).scale(3.0,1.5),

          SwingLeft.changeBeats(2.5).scale(0.5,0.5) +
          HingeLeft.scale(1.0,0.5),

          SwingLeft.changeBeats(2.5).scale(0.5,0.5) +
          HingeLeft.scale(1.0,0.5),

          LeadRight.changeBeats(4).scale(3.0,1.5)
      ]),

    AnimatedCall('Fan the Top',
      formation:Formations.TidalWaveLHBGGB,
      from:'Left-Hand Tidal Wave',difficulty: 2,
      paths:[
          LeadLeft.changeBeats(4).scale(3.0,1.5),

          SwingRight.changeBeats(2.5).scale(0.5,0.5) +
          HingeRight.scale(1.0,0.5),

          SwingRight.changeBeats(2.5).scale(0.5,0.5) +
          HingeRight.scale(1.0,0.5),

          LeadLeft.changeBeats(4).scale(3.0,1.5)
      ]),

    AnimatedCall('Fan the Top',
      formation:Formations.TwomFacedTidalLineRH,
      from:'Right-Hand Tidal Two-Face Line',difficulty: 2,
      paths:[
          LeadRight.changeBeats(4).scale(3.0,1.5),

          SwingRight.changeBeats(2.5).scale(0.5,0.5) +
          HingeRight.scale(1.0,0.5),

          SwingRight.changeBeats(2.5).scale(0.5,0.5) +
          HingeRight.scale(1.0,0.5),

          LeadRight.changeBeats(4).scale(3.0,1.5)
      ]),

    AnimatedCall('Fan the Top',
      formation:Formations.TwomFacedTidalLineLH,
      from:'Left-Hand Tidal Two-Face Line',difficulty: 2,
      paths:[
          LeadLeft.changeBeats(4).scale(3.0,1.5),

          SwingLeft.changeBeats(2.5).scale(0.5,0.5) +
          HingeLeft.scale(1.0,0.5),

          SwingLeft.changeBeats(2.5).scale(0.5,0.5) +
          HingeLeft.scale(1.0,0.5),

          LeadLeft.changeBeats(4).scale(3.0,1.5)
      ]),

    AnimatedCall('Fan the Top',
      formation:Formations.EightChainThru,
      from:'Eight Chain Thru',difficulty: 2,
      paths:[
          ExtendLeft +
          LeadRight.changeBeats(4).scale(1.5,2.0),

          Forward +
          SwingLeft.changeBeats(2.5) +
          HingeLeft.scale(0.5,1.0),

          ExtendLeft +
          LeadRight.changeBeats(4).scale(1.5,2.0),

          Forward +
          SwingLeft.changeBeats(2.5) +
          HingeLeft.scale(0.5,1.0)
      ]),

    AnimatedCall('Fan the Top',
      formation:Formations.NormalLines,
      from:'Facing Lines',difficulty: 2,
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,1.0) +
          LeadRight.changeBeats(4).scale(3.0,2.0),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          HingeLeft.scale(1.0,0.5) +
          SwingLeft,

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          LeadRight.changeBeats(4).scale(3.0,1.5),

          Forward_2 +
          HingeLeft +
          SwingLeft
      ]),

    AnimatedCall('Fan the Top',
      formation:Formations.DiamondsRHGirlPoints,
      from:'Diamonds',difficulty: 3,
      paths:[
          HingeRight.skew(0.0,0.33) +
          HingeRight.skew(-0.33,0.0) +
          HingeRight.skew(0.0,-0.33),

          LeadRight.changeBeats(4).scale(1.0,3.0),

          HingeRight.skew(0.0,-0.33) +
          HingeRight.skew(0.33,0.0) +
          HingeRight.skew(0.0,0.33),

          LeadRight.changeBeats(4).scale(3.0,3.0)
      ]),

    AnimatedCall('Fan the Top',
      formation:Formations.DiamondsLHGirlPoints,
      from:'Left-Hand Diamonds',difficulty: 3,noDisplay: true,
      paths:[
          HingeLeft.skew(0.0,-0.33) +
          HingeLeft.skew(-0.33,0.0) +
          HingeLeft.skew(0.0,0.33),

          LeadLeft.changeBeats(4).scale(3.0,3.0),

          HingeLeft.skew(0.0,0.33) +
          HingeLeft.skew(0.33,0.0) +
          HingeLeft.skew(0.0,-0.33),

          LeadLeft.changeBeats(4).scale(1.0,3.0)
      ]),

    AnimatedCall('Fan the Top',
      formation:Formations.DiamondsFacingGirlPoints,
      from:'Facing Diamonds',difficulty: 3,
      paths:[
          HingeRight.skew(0.0,0.33) +
          HingeRight.skew(-0.33,0.0) +
          HingeRight.skew(0.0,-0.33),

          LeadLeft.changeBeats(4).scale(3.0,3.0),

          HingeRight.skew(0.0,-0.33) +
          HingeRight.skew(0.33,0.0) +
          HingeRight.skew(0.0,0.33),

          LeadLeft.changeBeats(4).scale(1.0,3.0)
      ]),

    AnimatedCall('Fan the Top',
      formation:Formations.DiamondsFacingLHGirlPoints,
      from:'Left-Hand Facing Diamonds',difficulty: 3,noDisplay: true,
      paths:[
          HingeLeft.skew(0.0,-0.33) +
          HingeLeft.skew(-0.33,0.0) +
          HingeLeft.skew(0.0,0.33),

          LeadRight.changeBeats(4).scale(1.0,3.0),

          HingeLeft.skew(0.0,0.33) +
          HingeLeft.skew(0.33,0.0) +
          HingeLeft.skew(0.0,-0.33),

          LeadRight.changeBeats(4).scale(3.0,3.0)
      ]),

    AnimatedCall('Fan the Top',
      formation:Formations.DiamondsRHPTPGirlPoints,
      from:'Point-to-Point Diamonds',difficulty: 3,
      paths:[
          SwingRight.skew(0.67,0.0) +
          HingeRight.skew(-0.33,0.0),

          LeadRight.changeBeats(4).scale(3.0,1.0),

          SwingRight.skew(-0.67,0.0) +
          HingeRight.skew(0.33,0.0),

          LeadRight.changeBeats(4).scale(3.0,3.0)
      ]),

    AnimatedCall('Fan the Top',
      formation:Formations.DiamondsLHPTPGirlPoints,
      from:'Left-Hand Point-to-Point Diamonds',difficulty: 3,noDisplay: true,
      paths:[
          SwingLeft.skew(-0.67,0.0) +
          HingeLeft.skew(0.33,0.0),

          LeadLeft.changeBeats(4).scale(3.0,1.0),

          SwingLeft.skew(0.67,0.0) +
          HingeLeft.skew(-0.33,0.0),

          LeadLeft.changeBeats(4).scale(3.0,3.0)
      ]),

    AnimatedCall('Fan the Top',
      formation:Formations.DiamondsFacingPTP,
      from:'Point-to-Point Facing Diamonds',difficulty: 3,noDisplay: true,
      paths:[
          SwingRight.skew(0.67,0.0) +
          HingeRight.skew(-0.33,0.0),

          LeadLeft.changeBeats(4).scale(3.0,1.0),

          SwingRight.skew(-0.67,0.0) +
          HingeRight.skew(0.33,0.0),

          LeadLeft.changeBeats(4).scale(3.0,3.0)
      ]),

    AnimatedCall('Fan the Top',
      formation:Formations.DiamondsFacingLHPTP,
      from:'Left-Hand Point-to-Point Facing Diamonds',difficulty: 3,noDisplay: true,
      paths:[
          SwingLeft.skew(-0.67,0.0) +
          HingeLeft.skew(0.33,0.0),

          LeadRight.changeBeats(4).scale(3.0,1.0),

          SwingLeft.skew(0.67,0.0) +
          HingeLeft.skew(-0.33,0.0),

          LeadRight.changeBeats(4).scale(3.0,3.0)
      ]),

    AnimatedCall('Left Fan the Top',
      formation:Formations.FacingCouples,
      from:'Facing Couples',difficulty: 3,
      paths:[
          Forward_2.changeBeats(3) +
          CastRight,

          ExtendRight.changeBeats(3).scale(2.0,2.0) +
          LeadLeft.changeBeats(4.5).scale(3.0,3.0)
      ]),

    AnimatedCall('Left Fan the Top',
      formation:Formations.FacingCouplesClose,
      from:'Close Couples',parts:'4',difficulty: 2,noDisplay: true,
      paths:[
          ExtendRight.scale(1.0,0.5) +
          CastRight.scale(0.5,0.5),

          ExtendRight.scale(1.0,0.5) +
          LeadLeft.changeBeats(4.5).scale(1.5,1.5)
      ]),

    AnimatedCall('Left Fan the Top',
      formation:Formations.EightChainThru,
      from:'Eight Chain Thru',difficulty: 3,
      paths:[
          ExtendRight.scale(1.0,0.25) +
          SwingRight.changeBeats(2.5).scale(0.75,0.75) +
          HingeRight.scale(0.5,0.75),

          ExtendRight +
          LeadLeft.changeBeats(4).scale(1.5,2.0),

          ExtendRight.scale(1.0,0.25) +
          SwingRight.changeBeats(2.5).scale(0.75,0.75) +
          HingeRight.scale(0.5,0.75),

          ExtendRight +
          LeadLeft.changeBeats(4).scale(1.5,2.0)
      ]),

    AnimatedCall('Left Fan the Top',
      formation:Formations.NormalLines,
      from:'Facing Lines',difficulty: 2,
      paths:[
          Forward_2 +
          CastRight,

          ExtendRight.changeBeats(2).scale(2.0,0.5) +
          LeadLeft.changeBeats(4).scale(3.0,1.5),

          ExtendRight.changeBeats(2).scale(2.0,0.5) +
          HingeRight.scale(1.0,0.5) +
          SwingRight,

          ExtendRight.changeBeats(2).scale(2.0,1.0) +
          LeadLeft.changeBeats(4).scale(3.0,2.0)
      ]),

    AnimatedCall('Heads Fan the Top',
      formation:Formations.StaticSquare,
      from:'Static Square',group:' ',difficulty: 2,
      paths:[
          ExtendLeft.changeBeats(3).scale(3.0,0.5) +
          LeadRight.changeBeats(4.5).scale(3.0,1.5),

          ExtendLeft.changeBeats(3).scale(3.0,0.5) +
          HingeLeft.scale(1.0,0.5) +
          SwingLeft,

          Path(),

          Path()
      ]),

    AnimatedCall('Heads Left Fan the Top',
      formation:Formations.StaticSquare,
      from:'Static Square',group:' ',difficulty: 3,
      paths:[
          ExtendRight.changeBeats(3).scale(3.0,0.5) +
          HingeRight.scale(1.0,0.5) +
          SwingRight,

          ExtendRight.changeBeats(3).scale(3.0,0.5) +
          LeadLeft.changeBeats(4.5).scale(3.0,1.5),

          Path(),

          Path()
      ]),
  ];

