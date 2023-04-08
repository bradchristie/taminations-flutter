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
import '../../formation.dart';
import '../../formations.dart';
import '../../moves.dart';

  final List<AnimatedCall> Run = [

    AnimatedCall('Boys Run',
      formation:Formations.FacingCouplesCompact,
      from:'Facing Couples',notForSequencer: true,
      paths:[
          RunRight.changeBeats(4),

          DodgeLeft.changeBeats(4)
      ]),

    AnimatedCall('Boys Run',
      formation:Formations.BoxRHBoysLead,
      from:'Right-Hand Box, Boys Lead',notForSequencer: true,
      paths:[
          RunRight.changeBeats(4),

          DodgeRight.changeBeats(4)
      ]),

    AnimatedCall('Boys Run',
      formation:Formations.BoxRH,
      from:'Right-Hand Box, Girls Lead',notForSequencer: true,
      paths:[
          RunRight.changeBeats(4),

          DodgeRight.changeBeats(4)
      ]),

    AnimatedCall('Boys Run',
      formation:Formations.BoxLH,
      from:'Left-Hand Box, Boys Lead',notForSequencer: true,
      paths:[
          RunLeft.changeBeats(4),

          DodgeLeft.changeBeats(4)
      ]),

    AnimatedCall('Boys Run',
      formation:Formations.BoxLHGirlsLead,
      from:'Left-Hand Box, Girls Lead',notForSequencer: true,
      paths:[
          RunLeft.changeBeats(4),

          DodgeLeft.changeBeats(4)
      ]),

    AnimatedCall('Boys Run',
      formation:Formations.CouplesFacingOut,
      from:'Couples Facing Out',notForSequencer: true,
      paths:[
          DodgeLeft.changeBeats(4),

          RunRight.changeBeats(4)
      ]),

    AnimatedCall('Boys Run',
      formation:Formations.WaveRH,
      from:'Right-Hand Wave, Boys End',notForSequencer: true,
      paths:[
          RunRight.changeBeats(4),

          DodgeRight.changeBeats(4)
      ]),

    AnimatedCall('Boys Run',
      formation:Formations.WaveRHBoysCenter,
      from:'Right-Hand Wave, Boys Center',notForSequencer: true,
      paths:[
          RunRight.changeBeats(4),

          DodgeRight.changeBeats(4)
      ]),

    AnimatedCall('Boys Run',
      formation:Formations.WaveLH,
      from:'Left-Hand Wave, Boys End',notForSequencer: true,
      paths:[
          RunLeft.changeBeats(4),

          DodgeLeft.changeBeats(4)
      ]),

    AnimatedCall('Boys Run',
      formation:Formations.WaveLHBoysCenter,
      from:'Left-Hand Wave, Boys Center',notForSequencer: true,
      paths:[
          RunLeft.changeBeats(4),

          DodgeLeft.changeBeats(4)
      ]),

    AnimatedCall('Boys Run',
      formation:Formations.NormalLines,
      from:'Lines',difficulty: 2,notForSequencer: true,
      paths:[
          RunRight.changeBeats(4),

          DodgeLeft.changeBeats(4),

          RunRight.changeBeats(4),

          DodgeLeft.changeBeats(4)
      ]),

    AnimatedCall('Boys Run',
      formation:Formations.OceanWavesRHGBBG,
      from:'Right-Hand Waves',difficulty: 1,notForSequencer: true,
      paths:[
          DodgeRight.changeBeats(4),

          RunRight.changeBeats(4),

          RunRight.changeBeats(4),

          DodgeRight.changeBeats(4)
      ]),

    AnimatedCall('Boys Run',
      formation:Formations.OceanWavesLHBGBG,
      from:'Left-Hand Waves',difficulty: 1,notForSequencer: true,
      paths:[
          RunLeft.changeBeats(4),

          DodgeLeft.changeBeats(4),

          RunLeft.changeBeats(4),

          DodgeLeft.changeBeats(4)
      ]),

    AnimatedCall('Boys Run',
      formation:Formations.ColumnRHGBGB,
      from:'Right-Hand Columns',difficulty: 1,notForSequencer: true,
      paths:[
          DodgeRight.changeBeats(4),

          RunRight.changeBeats(4).scale(0.6,1.0),

          DodgeRight.changeBeats(4),

          RunRight.changeBeats(4).scale(0.6,1.0)
      ]),

    AnimatedCall('Boys Run',
      formation:Formations.ColumnLHGBGB,
      from:'Left-Hand Columns',difficulty: 1,notForSequencer: true,
      paths:[
          RunLeft.changeBeats(4).scale(0.6,1.0),

          DodgeLeft.changeBeats(4),

          RunLeft.changeBeats(4).scale(0.6,1.0),

          DodgeLeft.changeBeats(4)
      ]),

    AnimatedCall('Boys Run',
      formation:Formations.CompletedDoublePassThru,
      from:'Completed Double Pass Thru',difficulty: 2,notForSequencer: true,
      paths:[
          DodgeLeft.changeBeats(4),

          RunRight.changeBeats(4),

          DodgeLeft.changeBeats(4),

          RunRight.changeBeats(4)
      ]),

    AnimatedCall('Girls Run',
      formation:Formations.FacingCouplesCompact,
      from:'Facing Couples',notForSequencer: true,
      paths:[
          DodgeRight.changeBeats(4),

          RunLeft.changeBeats(4)
      ]),

    AnimatedCall('Girls Run',
      formation:Formations.BoxRHBoysLead,
      from:'Right-Hand Box, Boys Lead',notForSequencer: true,
      paths:[
          DodgeRight.changeBeats(4),

          RunRight.changeBeats(4)
      ]),

    AnimatedCall('Girls Run',
      formation:Formations.BoxRH,
      from:'Right-Hand Box, Girls Lead',notForSequencer: true,
      paths:[
          DodgeRight.changeBeats(4),

          RunRight.changeBeats(4)
      ]),

    AnimatedCall('Girls Run',
      formation:Formations.BoxLH,
      from:'Left-Hand Box, Boys Lead',notForSequencer: true,
      paths:[
          DodgeLeft.changeBeats(4),

          RunLeft.changeBeats(4)
      ]),

    AnimatedCall('Girls Run',
      formation:Formations.BoxLHGirlsLead,
      from:'Left-Hand Box, Girls Lead',notForSequencer: true,
      paths:[
          DodgeLeft.changeBeats(4),

          RunLeft.changeBeats(4)
      ]),

    AnimatedCall('Girls Run',
      formation:Formations.CouplesFacingOut,
      from:'Couples Facing Out',notForSequencer: true,
      paths:[
          RunLeft.changeBeats(4),

          DodgeRight.changeBeats(4)
      ]),

    AnimatedCall('Girls Run',
      formation:Formations.WaveRHBoysCenter,
      from:'Right-Hand Wave, Girls End',notForSequencer: true,
      paths:[
          DodgeRight.changeBeats(4),

          RunRight.changeBeats(4)
      ]),

    AnimatedCall('Girls Run',
      formation:Formations.WaveRH,
      from:'Right-Hand Wave, Girls Center',notForSequencer: true,
      paths:[
          DodgeRight.changeBeats(4),

          RunRight.changeBeats(4)
      ]),

    AnimatedCall('Girls Run',
      formation:Formations.WaveLHBoysCenter,
      from:'Left-Hand Wave, Girls End',notForSequencer: true,
      paths:[
          DodgeLeft.changeBeats(4),

          RunLeft.changeBeats(4)
      ]),

    AnimatedCall('Girls Run',
      formation:Formations.WaveLH,
      from:'Left-Hand Wave, Girls Center',notForSequencer: true,
      paths:[
          DodgeLeft.changeBeats(4),

          RunLeft.changeBeats(4)
      ]),

    AnimatedCall('Girls Run',
      formation:Formations.NormalLines,
      from:'Lines',difficulty: 2,notForSequencer: true,
      paths:[
          DodgeRight.changeBeats(4),

          RunLeft.changeBeats(4),

          DodgeRight.changeBeats(4),

          RunLeft.changeBeats(4)
      ]),

    AnimatedCall('Girls Run',
      formation:Formations.OceanWavesRHBGBG,
      from:'Right-Hand Waves',difficulty: 1,notForSequencer: true,
      paths:[
          DodgeRight.changeBeats(4),

          RunRight.changeBeats(4),

          DodgeRight.changeBeats(4),

          RunRight.changeBeats(4)
      ]),

    AnimatedCall('Girls Run',
      formation:Formations.OceanWavesLHBGGB,
      from:'Left-Hand Waves',difficulty: 1,notForSequencer: true,
      paths:[
          DodgeLeft.changeBeats(4),

          RunLeft.changeBeats(4),

          RunLeft.changeBeats(4),

          DodgeLeft.changeBeats(4)
      ]),

    AnimatedCall('Girls Run',
      formation:Formations.ColumnRHGBGB,
      from:'Right-Hand Columns',difficulty: 1,notForSequencer: true,
      paths:[
          RunRight.changeBeats(4),

          DodgeRight.changeBeats(4),

          RunRight.changeBeats(4).scale(0.6,1.0),

          DodgeRight.changeBeats(4)
      ]),

    AnimatedCall('Girls Run',
      formation:Formations.ColumnLHGBGB,
      from:'Left-Hand Columns',difficulty: 1,notForSequencer: true,
      paths:[
          DodgeLeft.changeBeats(4),

          RunLeft.changeBeats(4).scale(0.6,1.0),

          DodgeLeft.changeBeats(4),

          RunLeft.changeBeats(4)
      ]),

    AnimatedCall('Girls Run',
      formation:Formations.CompletedDoublePassThru,
      from:'Completed Double Pass Thru',difficulty: 2,notForSequencer: true,
      paths:[
          RunLeft.changeBeats(4),

          DodgeRight.changeBeats(4),

          RunLeft.changeBeats(4),

          DodgeRight.changeBeats(4)
      ]),

    AnimatedCall('Girls Run',
      formation:Formations.TmBoneDLDL,
      from:'T-Bones',difficulty: 3,notForSequencer: true,
      paths:[
          RunLeft,

          Forward_2.changeBeats(3),

          RunLeft,

          Forward_2.changeBeats(3)
      ]),

    AnimatedCall('Centers Run',
      formation:Formations.TwomFacedLineRH,
      from:'Right-Hand Two-Faced Line',notForSequencer: true,
      paths:[
          DodgeRight,

          RunLeft
      ]),

    AnimatedCall('Centers Run',
      formation:Formations.WaveRH,
      from:'Right-Hand Wave',notForSequencer: true,
      paths:[
          DodgeRight,

          RunRight
      ]),

    AnimatedCall('Centers Run',
      formation:Formations.WaveLH,
      from:'Left-Hand Wave',notForSequencer: true,
      paths:[
          DodgeLeft,

          RunLeft
      ]),

    AnimatedCall('Centers Run',
      formation:Formations.NormalLines,
      from:'Lines',difficulty: 2,notForSequencer: true,
      paths:[
          DodgeRight.changeBeats(4),

          RunLeft.changeBeats(4),

          RunRight.changeBeats(4),

          DodgeLeft.changeBeats(4)
      ]),

    AnimatedCall('Centers Run',
      formation:Formations.LinesFacingOut,
      from:'Lines Facing Out',difficulty: 2,notForSequencer: true,
      paths:[
          DodgeLeft.changeBeats(4),

          RunRight.changeBeats(4),

          RunLeft.changeBeats(4),

          DodgeRight.changeBeats(4)
      ]),

    AnimatedCall('Centers Run',
      formation:Formations.OceanWavesRHBGBG,
      from:'Right-Hand Waves',difficulty: 1,notForSequencer: true,
      paths:[
          DodgeRight.changeBeats(4),

          RunRight.changeBeats(4),

          RunRight.changeBeats(4),

          DodgeRight.changeBeats(4)
      ]),

    AnimatedCall('Centers Run',
      formation:Formations.OceanWavesLHBGBG,
      from:'Left-Hand Waves',difficulty: 1,notForSequencer: true,
      paths:[
          DodgeLeft.changeBeats(4),

          RunLeft.changeBeats(4),

          RunLeft.changeBeats(4),

          DodgeLeft.changeBeats(4)
      ]),

    AnimatedCall('Centers Run',
      formation:Formations.TwomFacedLinesRH,
      from:'Right-Hand Two-Faced Lines',difficulty: 2,notForSequencer: true,
      paths:[
          DodgeRight.changeBeats(4),

          RunLeft.changeBeats(4),

          RunLeft.changeBeats(4),

          DodgeRight.changeBeats(4)
      ]),

    AnimatedCall('Centers Run',
      formation:Formations.TwomFacedLinesLH,
      from:'Left-Hand Two-Faced Lines',difficulty: 2,notForSequencer: true,
      paths:[
          DodgeLeft.changeBeats(4),

          RunRight.changeBeats(4),

          RunRight.changeBeats(4),

          DodgeLeft.changeBeats(4)
      ]),

    AnimatedCall('Centers Run',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:3,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:90),
  ]),
      from:'T-Bones',difficulty: 3,notForSequencer: true,
      paths:[
          Forward_2.changehands(1),

          RunRight,

          RunLeft,

          Forward_2.changehands(2)
      ]),

    AnimatedCall('Ends Run',
      formation:Formations.TwomFacedLineRH,
      from:'Right-Hand Two-Faced Line',notForSequencer: true,
      paths:[
          RunRight,

          DodgeLeft
      ]),

    AnimatedCall('Ends Run',
      formation:Formations.WaveRH,
      from:'Right-Hand Wave',notForSequencer: true,
      paths:[
          RunRight,

          DodgeRight
      ]),

    AnimatedCall('Ends Run',
      formation:Formations.WaveLH,
      from:'Left-Hand Wave',notForSequencer: true,
      paths:[
          RunLeft,

          DodgeLeft
      ]),

    AnimatedCall('Ends Run',
      formation:Formations.NormalLines,
      from:'Lines',difficulty: 2,notForSequencer: true,
      paths:[
          RunRight.changeBeats(4),

          DodgeLeft.changeBeats(4),

          DodgeRight.changeBeats(4),

          RunLeft.changeBeats(4)
      ]),

    AnimatedCall('Ends Run',
      formation:Formations.LinesFacingOut,
      from:'Lines Facing Out',difficulty: 2,notForSequencer: true,
      paths:[
          RunLeft.changeBeats(4),

          DodgeRight.changeBeats(4),

          DodgeLeft.changeBeats(4),

          RunRight.changeBeats(4)
      ]),

    AnimatedCall('Ends Run',
      formation:Formations.OceanWavesRHBGGB,
      from:'Right-Hand Waves',difficulty: 1,notForSequencer: true,
      paths:[
          RunRight.changeBeats(4),

          DodgeRight.changeBeats(4),

          DodgeRight.changeBeats(4),

          RunRight.changeBeats(4)
      ]),

    AnimatedCall('Ends Run',
      formation:Formations.OceanWavesLHBGGB,
      from:'Left-Hand Waves',difficulty: 1,notForSequencer: true,
      paths:[
          RunLeft.changeBeats(4),

          DodgeLeft.changeBeats(4),

          DodgeLeft.changeBeats(4),

          RunLeft.changeBeats(4)
      ]),

    AnimatedCall('Ends Run',
      formation:Formations.TwomFacedLinesRH,
      from:'Right-Hand Two-Faced Lines',difficulty: 2,notForSequencer: true,
      paths:[
          RunRight.changeBeats(4),

          DodgeLeft.changeBeats(4),

          DodgeLeft.changeBeats(4),

          RunRight.changeBeats(4)
      ]),

    AnimatedCall('Ends Run',
      formation:Formations.TwomFacedLinesLH,
      from:'Left-Hand Two-Faced Lines',difficulty: 2,notForSequencer: true,
      paths:[
          RunLeft.changeBeats(4),

          DodgeRight.changeBeats(4),

          DodgeRight.changeBeats(4),

          RunLeft.changeBeats(4)
      ]),

    AnimatedCall('Centers Cross Run',
      formation:Formations.TwomFacedLineRH,
      from:'Right-Hand Two-Faced Line',notForSequencer: true,
      paths:[
          DodgeRight.changeBeats(6),

          RunRight.changeBeats(6).scale(1.5,2.0)
      ]),

    AnimatedCall('Centers Cross Run',
      formation:Formations.TwomFacedLineLH,
      from:'Left-Hand Two-Faced Line',notForSequencer: true,
      paths:[
          RunLeft.changeBeats(6).scale(1.5,2.0),

          DodgeLeft.changeBeats(6)
      ]),

    AnimatedCall('Centers Cross Run',
      formation:Formations.WaveRH,
      from:'Right-Hand Wave',notForSequencer: true,
      paths:[
          DodgeRight.changeBeats(6),

          RunLeft.changeBeats(6).scale(1.5,2.0)
      ]),

    AnimatedCall('Centers Cross Run',
      formation:Formations.WaveLH,
      from:'Left-Hand Wave',notForSequencer: true,
      paths:[
          DodgeLeft.changeBeats(6),

          RunRight.changeBeats(6).scale(1.5,2.0)
      ]),

    AnimatedCall('Centers Cross Run',
      formation:Formations.LinesFacingOut,
      from:'Lines Facing Out',difficulty: 2,notForSequencer: true,
      paths:[
          DodgeLeft.changeBeats(6),

          RunLeft.changeBeats(6).scale(1.5,2.0),

          DodgeRight.changeBeats(2).scale(1.0,0.5) +
          RunRight.changeBeats(4).scale(1.0,1.5),

          DodgeRight.changeBeats(6)
      ]),

    AnimatedCall('Centers Cross Run',
      formation:Formations.OceanWavesRHBGGB,
      from:'Right-Hand Waves',difficulty: 1,notForSequencer: true,
      paths:[
          DodgeRight.changeBeats(6),

          RunLeft.changeBeats(6).scale(1.0,2.0),

          RunLeft.changeBeats(6).scale(1.0,2.0),

          DodgeRight.changeBeats(6)
      ]),

    AnimatedCall('Centers Cross Run',
      formation:Formations.OceanWavesLHGBBG,
      from:'Left-Hand Waves',difficulty: 1,notForSequencer: true,
      paths:[
          DodgeLeft.changeBeats(6),

          RunRight.changeBeats(6).scale(1.0,2.0),

          RunRight.changeBeats(6).scale(1.0,2.0),

          DodgeLeft.changeBeats(6)
      ]),

    AnimatedCall('Centers Cross Run',
      formation:Formations.TwomFacedLinesRH,
      from:'Right-Hand Two-Faced Lines',difficulty: 2,notForSequencer: true,
      paths:[
          DodgeRight.changeBeats(6),

          RunRight.changeBeats(6).scale(1.0,2.0),

          RunRight.changeBeats(6).scale(1.0,2.0),

          DodgeRight.changeBeats(6)
      ]),

    AnimatedCall('Centers Cross Run',
      formation:Formations.TwomFacedLinesLH,
      from:'Left-Hand Two-Faced Lines',difficulty: 2,notForSequencer: true,
      paths:[
          DodgeLeft.changeBeats(6),

          RunLeft.changeBeats(6).scale(1.0,2.0),

          RunLeft.changeBeats(6).scale(1.0,2.0),

          DodgeLeft.changeBeats(6)
      ]),

    AnimatedCall('Ends Cross Run',
      formation:Formations.TwomFacedLineRH,
      from:'Right-Hand Two-Faced Line',notForSequencer: true,
      paths:[
          RunRight.changeBeats(6).scale(1.5,2.0),

          DodgeLeft.changeBeats(6)
      ]),

    AnimatedCall('Ends Cross Run',
      formation:Formations.TwomFacedLineLH,
      from:'Left-Hand Two-Faced Line',notForSequencer: true,
      paths:[
          DodgeRight.changeBeats(6),

          RunLeft.changeBeats(6).scale(1.5,2.0)
      ]),

    AnimatedCall('Ends Cross Run',
      formation:Formations.WaveRH,
      from:'Right-Hand Wave',notForSequencer: true,
      paths:[
          RunRight.changeBeats(6).scale(1.5,2.0),

          DodgeRight.changeBeats(6)
      ]),

    AnimatedCall('Ends Cross Run',
      formation:Formations.WaveLH,
      from:'Left-Hand Wave',
      paths:[
          RunLeft.changeBeats(6).scale(1.5,2.0),

          DodgeLeft.changeBeats(6)
      ]),

    AnimatedCall('Ends Cross Run',
      formation:Formations.LinesFacingOut,
      from:'Lines Facing Out',difficulty: 2,notForSequencer: true,
      paths:[
          RunLeft.changeBeats(6).scale(1.0,2.0),

          DodgeRight.changeBeats(6),

          DodgeLeft.changeBeats(6),

          RunRight.changeBeats(6).scale(2.0,2.0)
      ]),

    AnimatedCall('Ends Cross Run',
      formation:Formations.OceanWavesRHBGGB,
      from:'Right-Hand Waves',difficulty: 2,notForSequencer: true,
      paths:[
          RunRight.changeBeats(6).scale(1.0,2.0),

          DodgeRight.changeBeats(6),

          DodgeRight.changeBeats(6),

          RunRight.changeBeats(6).scale(1.0,2.0)
      ]),

    AnimatedCall('Ends Cross Run',
      formation:Formations.OceanWavesLHBGGB,
      from:'Left-Hand Waves',difficulty: 2,notForSequencer: true,
      paths:[
          RunLeft.changeBeats(6).scale(1.0,2.0),

          DodgeLeft.changeBeats(6),

          DodgeLeft.changeBeats(6),

          RunLeft.changeBeats(6).scale(1.0,2.0)
      ]),

    AnimatedCall('Ends Cross Run',
      formation:Formations.TwomFacedLinesRH,
      from:'Right-Hand Two-Faced Lines',difficulty: 2,notForSequencer: true,
      paths:[
          RunRight.changeBeats(6).scale(1.0,2.0),

          DodgeLeft.changeBeats(6),

          DodgeLeft.changeBeats(6),

          RunRight.changeBeats(6).scale(1.0,2.0)
      ]),

    AnimatedCall('Ends Cross Run',
      formation:Formations.TwomFacedLinesLH,
      from:'Left-Hand Two-Faced Lines',difficulty: 2,notForSequencer: true,
      paths:[
          RunLeft.changeBeats(6).scale(1.0,2.0),

          DodgeRight.changeBeats(6),

          DodgeRight.changeBeats(6),

          RunLeft.changeBeats(6).scale(1.0,2.0)
      ]),

    AnimatedCall('Ends Cross Run and Run',
      formation:Formations.OceanWavesRHBGGB,
      from:'Ocean Waves',
      paths:[
          RunRight.changeBeats(6).scale(1.0,2.0) +
          RunLeft.changeBeats(4),

          DodgeRight.changeBeats(6) +
          DodgeLeft.changeBeats(4),

          DodgeRight.changeBeats(6) +
          DodgeLeft.changeBeats(4),

          RunRight.changeBeats(6).scale(1.0,2.0) +
          RunLeft.changeBeats(4)
      ]),
  ];

