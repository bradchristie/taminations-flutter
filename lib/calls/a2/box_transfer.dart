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

  final List<AnimatedCall> BoxTransfer = [ 

    AnimatedCall('Box Transfer',
      formation:Formations.BoxRH,
      from:'Right-Hand Box',
      paths:[
          ExtendRight.changeBeats(1.5).scale(2.0,0.25) +
          CastRight.scale(0.75,0.75) +
          ExtendLeft.changeBeats(1.5).scale(2.0,0.25),

          RunRight.changeBeats(4).scale(0.5,1.75) +
          Forward_2 +
          LeadRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Box Transfer',
      formation:Formations.BoxLHGirlsLead,
      from:'Left-Hand Box',
      paths:[
          ExtendLeft.changeBeats(1.5).scale(2.0,0.25) +
          CastLeft.scale(0.75,0.75) +
          ExtendRight.changeBeats(1.5).scale(2.0,0.25),

          RunLeft.changeBeats(4).scale(0.5,1.75) +
          Forward_2 +
          LeadLeft.scale(1.0,0.5)
      ]),

    AnimatedCall('All 8 Box Transfer',
      formation:Formations.StaticMiniWavesRH,
      from:'Mini Waves',group:' ',
      paths:[
          Forward_3 +
          CastRight +
          Forward_3,

          LeadRight.changeBeats(2.5).scale(1.0,2.0) +
          LeadRight.changeBeats(5.5).scale(3.0,3.0) +
          LeadRight.changeBeats(2.5).scale(2.0,1.0),

          Forward_3 +
          CastRight +
          Forward_3,

          LeadRight.changeBeats(2.5).scale(1.0,2.0) +
          LeadRight.changeBeats(5.5).scale(3.0,3.0) +
          LeadRight.changeBeats(2.5).scale(2.0,1.0)
      ]),

    AnimatedCall('As Couples Box Transfer',
      formation:Formations.TwomFacedLinesRH,
      from:'Two-Faced Lines',group:' ',
      paths:[
          ExtendRight.changeBeats(2).changehands(2).scale(2.0,1.5) +
          CastRight.scale(1.5,1.5) +
          ExtendLeft.changeBeats(2).changehands(2).scale(2.0,1.5),

          ExtendRight.changeBeats(2).changehands(1).scale(2.0,0.5) +
          CastRight.scale(0.5,0.5) +
          ExtendLeft.changeBeats(2).changehands(1).scale(2.0,0.5),

          LeadRight.changeBeats(2).changehands(1) +
          LeadRight.changeBeats(4).scale(3.0,3.0) +
          LeadRight.changeBeats(2).changehands(1),

          LeadRight.changeBeats(2).changehands(2).scale(2.0,3.0) +
          LeadRight.changeBeats(4).scale(4.0,4.0) +
          LeadRight.changeBeats(2).changehands(2).scale(3.0,2.0)
      ]),

    AnimatedCall('Split Transfer',
      formation:Formations.OceanWavesRHBGBG,
      from:'Right-Hand Waves',
      paths:[
          ExtendRight.changeBeats(1.5).scale(2.0,0.25) +
          CastRight.scale(0.75,0.75) +
          ExtendLeft.changeBeats(1.5).scale(1.0,0.25),

          RunRight.changeBeats(4).scale(0.5,1.25) +
          Forward_2 +
          LeadRight.scale(1.0,0.5),

          ExtendRight.changeBeats(1.5).scale(2.0,0.25) +
          CastRight.scale(0.75,0.75) +
          ExtendLeft.changeBeats(1.5).scale(1.0,0.25),

          RunRight.changeBeats(4).scale(0.5,1.25) +
          Forward_2 +
          LeadRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Split Transfer',
      formation:Formations.OceanWavesLHBGBG,
      from:'Left-Hand Waves',
      paths:[
          RunLeft.changeBeats(4).scale(0.5,1.25) +
          Forward_2 +
          LeadLeft.scale(1.0,0.5),

          ExtendLeft.changeBeats(1.5).scale(2.0,0.25) +
          CastLeft.scale(0.75,0.75) +
          ExtendRight.changeBeats(1.5).scale(1.0,0.25),

          RunLeft.changeBeats(4).scale(0.5,1.25) +
          Forward_2 +
          LeadLeft.scale(1.0,0.5),

          ExtendLeft.changeBeats(1.5).scale(2.0,0.25) +
          CastLeft.scale(0.75,0.75) +
          ExtendRight.changeBeats(1.5).scale(1.0,0.25)
      ]),

    AnimatedCall('Split Transfer',
      formation:Formations.ColumnRHGBGB,
      from:'Right-Hand Columns',
      paths:[
          RunRight.changeBeats(4).scale(0.5,1.75) +
          Forward +
          LeadRight.scale(1.0,0.5),

          ExtendRight.changeBeats(1.5).scale(1.0,0.25) +
          CastRight.scale(0.75,0.75) +
          ExtendLeft.changeBeats(2).scale(2.0,0.25),

          RunRight.changeBeats(4).scale(0.5,1.75) +
          Forward +
          LeadRight.scale(1.0,0.5),

          ExtendRight.changeBeats(1.5).scale(1.0,0.25) +
          CastRight.scale(0.75,0.75) +
          ExtendLeft.changeBeats(2).scale(2.0,0.25)
      ]),

    AnimatedCall('Split Transfer',
      formation:Formations.ColumnLHGBGB,
      from:'Left-Hand Columns',
      paths:[
          ExtendLeft.changeBeats(1.5).scale(1.0,0.25) +
          CastLeft.scale(0.75,0.75) +
          ExtendRight.changeBeats(2).scale(2.0,0.25),

          RunLeft.changeBeats(4).scale(0.5,1.75) +
          Forward +
          LeadLeft.scale(1.0,0.5),

          ExtendLeft.changeBeats(1.5).scale(1.0,0.25) +
          CastLeft.scale(0.75,0.75) +
          ExtendRight.changeBeats(2).scale(2.0,0.25),

          RunLeft.changeBeats(4).scale(0.5,1.75) +
          Forward +
          LeadLeft.scale(1.0,0.5)
      ]),
  ];

