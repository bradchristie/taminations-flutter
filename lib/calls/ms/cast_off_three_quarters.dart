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

  final List<AnimatedCall> CastOffThreeQuarters = [ 

    AnimatedCall('Cast Off Three Quarters',
      formation:Formations.TwomFacedLineRH,
      from:'Right-Hand Two-Faced Line',difficulty: 2,
      paths:[
          QuarterLeft.changeBeats(2).changehands(2).skew(0.33,-0.83) +
          QuarterLeft.changeBeats(2).changehands(2).skew(-0.33,-0.33) +
          QuarterLeft.changeBeats(2).changehands(2).skew(-0.33,0.33),

          HingeLeft.changeBeats(2).scale(2.0,2.0).skew(0.33,-0.83) +
          HingeLeft.changeBeats(2).scale(2.0,2.0).skew(-0.33,-0.33) +
          HingeLeft.changeBeats(2).scale(2.0,2.0).skew(-0.33,0.33)
      ]),

    AnimatedCall('Cast Off Three Quarters',
      formation:Formations.TwomFacedLineLH,
      from:'Left-Hand Two-Faced Line',difficulty: 2,
      paths:[
          HingeRight.scale(2.0,2.0).skew(0.33,0.83) +
          HingeRight.scale(2.0,2.0).skew(-0.33,0.33) +
          HingeRight.scale(2.0,2.0).skew(-0.33,-0.33),

          QuarterRight.changehands(1).skew(0.33,0.83) +
          QuarterRight.changehands(1).skew(-0.33,0.33) +
          QuarterRight.changehands(1).skew(-0.33,-0.33)
      ]),

    AnimatedCall('Cast Off Three Quarters',
      formation:Formations.WaveRH,
      from:'Right-Hand Wave',difficulty: 1,
      paths:[
          SwingRight +
          HingeRight.skew(0.0,0.5),

          SwingRight +
          HingeRight.skew(0.0,-0.5)
      ]),

    AnimatedCall('Cast Off Three Quarters',
      formation:Formations.WaveLH,
      from:'Left-Hand Wave',difficulty: 1,
      paths:[
          SwingLeft +
          HingeLeft.skew(0.0,-0.5),

          SwingLeft +
          HingeLeft.skew(0.0,0.5)
      ]),

    AnimatedCall('Cast Off Three Quarters',
      formation:Formations.LinesFacingOut,
      from:'Lines Facing Out',difficulty: 1,
      paths:[
          QuarterRight.changehands(1).skew(0.33,0.33) +
          QuarterRight.changehands(1).skew(-0.33,0.33) +
          QuarterRight.changehands(1).skew(-0.33,-0.33),

          HingeRight.scale(2.0,2.0).skew(0.33,0.33) +
          HingeRight.scale(2.0,2.0).skew(-0.33,0.33) +
          HingeRight.scale(2.0,2.0).skew(-0.33,-0.33),

          HingeLeft.scale(2.0,2.0).skew(0.33,-0.33) +
          HingeLeft.scale(2.0,2.0).skew(-0.33,-0.33) +
          HingeLeft.scale(2.0,2.0).skew(-0.33,0.33),

          QuarterLeft.changehands(2).skew(0.33,-0.33) +
          QuarterLeft.changehands(2).skew(-0.33,-0.33) +
          QuarterLeft.changehands(2).skew(-0.33,0.33)
      ]),

    AnimatedCall('Cast Off Three Quarters',
      formation:Formations.BoxRH,
      from:'Right-Hand Box',difficulty: 1,notForSequencer: true,
      paths:[
          CastRight,

          CastRight
      ]),

    AnimatedCall('Cast Off Three Quarters',
      formation:Formations.BoxLH,
      from:'Left-Hand Box',difficulty: 1,notForSequencer: true,
      paths:[
          CastLeft,

          CastLeft
      ]),

    AnimatedCall('Cast Off Three Quarters',
      formation:Formations.NormalLines,
      from:'Lines Facing In',difficulty: 2,noDisplay: true,
      paths:[
          BackHingeRight +
          BackHingeRight +
          BackHingeRight,

          CastLeft,

          CastRight,

          BackHingeLeft +
          BackHingeLeft +
          BackHingeLeft
      ]),

    AnimatedCall('Cast Off Three Quarters',
      formation:Formations.TwomFacedLinesRH,
      from:'Right-Hand Two-Faced Lines',difficulty: 2,
      paths:[
          QuarterLeft.changehands(2).skew(0.33,-0.33) +
          QuarterLeft.changehands(2).skew(-0.33,-0.33) +
          QuarterLeft.changehands(2).skew(-0.33,0.33),

          HingeLeft.scale(2.0,2.0).skew(0.33,-0.33) +
          HingeLeft.scale(2.0,2.0).skew(-0.33,-0.33) +
          HingeLeft.scale(2.0,2.0).skew(-0.33,0.33),

          HingeLeft.scale(2.0,2.0).skew(0.33,-0.33) +
          HingeLeft.scale(2.0,2.0).skew(-0.33,-0.33) +
          HingeLeft.scale(2.0,2.0).skew(-0.33,0.33),

          QuarterLeft.changehands(2).skew(0.33,-0.33) +
          QuarterLeft.changehands(2).skew(-0.33,-0.33) +
          QuarterLeft.changehands(2).skew(-0.33,0.33)
      ]),

    AnimatedCall('Cast Off Three Quarters',
      formation:Formations.TwomFacedLinesLH,
      from:'Left-Hand Two-Faced Lines',difficulty: 2,
      paths:[
          QuarterRight.changehands(1).skew(0.33,0.33) +
          QuarterRight.changehands(1).skew(-0.33,0.33) +
          QuarterRight.changehands(1).skew(-0.33,-0.33),

          HingeRight.scale(2.0,2.0).skew(0.33,0.33) +
          HingeRight.scale(2.0,2.0).skew(-0.33,0.33) +
          HingeRight.scale(2.0,2.0).skew(-0.33,-0.33),

          HingeRight.scale(2.0,2.0).skew(0.33,0.33) +
          HingeRight.scale(2.0,2.0).skew(-0.33,0.33) +
          HingeRight.scale(2.0,2.0).skew(-0.33,-0.33),

          QuarterRight.changehands(1).skew(0.33,0.33) +
          QuarterRight.changehands(1).skew(-0.33,0.33) +
          QuarterRight.changehands(1).skew(-0.33,-0.33)
      ]),

    AnimatedCall('Cast Off Three Quarters',
      formation:Formations.OceanWavesRHBGGB,
      from:'Right-Hand Waves',difficulty: 1,
      paths:[
          CastRight,

          CastRight,

          CastRight,

          CastRight
      ]),

    AnimatedCall('Cast Off Three Quarters',
      formation:Formations.OceanWavesLHBGGB,
      from:'Left-Hand Waves',difficulty: 1,
      paths:[
          CastLeft,

          CastLeft,

          CastLeft,

          CastLeft
      ]),

    AnimatedCall('Cast Off Three Quarters',
      formation:Formations.InvertedLinesEndsFacingOut,
      from:'Inverted Lines, Centers Facing',difficulty: 2,
      paths:[
          CastLeft,

          CastLeft,

          CastRight,

          CastRight
      ]),

    AnimatedCall('Cast Off Three Quarters',
      formation:Formations.InvertedLinesEndsFacingIn,
      from:'Inverted Lines, Ends Facing',difficulty: 2,
      paths:[
          CastRight,

          CastRight,

          CastLeft,

          CastLeft
      ]),

    AnimatedCall('Cast Off Three Quarters',
      formation:Formations.TidalWaveRHBGBG,
      from:'Right-Hand Tidal Wave',difficulty: 2,
      paths:[
          SwingRight.scale(0.5,0.5) +
          HingeRight.scale(1.0,0.5),

          SwingRight.scale(0.5,0.5) +
          HingeRight.scale(1.0,0.5),

          SwingRight.scale(0.5,0.5) +
          HingeRight.scale(1.0,0.5),

          SwingRight.scale(0.5,0.5) +
          HingeRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Cast Off Three Quarters',
      formation:Formations.TidalWaveLHBGGB,
      from:'Left-Hand Tidal Wave',difficulty: 2,
      paths:[
          SwingLeft.scale(0.5,0.5) +
          HingeLeft.scale(1.0,0.5),

          SwingLeft.scale(0.5,0.5) +
          HingeLeft.scale(1.0,0.5),

          SwingLeft.scale(0.5,0.5) +
          HingeLeft.scale(1.0,0.5),

          SwingLeft.scale(0.5,0.5) +
          HingeLeft.scale(1.0,0.5)
      ]),

    AnimatedCall('Cast Off Three Quarters',
      formation:Formations.TidalLineRH,
      from:'Right-Hand Tidal Line',difficulty: 2,
      paths:[
          QuarterLeft.changehands(2).skew(0.33,-0.17) +
          QuarterLeft.changehands(2).skew(-0.17,-0.33) +
          QuarterLeft.changehands(2).skew(-0.33,0.17),

          HingeLeft.skew(0.33,-0.17) +
          HingeLeft.skew(0.33,-0.33) +
          HingeLeft.skew(0.67,0.67),

          HingeRight.skew(0.33,0.5) +
          HingeRight.skew(-0.17,0.33) +
          HingeRight.skew(0.67,0.17),

          QuarterRight.changehands(1).skew(0.33,0.5) +
          QuarterRight.changehands(1).skew(-0.17,0.33) +
          QuarterRight.changehands(1).skew(-0.33,0.17)
      ]),

    AnimatedCall('Cast Off Three Quarters',
      formation:Formations.TidalLineLH,
      from:'Left-Hand Tidal Line',difficulty: 2,
      paths:[
          HingeRight.skew(0.33,0.17) +
          HingeRight.skew(0.33,0.33) +
          HingeRight.skew(0.67,-0.67),

          QuarterRight.changehands(1).skew(0.33,0.17) +
          QuarterRight.changehands(1).skew(-0.17,0.33) +
          QuarterRight.changehands(1).skew(-0.33,-0.17),

          QuarterLeft.changehands(2).skew(0.33,-0.5) +
          QuarterLeft.changehands(2).skew(-0.17,-0.33) +
          QuarterLeft.changehands(2).skew(-0.33,-0.17),

          HingeLeft.skew(0.33,-0.5) +
          HingeLeft.skew(-0.17,-0.33) +
          HingeLeft.skew(0.67,-0.17)
      ]),

    AnimatedCall('Cast Off Three Quarters',
      formation:Formations.TwomFacedTidalLineRH,
      from:'Right-Hand Two-Faced Tidal Line',difficulty: 2,
      paths:[
          QuarterLeft.changehands(2).skew(0.33,-0.17) +
          QuarterLeft.changehands(2).skew(-0.17,-0.33) +
          QuarterLeft.changehands(2).skew(-0.33,0.17),

          HingeLeft.skew(0.33,-0.17) +
          HingeLeft.skew(0.33,-0.33) +
          HingeLeft.skew(0.67,0.67),

          HingeLeft.skew(0.33,-0.5) +
          HingeLeft.skew(-0.17,-0.33) +
          HingeLeft.skew(0.67,-0.17),

          QuarterLeft.changehands(2).skew(0.33,-0.5) +
          QuarterLeft.changehands(2).skew(-0.17,-0.33) +
          QuarterLeft.changehands(2).skew(-0.33,-0.17)
      ]),

    AnimatedCall('Cast Off Three Quarters',
      formation:Formations.TwomFacedTidalLineLH,
      from:'Left-Hand Two-Faced Tidal Line',difficulty: 2,
      paths:[
          QuarterRight.changehands(1).skew(0.33,0.17) +
          QuarterRight.changehands(1).skew(-0.17,0.33) +
          QuarterRight.changehands(1).skew(-0.33,-0.17),

          HingeRight.skew(0.33,0.17) +
          HingeRight.skew(0.33,0.33) +
          HingeRight.skew(0.67,-0.67),

          HingeRight.skew(0.33,0.5) +
          HingeRight.skew(-0.17,0.33) +
          HingeRight.skew(0.67,0.17),

          QuarterRight.changehands(1).skew(0.33,0.5) +
          QuarterRight.changehands(1).skew(-0.17,0.33) +
          QuarterRight.changehands(1).skew(-0.33,0.17)
      ]),

    AnimatedCall('Cast Off Three Quarters',
      formation:Formations.InvertedTidalLineRH,
      from:'Right-Hand Inverted Tidal Line',difficulty: 2,
      paths:[
          SwingRight.scale(0.5,0.5) +
          HingeRight.scale(1.0,0.5),

          SwingRight.scale(0.5,0.5) +
          HingeRight.scale(1.0,0.5),

          SwingLeft.scale(0.5,0.5) +
          HingeLeft.scale(1.0,0.5),

          SwingLeft.scale(0.5,0.5) +
          HingeLeft.scale(1.0,0.5)
      ]),

    AnimatedCall('Cast Off Three Quarters',
      formation:Formations.InvertedTidalLineLH,
      from:'Left-Hand Inverted Tidal Line',difficulty: 2,
      paths:[
          SwingLeft.scale(0.5,0.5) +
          HingeLeft.scale(1.0,0.5),

          SwingLeft.scale(0.5,0.5) +
          HingeLeft.scale(1.0,0.5),

          SwingRight.scale(0.5,0.5) +
          HingeRight.scale(1.0,0.5),

          SwingRight.scale(0.5,0.5) +
          HingeRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Cast Off Three Quarters',
      formation:Formations.ColumnRHGBGB,
      from:'Right-Hand Columns',difficulty: 2,
      paths:[
          HingeRight.scale(0.5,1.0) +
          SwingRight.scale(0.5,0.5),

          HingeRight.scale(0.5,1.0) +
          SwingRight.scale(0.5,0.5),

          HingeRight.scale(0.5,1.0) +
          SwingRight.scale(0.5,0.5),

          HingeRight.scale(0.5,1.0) +
          SwingRight.scale(0.5,0.5)
      ]),

    AnimatedCall('Cast Off Three Quarters',
      formation:Formations.ColumnLHGBGB,
      from:'Left-Hand Columns',difficulty: 2,
      paths:[
          HingeLeft.scale(0.5,1.0) +
          SwingLeft.scale(0.5,0.5),

          HingeLeft.scale(0.5,1.0) +
          SwingLeft.scale(0.5,0.5),

          HingeLeft.scale(0.5,1.0) +
          SwingLeft.scale(0.5,0.5),

          HingeLeft.scale(0.5,1.0) +
          SwingLeft.scale(0.5,0.5)
      ]),

    AnimatedCall('Cast Off Three Quarters',
      formation:Formations.MagicColumnRH,
      from:'Magic Columns Right-Hand Centers',difficulty: 2,
      paths:[
          HingeLeft.scale(0.5,1.0) +
          SwingLeft.scale(0.5,0.5),

          HingeRight.scale(0.5,1.0) +
          SwingRight.scale(0.5,0.5),

          HingeRight.scale(0.5,1.0) +
          SwingRight.scale(0.5,0.5),

          HingeLeft.scale(0.5,1.0) +
          SwingLeft.scale(0.5,0.5)
      ]),

    AnimatedCall('Cast Off Three Quarters',
      formation:Formations.MagicColumnLH,
      from:'Magic Columns Left-Hand Centers',difficulty: 2,
      paths:[
          HingeRight.scale(0.5,1.0) +
          SwingRight.scale(0.5,0.5),

          HingeLeft.scale(0.5,1.0) +
          SwingLeft.scale(0.5,0.5),

          HingeLeft.scale(0.5,1.0) +
          SwingLeft.scale(0.5,0.5),

          HingeRight.scale(0.5,1.0) +
          SwingRight.scale(0.5,0.5)
      ]),

    AnimatedCall('Cast Off Three Quarters',
      formation:Formations.AlamoWave,
      from:'Alamo Wave',difficulty: 2,
      paths:[
          SxtnthLeft +
          SwingRight +
          HingeRight.skew(-0.414,0.0),

          SxtnthRight +
          SwingRight +
          HingeRight.skew(0.414,0.0),

          SxtnthLeft +
          SwingRight +
          HingeRight.skew(-0.414,0.0),

          SxtnthRight +
          SwingRight +
          HingeRight.skew(0.414,0.0)
      ]),

    AnimatedCall('Cast Off Three Quarters',
      formation:Formations.TharLHBoys,
      from:'Thar',difficulty: 2,
      paths:[
          SwingRight +
          HingeRight.skew(0.0,0.414) +
          SxtnthRight,

          SwingRight +
          HingeRight.skew(0.0,-0.414) +
          SxtnthLeft,

          SwingRight +
          HingeRight.skew(0.0,0.414) +
          SxtnthRight,

          SwingRight +
          HingeRight.skew(0.0,-0.414) +
          SxtnthLeft
      ]),

    AnimatedCall('Cast Off Three Quarters',
      formation:Formations.n3and_1lines1,
      from:'3 and 1 Lines #1',noDisplay: true,
      paths:[
          CastLeft,

          CastLeft,

          CastRight,

          BackHingeLeft +
          BackHingeLeft +
          BackHingeLeft
      ]),

    AnimatedCall('Cast Off Three Quarters',
      formation:Formations.n3and_1lines2,
      from:'3 and 1 Lines #2',noDisplay: true,
      paths:[
          CastRight,

          CastRight,

          CastRight,

          BackHingeLeft +
          BackHingeLeft +
          BackHingeLeft
      ]),

    AnimatedCall('Cast Off Three Quarters',
      formation:Formations.n3and_1lines3,
      from:'3 and 1 Lines #3',noDisplay: true,
      paths:[
          BackHingeRight +
          BackHingeRight +
          BackHingeRight,

          CastLeft,

          CastLeft,

          CastLeft
      ]),

    AnimatedCall('Cast Off Three Quarters',
      formation:Formations.n3and_1lines4,
      from:'3 and 1 Lines #4',noDisplay: true,
      paths:[
          BackHingeRight +
          BackHingeRight +
          BackHingeRight,

          CastLeft,

          CastRight,

          CastRight
      ]),

    AnimatedCall('Cast Off Three Quarters',
      formation:Formations.n3and_1lines5,
      from:'3 and 1 Lines #5',noDisplay: true,
      paths:[
          CastRight,

          CastRight,

          CastLeft,

          BackHingeRight +
          BackHingeRight +
          BackHingeRight
      ]),

    AnimatedCall('Cast Off Three Quarters',
      formation:Formations.n3and_1lines6,
      from:'3 and 1 Lines #6',noDisplay: true,
      paths:[
          CastLeft,

          CastLeft,

          CastLeft,

          BackHingeRight +
          BackHingeRight +
          BackHingeRight
      ]),

    AnimatedCall('Cast Off Three Quarters',
      formation:Formations.n3and_1lines7,
      from:'3 and 1 Lines #7',noDisplay: true,
      paths:[
          BackHingeLeft +
          BackHingeLeft +
          BackHingeLeft,

          CastRight,

          CastRight,

          CastRight
      ]),

    AnimatedCall('Cast Off Three Quarters',
      formation:Formations.n3and_1lines8,
      from:'3 and 1 Lines #8',noDisplay: true,
      paths:[
          BackHingeLeft +
          BackHingeLeft +
          BackHingeLeft,

          CastRight,

          CastLeft,

          CastLeft
      ]),

    AnimatedCall('Centers Cast Off Three Quarters',
      formation:Formations.TwomFacedLineRH,
      from:'Right-Hand Two-Faced Line',difficulty: 1,notForSequencer: true,
      paths:[
          Path(),

          CastRight
      ]),

    AnimatedCall('Centers Cast Off Three Quarters',
      formation:Formations.TwomFacedLineLH,
      from:'Left-Hand Two-Faced Line',difficulty: 1,notForSequencer: true,
      paths:[
          CastLeft,

          Path()
      ]),

    AnimatedCall('Centers Cast Off Three Quarters',
      formation:Formations.WaveRH,
      from:'Right-Hand Wave',difficulty: 1,notForSequencer: true,
      paths:[
          Path(),

          CastLeft
      ]),

    AnimatedCall('Centers Cast Off Three Quarters',
      formation:Formations.WaveLH,
      from:'Left-Hand Wave',difficulty: 1,notForSequencer: true,
      paths:[
          Path(),

          CastRight
      ]),

    AnimatedCall('Centers Cast Off Three Quarters',
      formation:Formations.DiamondRH,
      from:'Right-Hand Diamond',difficulty: 1,notForSequencer: true,
      paths:[
          Path(),

          CastRight
      ]),

    AnimatedCall('Centers Cast Off Three Quarters',
      formation:Formations.DiamondLH,
      from:'Left-Hand Diamond',difficulty: 1,notForSequencer: true,
      paths:[
          Path(),

          CastLeft
      ]),

    AnimatedCall('Centers Cast Off Three Quarters',
      formation:Formations.TwomFacedLinesRH,
      from:'Right-Hand Two-Faced Lines',difficulty: 1,notForSequencer: true,
      paths:[
          Path(),

          CastRight,

          CastRight,

          Path()
      ]),

    AnimatedCall('Centers Cast Off Three Quarters',
      formation:Formations.TwomFacedLinesLH,
      from:'Left-Hand Two-Faced Lines',difficulty: 1,notForSequencer: true,
      paths:[
          Path(),

          CastLeft,

          CastLeft,

          Path()
      ]),

    AnimatedCall('Centers Cast Off Three Quarters',
      formation:Formations.OceanWavesRHBGGB,
      from:'Right-Hand Waves',difficulty: 1,notForSequencer: true,
      paths:[
          Path(),

          CastLeft,

          CastLeft,

          Path()
      ]),

    AnimatedCall('Centers Cast Off Three Quarters',
      formation:Formations.OceanWavesLHBGGB,
      from:'Left-Hand Waves',difficulty: 1,notForSequencer: true,
      paths:[
          Path(),

          CastRight,

          CastRight,

          Path()
      ]),

    AnimatedCall('Centers Cast Off Three Quarters',
      formation:Formations.DiamondsRHGirlPoints,
      from:'Right-Hand Diamonds',difficulty: 1,notForSequencer: true,
      paths:[
          CastRight,

          Path(),

          CastRight,

          Path()
      ]),

    AnimatedCall('Centers Cast Off Three Quarters',
      formation:Formations.DiamondsLHGirlPoints,
      from:'Left-Hand Diamonds',difficulty: 1,notForSequencer: true,
      paths:[
          CastLeft,

          Path(),

          CastLeft,

          Path()
      ]),

    AnimatedCall('Very Centers Cast Off Three Quarters',
      formation:Formations.DiamondsRHGirlPoints,
      from:'Right-Hand Diamonds',difficulty: 1,notForSequencer: true,
      paths:[
          Path(),

          Path(),

          CastLeft,

          Path()
      ]),

    AnimatedCall('Very Centers Cast Off Three Quarters',
      formation:Formations.DiamondsLHGirlPoints,
      from:'Left-Hand Diamonds',difficulty: 1,notForSequencer: true,
      paths:[
          Path(),

          Path(),

          CastRight,

          Path()
      ]),
  ];

