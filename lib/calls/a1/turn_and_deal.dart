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
import '../a2/all_4_all_8.dart' as a2;

  final List<AnimatedCall> TurnAndDeal = [ 

    AnimatedCall('Turn and Deal',
      formation:Formations.TwomFacedLineRH,
      from:'Right-Hand Two-Faced Line',
      paths:[
          UmTurnRight.changeBeats(4).skew(1.5,-2.0),

          UmTurnRight.changeBeats(4).skew(1.5,-2.0)
      ]),

    AnimatedCall('Turn and Deal',
      formation:Formations.TwomFacedLineLH,
      from:'Left-Hand Two-Faced Line',
      paths:[
          UmTurnLeft.changeBeats(4).skew(-1.5,2.0),

          UmTurnLeft.changeBeats(4).skew(-1.5,2.0)
      ]),

    AnimatedCall('Turn and Deal',
      formation:Formations.WaveRH,
      from:'Right-Hand Wave',
      paths:[
          UmTurnRight.changeBeats(4).skew(1.5,-2.0),

          UmTurnLeft.changeBeats(4).skew(-1.5,2.0)
      ]),

    AnimatedCall('Turn and Deal',
      formation:Formations.WaveLH,
      from:'Left-Hand Wave',
      paths:[
          UmTurnLeft.changeBeats(4).skew(-1.5,2.0),

          UmTurnRight.changeBeats(4).skew(1.5,-2.0)
      ]),

    AnimatedCall('Turn and Deal',
      formation:Formations.NormalLines,
      from:'Normal Lines',
      paths:[
          UmTurnRight.changeBeats(4).skew(1.0,-2.0),

          UmTurnRight.changeBeats(4).skew(1.0,-2.0),

          UmTurnLeft.changeBeats(4).skew(-1.0,2.0),

          UmTurnLeft.changeBeats(4).skew(-1.0,2.0)
      ]),

    AnimatedCall('Turn and Deal',
      formation:Formations.LinesFacingOut,
      from:'Lines Facing Out',
      paths:[
          UmTurnLeft.changeBeats(4).skew(-1.0,2.0),

          UmTurnLeft.changeBeats(4).skew(-1.0,2.0),

          UmTurnRight.changeBeats(4).skew(1.0,-2.0),

          UmTurnRight.changeBeats(4).skew(1.0,-2.0)
      ]),

    AnimatedCall('Turn and Deal',
      formation:Formations.TwomFacedLinesRH,
      from:'Right-Hand Two-Faced Lines',
      paths:[
          UmTurnRight.changeBeats(4).skew(1.0,-2.0),

          UmTurnRight.changeBeats(4).skew(1.0,-2.0),

          UmTurnRight.changeBeats(4).skew(1.0,-2.0),

          UmTurnRight.changeBeats(4).skew(1.0,-2.0)
      ]),

    AnimatedCall('Turn and Deal',
      formation:Formations.TwomFacedLinesLH,
      from:'Left-Hand Two-Faced Lines',
      paths:[
          UmTurnLeft.changeBeats(4).skew(-1.0,2.0),

          UmTurnLeft.changeBeats(4).skew(-1.0,2.0),

          UmTurnLeft.changeBeats(4).skew(-1.0,2.0),

          UmTurnLeft.changeBeats(4).skew(-1.0,2.0)
      ]),

    AnimatedCall('Turn and Deal',
      formation:Formations.OceanWavesRHBGGB,
      from:'Right-Hand Waves',
      paths:[
          UmTurnRight.changeBeats(4).skew(1.0,-2.0),

          UmTurnLeft.changeBeats(4).skew(-1.0,2.0),

          UmTurnLeft.changeBeats(4).skew(-1.0,2.0),

          UmTurnRight.changeBeats(4).skew(1.0,-2.0)
      ]),

    AnimatedCall('Turn and Deal',
      formation:Formations.OceanWavesLHBGGB,
      from:'Left-Hand Waves',
      paths:[
          UmTurnLeft.changeBeats(4).skew(-1.0,2.0),

          UmTurnRight.changeBeats(4).skew(1.0,-2.0),

          UmTurnRight.changeBeats(4).skew(1.0,-2.0),

          UmTurnLeft.changeBeats(4).skew(-1.0,2.0)
      ]),

    AnimatedCall('Turn and Deal',
      formation:Formations.n3and_1lines1,
      from:'3 and 1 Lines #1',
      paths:[
          UmTurnLeft.changeBeats(4).skew(-1.0,2.0),

          UmTurnRight.changeBeats(4).skew(1.0,-2.0),

          UmTurnLeft.changeBeats(4).skew(-1.0,2.0),

          UmTurnLeft.changeBeats(4).skew(-1.0,2.0)
      ]),

    AnimatedCall('Turn and Deal',
      formation:Formations.n3and_1lines2,
      from:'3 and 1 Lines #2',
      paths:[
          UmTurnRight.changeBeats(4).skew(1.0,-2.0),

          UmTurnLeft.changeBeats(4).skew(-1.0,2.0),

          UmTurnLeft.changeBeats(4).skew(-1.0,2.0),

          UmTurnLeft.changeBeats(4).skew(-1.0,2.0)
      ]),

    AnimatedCall('Turn and Deal',
      formation:Formations.n3and_1lines3,
      from:'3 and 1 Lines #3',
      paths:[
          UmTurnRight.changeBeats(4).skew(1.0,-2.0),

          UmTurnRight.changeBeats(4).skew(1.0,-2.0),

          UmTurnRight.changeBeats(4).skew(1.0,-2.0),

          UmTurnLeft.changeBeats(4).skew(-1.0,2.0)
      ]),

    AnimatedCall('Turn and Deal',
      formation:Formations.n3and_1lines4,
      from:'3 and 1 Lines #4',
      paths:[
          UmTurnRight.changeBeats(4).skew(1.0,-2.0),

          UmTurnRight.changeBeats(4).skew(1.0,-2.0),

          UmTurnLeft.changeBeats(4).skew(-1.0,2.0),

          UmTurnRight.changeBeats(4).skew(1.0,-2.0)
      ]),

    AnimatedCall('Turn and Deal',
      formation:Formations.n3and_1lines5,
      from:'3 and 1 Lines #5',
      paths:[
          UmTurnRight.changeBeats(4).skew(1.0,-2.0),

          UmTurnLeft.changeBeats(4).skew(-1.0,2.0),

          UmTurnRight.changeBeats(4).skew(1.0,-2.0),

          UmTurnRight.changeBeats(4).skew(1.0,-2.0)
      ]),

    AnimatedCall('Turn and Deal',
      formation:Formations.n3and_1lines6,
      from:'3 and 1 Lines #6',
      paths:[
          UmTurnLeft.changeBeats(4).skew(-1.0,2.0),

          UmTurnRight.changeBeats(4).skew(1.0,-2.0),

          UmTurnRight.changeBeats(4).skew(1.0,-2.0),

          UmTurnRight.changeBeats(4).skew(1.0,-2.0)
      ]),

    AnimatedCall('Turn and Deal',
      formation:Formations.n3and_1lines7,
      from:'3 and 1 Lines #7',
      paths:[
          UmTurnLeft.changeBeats(4).skew(-1.0,2.0),

          UmTurnLeft.changeBeats(4).skew(-1.0,2.0),

          UmTurnLeft.changeBeats(4).skew(-1.0,2.0),

          UmTurnRight.changeBeats(4).skew(1.0,-2.0)
      ]),

    AnimatedCall('Turn and Deal',
      formation:Formations.n3and_1lines8,
      from:'3 and 1 Lines #8',
      paths:[
          UmTurnLeft.changeBeats(4).skew(-1.0,2.0),

          UmTurnLeft.changeBeats(4).skew(-1.0,2.0),

          UmTurnRight.changeBeats(4).skew(1.0,-2.0),

          UmTurnLeft.changeBeats(4).skew(-1.0,2.0)
      ]),

    AnimatedCall('Turn and Deal',
      formation:Formations.InvertedLinesEndsFacingOut,
      from:'Inverted Lines, Centers Facing',
      paths:[
          UmTurnLeft.changeBeats(4).skew(-1.0,2.0),

          UmTurnRight.changeBeats(4).skew(1.0,-2.0),

          UmTurnLeft.changeBeats(4).skew(-1.0,2.0),

          UmTurnRight.changeBeats(4).skew(1.0,-2.0)
      ]),

    AnimatedCall('Turn and Deal',
      formation:Formations.InvertedLinesEndsFacingIn,
      from:'Inverted Lines, Ends Facing',
      paths:[
          UmTurnRight.changeBeats(4).skew(1.0,-2.0),

          UmTurnLeft.changeBeats(4).skew(-1.0,2.0),

          UmTurnRight.changeBeats(4).skew(1.0,-2.0),

          UmTurnLeft.changeBeats(4).skew(-1.0,2.0)
      ]),

    AnimatedCall('Turn and Deal',
      formation:Formations.TidalLineRH,
      from:'Tidal Line',
      paths:[
          UmTurnRight.changeBeats(4).skew(1.5,-0.5),

          UmTurnRight.changeBeats(4).skew(1.5,-1.5),

          UmTurnLeft.changeBeats(4).skew(-1.5,1.5),

          UmTurnLeft.changeBeats(4).skew(-1.5,0.5)
      ]),

    AnimatedCall('Turn and Deal',
      formation:Formations.TwomFacedTidalLineRH,
      from:'Right-Hand Two-Faced Tidal Line',
      paths:[
          UmTurnRight.changeBeats(4).skew(1.5,-0.5),

          UmTurnRight.changeBeats(4).skew(1.5,-1.5),

          UmTurnRight.changeBeats(4).skew(1.5,-1.5),

          UmTurnRight.changeBeats(4).skew(1.5,-0.5)
      ]),

    AnimatedCall('Turn and Deal',
      formation:Formations.TwomFacedTidalLineLH,
      from:'Left-Hand Two-Faced Tidal Line',
      paths:[
          UmTurnLeft.changeBeats(4).skew(-1.5,0.5),

          UmTurnLeft.changeBeats(4).skew(-1.5,1.5),

          UmTurnLeft.changeBeats(4).skew(-1.5,1.5),

          UmTurnLeft.changeBeats(4).skew(-1.5,0.5)
      ]),

    AnimatedCall('Turn and Deal',
      formation:Formations.TidalWaveRHBGGB,
      from:'Right-Hand Tidal Wave',
      paths:[
          UmTurnRight.changeBeats(4).skew(1.5,-0.5),

          UmTurnLeft.changeBeats(4).skew(-1.5,1.5),

          UmTurnLeft.changeBeats(4).skew(-1.5,1.5),

          UmTurnRight.changeBeats(4).skew(1.5,-0.5)
      ]),

    AnimatedCall('Turn and Deal',
      formation:Formations.TidalWaveLHBGGB,
      from:'Left-Hand Tidal Wave',
      paths:[
          UmTurnLeft.changeBeats(4).skew(-1.5,0.5),

          UmTurnRight.changeBeats(4).skew(1.5,-1.5),

          UmTurnRight.changeBeats(4).skew(1.5,-1.5),

          UmTurnLeft.changeBeats(4).skew(-1.5,0.5)
      ]),

    AnimatedCall('Left Turn and Deal',
      formation:Formations.OceanWavesRHBGGB,
      from:'Right-Hand Waves',
      paths:[
          UmTurnRight.changeBeats(4).skew(-1.0,-2.0),

          UmTurnLeft.changeBeats(4).skew(1.0,2.0),

          UmTurnLeft.changeBeats(4).skew(1.0,2.0),

          UmTurnRight.changeBeats(4).skew(-1.0,-2.0)
      ]),

    AnimatedCall('Left Turn and Deal',
      formation:Formations.OceanWavesLHBGGB,
      from:'Left-Hand Waves',
      paths:[
          UmTurnLeft.changeBeats(4).skew(1.0,2.0),

          UmTurnRight.changeBeats(4).skew(-1.0,-2.0),

          UmTurnRight.changeBeats(4).skew(-1.0,-2.0),

          UmTurnLeft.changeBeats(4).skew(1.0,2.0)
      ]),

    AnimatedCall('Left Turn and Deal',
      formation:Formations.TwomFacedLineLH,
      from:'Left-Hand Two-Faced Line',
      paths:[
          UmTurnLeft.changeBeats(4).skew(1.5,2.0),

          UmTurnLeft.changeBeats(4).skew(1.5,2.0)
      ]),

    AnimatedCall('Left Turn and Deal',
      formation:Formations.TwomFacedLinesLH,
      from:'Left-Hand Two-Faced Lines',
      paths:[
          UmTurnLeft.changeBeats(4).skew(1.0,2.0),

          UmTurnLeft.changeBeats(4).skew(1.0,2.0),

          UmTurnLeft.changeBeats(4).skew(1.0,2.0),

          UmTurnLeft.changeBeats(4).skew(1.0,2.0)
      ]),

    AnimatedCall('Left Turn and Deal',
      formation:Formations.TidalWaveRHBGGB,
      from:'Right-Hand Tidal Wave',
      paths:[
          UmTurnRight.changeBeats(4).skew(-1.5,-0.5),

          UmTurnLeft.changeBeats(4).skew(1.5,1.5),

          UmTurnLeft.changeBeats(4).skew(1.5,1.5),

          UmTurnRight.changeBeats(4).skew(-1.5,-0.5)
      ]),

    AnimatedCall('Left Turn and Deal',
      formation:Formations.TwomFacedTidalLineLH,
      from:'Left-Hand Two-Faced Tidal Line',
      paths:[
          UmTurnLeft.changeBeats(4).skew(1.5,0.5),

          UmTurnLeft.changeBeats(4).skew(1.5,1.5),

          UmTurnLeft.changeBeats(4).skew(1.5,1.5),

          UmTurnLeft.changeBeats(4).skew(1.5,0.5)
      ]),

    AnimatedCall('As Couples Turn and Deal',
      formation:Formations.TidalLineRH,
      from:'Right-Hand Tidal Line',
      paths:[
          BelleWheel.changeBeats(4).changehands(6).scale(1.0,-0.5).skew(1.5,-1.5),

          UmTurnRight.changeBeats(4).changehands(5).skew(1.5,0.5),

          RunRight.changeBeats(4).changehands(6).scale(1.5,2.25).skew(1.5,0.0),

          RunRight.changeBeats(4).changehands(5).scale(0.5,0.75).skew(1.55,0.0)
      ]),

    AnimatedCall('As Couples Turn and Deal',
      formation:Formations.TidalLineLH,
      from:'Left-Hand Tidal Line',
      paths:[
          BeauWheel.changeBeats(4).scale(0.5,0.5).skew(-1.5,0.5),

          BelleWheel.changeBeats(4).scale(0.5,0.5).skew(-1.5,1.5),

          QuarterLeft.changeBeats(2).skew(-1.5,0.5) +
          QuarterLeft.changeBeats(2).changehands(2).skew(1.0,0.0),

          QuarterLeft.changeBeats(2).skew(-0.5,1.5) +
          LeadLeft.changeBeats(2).changehands(1).scale(3.0,1.0)
      ]),

    AnimatedCall('As Couples Turn and Deal',
      formation:Formations.TwomFacedTidalLineRH,
      from:'Right-Hand Two-Faced Tidal Line',
      paths:[
          BelleWheel.changeBeats(4).scale(1.0,-0.5).skew(1.5,-1.5),

          BeauWheel.changeBeats(4).scale(0.5,-0.5).skew(1.5,-0.5),

          QuarterLeft.changeBeats(2).skew(-0.5,1.5) +
          LeadLeft.changeBeats(2).changehands(1).scale(3.0,1.0),

          QuarterLeft.changeBeats(2).skew(-1.5,0.5) +
          QuarterLeft.changeBeats(2).changehands(2).skew(1.0,0.0)
      ]),

    AnimatedCall('As Couples Turn and Deal',
      formation:Formations.TwomFacedTidalLineLH,
      from:'Left-Hand Two-Faced Tidal Line',
      paths:[
          BelleWheel.changeBeats(4).scale(0.5,0.5).skew(-1.5,1.5),

          BeauWheel.changeBeats(4).scale(0.5,0.5).skew(-1.5,0.5),

          RunRight.changeBeats(4).changehands(6).scale(1.5,2.25).skew(1.5,0.0),

          RunRight.changeBeats(4).changehands(5).scale(0.5,0.75).skew(1.55,0.0)
      ]),
    a2.All4All8.where((tam) =>
      tam.title == 'All 8 Turn and Deal').first.xref(title: 'All 8 Turn and Deal'),
    a2.All4All8.where((tam) =>
      tam.title == 'All 8 Turn and Deal').first.xref(title: 'All 8 Turn and Deal'),
    a2.All4All8.where((tam) =>
      tam.title == 'All 8 Turn and Deal').first.xref(title: 'All 8 Turn and Deal'),
    a2.All4All8.where((tam) =>
      tam.title == 'All 8 Turn and Deal').first.xref(title: 'All 8 Turn and Deal'),
  ];

