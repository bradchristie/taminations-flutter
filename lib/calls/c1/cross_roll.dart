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

  final List<AnimatedCall> CrossRoll = [ 

    AnimatedCall('Cross Roll',
      formation:Formations.WaveRH,
      from:'Right-Hand Wave',
      paths:[
          FlipRight,

          RunLeft.changeBeats(4).scale(1.0,2.0)
      ]),

    AnimatedCall('Cross Roll',
      formation:Formations.CompactWaveRH,
      from:'Compact Right-Hand Wave',noDisplay: true,
      paths:[
          FlipRight.scale(1.0,0.5),

          RunLeft.changeBeats(4)
      ]),

    AnimatedCall('Cross Roll',
      formation:Formations.WaveLH,
      from:'Left-Hand Wave',
      paths:[
          FlipLeft,

          RunRight.changeBeats(4).scale(1.0,2.0)
      ]),

    AnimatedCall('Cross Roll',
      formation:Formations.CompactWaveLH,
      from:'Compact Left-Hand Wave',noDisplay: true,
      paths:[
          FlipLeft.scale(1.0,0.5),

          RunRight.changeBeats(4)
      ]),

    AnimatedCall('Cross Roll',
      formation:Formations.TwomFacedLineRH,
      from:'Right-Hand Two-Faced Line',
      paths:[
          FlipRight,

          RunRight.changeBeats(4).scale(1.0,2.0)
      ]),

    AnimatedCall('Cross Roll',
      formation:Formations.CompactTwomFacedLineRH,
      from:'Compact Right-Hand Two-Faced Line',noDisplay: true,
      paths:[
          FlipRight.scale(1.0,0.5),

          RunRight.changeBeats(4)
      ]),

    AnimatedCall('Cross Roll',
      formation:Formations.TwomFacedLineLH,
      from:'Left-Hand Two-Faced Line',
      paths:[
          RunLeft.changeBeats(4).scale(1.0,2.0),

          FlipLeft
      ]),

    AnimatedCall('Cross Roll',
      formation:Formations.CompactTwomFacedLineLH,
      from:'Compact Left-Hand Two-Faced Line',noDisplay: true,
      paths:[
          RunLeft.changeBeats(4),

          FlipLeft.scale(1.0,0.5)
      ]),

    AnimatedCall('Cross Roll',
      formation:Formations.OceanWavesRHBGBG,
      from:'Right-Hand Waves',
      paths:[
          FlipRight,

          RunLeft.changeBeats(4).scale(1.0,2.0),

          RunLeft.changeBeats(4).scale(1.0,2.0),

          FlipRight
      ]),

    AnimatedCall('Cross Roll',
      formation:Formations.OceanWavesLHBGBG,
      from:'Left-Hand Waves',
      paths:[
          FlipLeft,

          RunRight.changeBeats(4).scale(1.0,2.0),

          RunRight.changeBeats(4).scale(1.0,2.0),

          FlipLeft
      ]),

    AnimatedCall('Cross Roll',
      formation:Formations.TwomFacedLinesRH,
      from:'Right-Hand Two-Faced Lines',
      paths:[
          FlipRight,

          RunRight.changeBeats(4).scale(1.0,2.0),

          RunRight.changeBeats(4).scale(1.0,2.0),

          FlipRight
      ]),

    AnimatedCall('Cross Roll',
      formation:Formations.TwomFacedLinesLH,
      from:'Left-Hand Two-Faced Lines',
      paths:[
          FlipLeft,

          RunLeft.changeBeats(4).scale(1.0,2.0),

          RunLeft.changeBeats(4).scale(1.0,2.0),

          FlipLeft
      ]),

    AnimatedCall('Cross Roll',
      formation:Formations.InvertedLinesEndsFacingIn,
      from:'Inverted Lines, Ends Facing In',
      paths:[
          FlipRight,

          RunLeft.changeBeats(4).scale(2.0,2.0),

          RunRight.changeBeats(4).scale(1.0,2.0),

          FlipLeft
      ]),

    AnimatedCall('Cross Roll',
      formation:Formations.InvertedLinesEndsFacingOut,
      from:'Inverted Lines, Ends Facing Out',
      paths:[
          FlipLeft,

          RunRight.changeBeats(4).scale(1.0,2.0),

          RunLeft.changeBeats(4).scale(2.0,2.0),

          FlipRight
      ]),

    AnimatedCall('Cross Roll',
      formation:Formations.NormalLines,
      from:'Normal Lines',
      paths:[
          FlipRight,

          RunRight.changeBeats(4).scale(1.0,2.0),

          RunLeft.changeBeats(4).scale(2.0,2.0),

          FlipLeft
      ]),

    AnimatedCall('Cross Roll',
      formation:Formations.LinesFacingOut,
      from:'Lines Facing Out',
      paths:[
          FlipLeft,

          RunLeft.changeBeats(4).scale(2.0,2.0),

          RunRight.changeBeats(4).scale(1.0,2.0),

          FlipRight
      ]),

    AnimatedCall('Cross Roll',
      formation:Formations.n3and_1lines1,
      from:'3 and 1 Lines #1',
      paths:[
          FlipLeft,

          RunRight.changeBeats(4).scale(1.0,2.0),

          RunLeft.changeBeats(4).scale(2.0,2.0),

          FlipLeft
      ]),

    AnimatedCall('Cross Roll',
      formation:Formations.n3and_1lines2,
      from:'3 and 1 Lines #2',
      paths:[
          FlipRight,

          RunLeft.changeBeats(4).scale(1.0,2.0),

          RunLeft.changeBeats(4).scale(1.0,2.0),

          FlipLeft
      ]),

    AnimatedCall('Cross Roll',
      formation:Formations.n3and_1lines3,
      from:'3 and 1 Lines #3',
      paths:[
          FlipRight,

          RunRight.changeBeats(4).scale(1.0,2.0),

          RunRight.changeBeats(4).scale(1.0,2.0),

          FlipLeft
      ]),

    AnimatedCall('Cross Roll',
      formation:Formations.n3and_1lines4,
      from:'3 and 1 Lines #4',
      paths:[
          FlipRight,

          RunRight.changeBeats(4).scale(1.0,2.0),

          RunLeft.changeBeats(4).scale(2.0,2.0),

          FlipRight
      ]),

    AnimatedCall('Cross Roll',
      formation:Formations.n3and_1lines5,
      from:'3 and 1 Lines #5',
      paths:[
          FlipRight,

          RunLeft.changeBeats(4).scale(2.0,2.0),

          RunRight.changeBeats(4).scale(1.0,2.0),

          FlipRight
      ]),

    AnimatedCall('Cross Roll',
      formation:Formations.n3and_1lines6,
      from:'3 and 1 Lines #6',
      paths:[
          FlipLeft,

          RunRight.changeBeats(4).scale(1.0,2.0),

          RunRight.changeBeats(4).scale(1.0,2.0),

          FlipRight
      ]),

    AnimatedCall('Cross Roll',
      formation:Formations.n3and_1lines7,
      from:'3 and 1 Lines #7',
      paths:[
          FlipLeft,

          RunLeft.changeBeats(4).scale(1.0,2.0),

          RunLeft.changeBeats(4).scale(1.0,2.0),

          FlipRight
      ]),

    AnimatedCall('Cross Roll',
      formation:Formations.n3and_1lines8,
      from:'3 and 1 Lines #8',
      paths:[
          FlipLeft,

          RunLeft.changeBeats(4).scale(2.0,2.0),

          RunRight.changeBeats(4).scale(1.0,2.0),

          FlipLeft
      ]),

    AnimatedCall('Cross Roll',
      formation:Formations.TidalLineRH,
      from:'Tidal Line',
      paths:[
          FlipRight.scale(1.0,0.5),

          RunRight.changeBeats(4),

          RunLeft.changeBeats(4).scale(2.0,1.0),

          FlipLeft.scale(1.0,0.5)
      ]),

    AnimatedCall('Cross Roll',
      formation:Formations.TidalLineLH,
      from:'Tidal Line LH',noDisplay: true,
      paths:[
          RunLeft.changeBeats(4),

          FlipLeft.scale(1.0,0.5),

          FlipRight.scale(1.0,0.5),

          RunRight.changeBeats(4).scale(2.0,1.0)
      ]),

    AnimatedCall('Cross Roll',
      formation:Formations.TwomFacedTidalLineRH,
      from:'Two-Faced Tidal Line',
      paths:[
          FlipRight.scale(1.0,0.5),

          RunRight.changeBeats(4),

          RunRight.changeBeats(4),

          FlipRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Cross Roll',
      formation:Formations.TwomFacedTidalLineLH,
      from:'Two-Faced Tidal Line LH',noDisplay: true,
      paths:[
          FlipLeft.scale(1.0,0.5),

          RunLeft.changeBeats(4),

          RunLeft.changeBeats(4),

          FlipLeft.scale(1.0,0.5)
      ]),

    AnimatedCall('Cross Roll',
      formation:Formations.TidalInvertedLineRH,
      from:'Tidal Inverted Line RH',noDisplay: true,
      paths:[
          FlipRight.scale(1.0,0.5),

          RunLeft.changeBeats(4).scale(2.0,1.0),

          RunRight.changeBeats(4),

          FlipLeft.scale(1.0,0.5)
      ]),

    AnimatedCall('Cross Roll',
      formation:Formations.TidalInvertedLineLH,
      from:'Tidal Inverted Line LH',noDisplay: true,
      paths:[
          FlipLeft.scale(1.0,0.5),

          RunRight.changeBeats(4),

          RunLeft.changeBeats(4).scale(2.0,1.0),

          FlipRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Cross Roll',
      formation:Formations.TidalWaveRHBGGB,
      from:'Right-Hand Tidal Wave',
      paths:[
          FlipRight.scale(1.0,0.5),

          RunLeft.changeBeats(4),

          RunLeft.changeBeats(4),

          FlipRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Cross Roll',
      formation:Formations.TidalWaveLHBGGB,
      from:'Left-Hand Tidal Wave',
      paths:[
          FlipLeft.scale(1.0,0.5),

          RunRight.changeBeats(4),

          RunRight.changeBeats(4),

          FlipLeft.scale(1.0,0.5)
      ]),

    AnimatedCall('Cross Roll',
      formation:Formations.Tidal_3and_1Line1,
      from:'Tidal 3 and 1 Line #1',noDisplay: true,
      paths:[
          FlipRight.scale(1.0,0.5),

          RunRight.changeBeats(4),

          RunLeft.changeBeats(4).scale(2.0,1.0),

          FlipRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Cross Roll',
      formation:Formations.Tidal_3and_1Line2,
      from:'Tidal 3 and 1 Line #2',noDisplay: true,
      paths:[
          FlipRight.scale(1.0,0.5),

          RunRight.changeBeats(4),

          RunRight.changeBeats(4),

          FlipLeft.scale(1.0,0.5)
      ]),

    AnimatedCall('Cross Roll',
      formation:Formations.Tidal_3and_1Line3,
      from:'Tidal 3 and 1 Line #3',noDisplay: true,
      paths:[
          FlipRight.scale(1.0,0.5),

          RunLeft.changeBeats(4),

          RunLeft.changeBeats(4),

          FlipLeft.scale(1.0,0.5)
      ]),

    AnimatedCall('Cross Roll',
      formation:Formations.Tidal_3and_1Line4,
      from:'Tidal 3 and 1 Line #4',noDisplay: true,
      paths:[
          FlipLeft.scale(1.0,0.5),

          RunRight.changeBeats(4),

          RunLeft.changeBeats(4).scale(2.0,1.0),

          FlipLeft.scale(1.0,0.5)
      ]),

    AnimatedCall('Cross Roll',
      formation:Formations.Tidal_3and_1Line5,
      from:'Tidal 3 and 1 Line #5',noDisplay: true,
      paths:[
          FlipLeft.scale(1.0,0.5),

          RunLeft.changeBeats(4).scale(2.0,1.0),

          RunRight.changeBeats(4),

          FlipLeft.scale(1.0,0.5)
      ]),

    AnimatedCall('Cross Roll',
      formation:Formations.Tidal_3and_1Line6,
      from:'Tidal 3 and 1 Line #6',noDisplay: true,
      paths:[
          FlipLeft.scale(1.0,0.5),

          RunLeft.changeBeats(4),

          RunLeft.changeBeats(4),

          FlipRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Cross Roll',
      formation:Formations.Tidal_3and_1Line7,
      from:'Tidal 3 and 1 Line #7',noDisplay: true,
      paths:[
          FlipLeft.scale(1.0,0.5),

          RunRight.changeBeats(4),

          RunRight.changeBeats(4),

          FlipRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Cross Roll',
      formation:Formations.Tidal_3and_1Line8,
      from:'Tidal 3 and 1 Line #8',noDisplay: true,
      paths:[
          FlipRight.scale(1.0,0.5),

          RunLeft.changeBeats(4).scale(2.0,1.0),

          RunRight.changeBeats(4),

          FlipRight.scale(1.0,0.5)
      ]),

    AnimatedCall('All Eight Cross Roll',
      formation:Formations.TharLHBoys,
      group:' ',
      paths:[
          HingeLeft +
          Forward_2 +
          LeadLeft,

          FlipRight.changeBeats(5),

          HingeLeft +
          Forward_2 +
          LeadLeft,

          FlipRight.changeBeats(5)
      ]),

    AnimatedCall('All Eight Cross Roll',
      formation:Formations.TharRHBoys,
      group:' ',noDisplay: true,
      paths:[
          HingeRight +
          Forward_2 +
          LeadRight,

          FlipLeft.changeBeats(5),

          HingeRight +
          Forward_2 +
          LeadRight,

          FlipLeft.changeBeats(5)
      ]),

    AnimatedCall('As Couples Cross Roll',
      formation:Formations.TidalLineRH,
      group:' ',
      paths:[
          RunRight.changeBeats(5).scale(1.5,1.5),

          RunRight.changeBeats(5).scale(0.5,0.5),

          RunRight.changeBeats(5).scale(2.5,2.5),

          RunRight.changeBeats(5).scale(1.5,1.5)
      ]),

    AnimatedCall('Concentric Cross Roll',
      formation:Formations.TwomFacedTidalLineRH,
      group:' ',
      paths:[
          FlipRight.scale(1.0,0.5),

          RunRight.changeBeats(5).scale(2.0,3.0),

          FlipLeft.scale(1.0,0.5),

          RunLeft
      ]),

    AnimatedCall('Tandem Cross Roll',
      formation:Formations.TwomFacedLinesRH,
      group:' ',
      paths:[
          Forward_4 +
          RunRight,

          Forward_4 +
          RunRight.changeBeats(5).scale(2.0,2.0),

          RunRight.changeBeats(5).scale(2.0,2.0) +
          Forward_4,

          RunRight.scale(0.5,0.5) +
          ExtendLeft.changeBeats(4).scale(4.0,1.0)
      ]),
  ];

