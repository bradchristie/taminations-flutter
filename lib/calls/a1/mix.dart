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

  final List<AnimatedCall> Mix = [

    AnimatedCall('Mix',
      formation:Formations.WaveRH,
      from:'Right-Hand Wave',parts:'3',
      paths:[
          DodgeRight +
          SwingRight,

          RunLeft.scale(1.0,2.0)
      ]),

    AnimatedCall('Mix',
      formation:Formations.CompactWaveRH,
      from:'Compact Right-Hand Wave',parts:'3',noDisplay: true,
      paths:[
          DodgeRight.scale(1.0,0.5) +
          SwingRight.scale(0.5,0.5),

          RunLeft
      ]),

    AnimatedCall('Mix',
      formation:Formations.WaveLH,
      from:'Left-Hand Wave',parts:'3',
      paths:[
          DodgeLeft +
          SwingLeft,

          RunRight.scale(1.0,2.0)
      ]),

    AnimatedCall('Mix',
      formation:Formations.CompactWaveLH,
      from:'Compact Left-Hand Wave',parts:'3',noDisplay: true,
      paths:[
          DodgeLeft.scale(1.0,0.5) +
          SwingLeft.scale(0.5,0.5),

          RunRight
      ]),

    AnimatedCall('Mix',
      formation:Formations.TwomFacedLineRH,
      from:'Right-Hand Two-Face Line',parts:'3',
      paths:[
          DodgeRight +
          SwingRight,

          RunRight.scale(1.0,2.0)
      ]),

    AnimatedCall('Mix',
      formation:Formations.CompactTwomFacedLineRH,
      from:'Compact Right-Hand Two-Face Line',parts:'3',noDisplay: true,
      paths:[
          DodgeRight.scale(1.0,0.5) +
          SwingRight.scale(0.5,0.5),

          RunRight
      ]),

    AnimatedCall('Mix',
      formation:Formations.TwomFacedLineLH,
      from:'Left-Hand Two-Face Line',parts:'3',
      paths:[
          RunLeft.scale(1.0,2.0),

          DodgeLeft +
          SwingLeft
      ]),

    AnimatedCall('Mix',
      formation:Formations.CompactTwomFacedLineLH,
      from:'Compact Left-Hand Two-Face Line',parts:'3',noDisplay: true,
      paths:[
          RunLeft,

          DodgeLeft.scale(1.0,0.5) +
          SwingLeft.scale(0.5,0.5)
      ]),

    AnimatedCall('Mix',
      formation:Formations.OceanWavesRHBGGB,
      from:'Right-Hand Waves',parts:'3',
      paths:[
          DodgeRight +
          SwingRight,

          RunLeft.scale(1.0,2.0),

          RunLeft.scale(1.0,2.0),

          DodgeRight +
          SwingRight
      ]),

    AnimatedCall('Mix',
      formation:Formations.OceanWavesLHBGGB,
      from:'Left-Hand Waves',parts:'3',
      paths:[
          DodgeLeft +
          SwingLeft,

          RunRight.scale(1.0,2.0),

          RunRight.scale(1.0,2.0),

          DodgeLeft +
          SwingLeft
      ]),

    AnimatedCall('Mix',
      formation:Formations.TwomFacedLinesRH,
      from:'Right-Hand Two-Faced Lines',parts:'3',
      paths:[
          DodgeRight +
          SwingRight,

          RunRight.scale(1.0,2.0),

          RunRight.scale(1.0,2.0),

          DodgeRight +
          SwingRight
      ]),

    AnimatedCall('Mix',
      formation:Formations.TwomFacedLinesLH,
      from:'Left-Hand Two-Faced Lines',parts:'3',
      paths:[
          DodgeLeft +
          SwingLeft,

          RunLeft.scale(1.0,2.0),

          RunLeft.scale(1.0,2.0),

          DodgeLeft +
          SwingLeft
      ]),

    AnimatedCall('Mix',
      formation:Formations.NormalLines,
      from:'Lines Facing In',parts:'3',
      paths:[
          DodgeRight +
          RunRight,

          RunRight.changeBeats(4).scale(1.0,2.0),

          RunLeft.changeBeats(4).scale(2.0,2.0),

          DodgeLeft +
          FlipLeft
      ]),

    AnimatedCall('Mix',
      formation:Formations.LinesFacingOut,
      from:'Lines Facing Out',parts:'3',
      paths:[
          DodgeLeft +
          FlipLeft,

          RunLeft.changeBeats(4).scale(2.0,2.0),

          RunRight.changeBeats(4).scale(1.0,2.0),

          DodgeRight +
          RunRight
      ]),

    AnimatedCall('Mix',
      formation:Formations.InvertedLinesEndsFacingOut,
      from:'Inverted Lines, Centers Facing',parts:'3',
      paths:[
          DodgeLeft +
          FlipLeft,

          RunRight.changeBeats(4).scale(1.0,2.0),

          RunLeft.changeBeats(4).scale(2.0,2.0),

          DodgeRight +
          RunRight
      ]),

    AnimatedCall('Mix',
      formation:Formations.InvertedLinesEndsFacingIn,
      from:'Inverted Lines, Ends Facing',parts:'3',
      paths:[
          DodgeRight +
          RunRight,

          RunLeft.changeBeats(4).scale(2.0,2.0),

          RunRight.changeBeats(4).scale(1.0,2.0),

          DodgeLeft +
          FlipLeft
      ]),

    AnimatedCall('Mix',
      formation:Formations.n3and_1lines1,
      from:'3 and 1 Lines #1',parts:'3',
      paths:[
          DodgeLeft +
          SwingLeft,

          RunRight.changeBeats(4).scale(1.0,2.0),

          RunLeft.changeBeats(4).scale(2.0,2.0),

          DodgeLeft +
          SwingLeft
      ]),

    AnimatedCall('Mix',
      formation:Formations.n3and_1lines2,
      from:'3 and 1 Lines #2',parts:'3',
      paths:[
          DodgeRight +
          RunRight,

          RunLeft.changeBeats(4).scale(1.0,2.0),

          RunLeft.changeBeats(4).scale(1.0,2.0),

          DodgeLeft +
          FlipLeft
      ]),

    AnimatedCall('Mix',
      formation:Formations.n3and_1lines3,
      from:'3 and 1 Lines #3',parts:'3',
      paths:[
          DodgeRight +
          RunRight,

          RunRight.changeBeats(4).scale(1.0,2.0),

          RunRight.changeBeats(4).scale(1.0,2.0),

          DodgeLeft +
          FlipLeft
      ]),

    AnimatedCall('Mix',
      formation:Formations.n3and_1lines4,
      from:'3 and 1 Lines #4',parts:'3',
      paths:[
          DodgeRight +
          SwingRight,

          RunRight.changeBeats(4).scale(1.0,2.0),

          RunLeft.changeBeats(4).scale(2.0,2.0),

          DodgeRight +
          SwingRight
      ]),

    AnimatedCall('Mix',
      formation:Formations.n3and_1lines5,
      from:'3 and 1 Lines #5',parts:'3',
      paths:[
          DodgeRight +
          SwingRight,

          RunLeft.changeBeats(4).scale(2.0,2.0),

          RunRight.changeBeats(4).scale(1.0,2.0),

          DodgeRight +
          SwingRight
      ]),

    AnimatedCall('Mix',
      formation:Formations.n3and_1lines6,
      from:'3 and 1 Lines #6',parts:'3',
      paths:[
          DodgeLeft +
          FlipLeft,

          RunRight.changeBeats(4).scale(1.0,2.0),

          RunRight.changeBeats(4).scale(1.0,2.0),

          DodgeRight +
          RunRight
      ]),

    AnimatedCall('Mix',
      formation:Formations.n3and_1lines7,
      from:'3 and 1 Lines #7',parts:'3',
      paths:[
          DodgeLeft +
          FlipLeft,

          RunLeft.changeBeats(4).scale(1.0,2.0),

          RunLeft.changeBeats(4).scale(1.0,2.0),

          DodgeRight +
          RunRight
      ]),

    AnimatedCall('Mix',
      formation:Formations.n3and_1lines8,
      from:'3 and 1 Lines #8',parts:'3',
      paths:[
          DodgeLeft +
          SwingLeft,

          RunLeft.changeBeats(4).scale(2.0,2.0),

          RunRight.changeBeats(4).scale(1.0,2.0),

          DodgeLeft +
          SwingLeft
      ]),

    AnimatedCall('Mix',
      formation:Formations.TidalWaveRHBGGB,
      from:'Right-Hand Tidal Wave',parts:'3',
      paths:[
          DodgeRight.scale(1.0,0.5) +
          SwingRight.scale(0.5,0.5),

          RunLeft,

          RunLeft,

          DodgeRight.scale(1.0,0.5) +
          SwingRight.scale(0.5,0.5)
      ]),

    AnimatedCall('Mix',
      formation:Formations.TidalWaveLHBGGB,
      from:'Left-Hand Tidal Wave',parts:'3',
      paths:[
          DodgeLeft.scale(1.0,0.5) +
          SwingLeft.scale(0.5,0.5),

          RunRight,

          RunRight,

          DodgeLeft.scale(1.0,0.5) +
          SwingLeft.scale(0.5,0.5)
      ]),

    AnimatedCall('Mix',
      formation:Formations.TwomFacedTidalLineRH,
      from:'Right-Hand Tidal Two-Faced Line',parts:'3',
      paths:[
          DodgeRight.scale(1.0,0.5) +
          SwingRight.scale(0.5,0.5),

          RunRight,

          RunRight,

          DodgeRight.scale(1.0,0.5) +
          SwingRight.scale(0.5,0.5)
      ]),

    AnimatedCall('Mix',
      formation:Formations.TwomFacedTidalLineLH,
      from:'Left-Hand Tidal Two-Faced Line',parts:'3',
      paths:[
          DodgeLeft.scale(1.0,0.5) +
          SwingLeft.scale(0.5,0.5),

          RunLeft,

          RunLeft,

          DodgeLeft.scale(1.0,0.5) +
          SwingLeft.scale(0.5,0.5)
      ]),
    a2.All4All8.where((tam) =>
      tam.title == 'All 8 Mix').first.xref(title: 'All 8 Mix').xref(group: ' '),

    AnimatedCall('As Couples Mix',
      formation:Formations.TwomFacedTidalLineRH,
      from:'Two-Faced Tidal Line',group:' ',parts:'3',
      paths:[
          DodgeRight +
          SwingRight.scale(1.5,1.5),

          DodgeRight +
          SwingRight.scale(0.5,0.5),

          RunLeft.changeBeats(6).changehands(5).scale(3.0,2.5),

          RunLeft.changeBeats(6).changehands(6).scale(2.0,1.5)
      ]),

    AnimatedCall('As Couples Mix',
      formation:Formations.TwomFacedTidalLineLH,
      from:'Two-Faced Tidal Line',group:' ',parts:'3',noDisplay: true,
      paths:[
          DodgeLeft +
          SwingLeft.scale(1.5,1.5),

          DodgeLeft +
          SwingLeft.scale(0.5,0.5),

          RunRight.changeBeats(6).changehands(6).scale(3.0,2.5),

          RunRight.changeBeats(6).changehands(5).scale(2.0,1.5)
      ]),
  ];

