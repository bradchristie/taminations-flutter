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

  final List<AnimatedCall> PeelToADiamond = [ 

    AnimatedCall('Peel to a Diamond',
      formation:Formations.BoxRH,
      from:'Right-Hand Box',
      paths:[
          Forward_2 +
          HingeRight,

          RunLeft.changeBeats(4).skew(-2.0,0.0)
      ]),

    AnimatedCall('Peel to a Diamond',
      formation:Formations.BoxLH,
      from:'Left-Hand Box',
      paths:[
          RunRight.changeBeats(4).skew(-2.0,0.0),

          Forward_2 +
          HingeLeft
      ]),

    AnimatedCall('Peel to a Diamond',
      formation:Formations.ColumnRHGBGB,
      from:'Right-Hand Columns',
      paths:[
          RunLeft.skew(-1.0,0.0),

          Forward +
          HingeRight,

          RunLeft.skew(-1.0,0.0),

          Forward +
          HingeRight
      ]),

    AnimatedCall('Peel to a Diamond',
      formation:Formations.ColumnLHGBGB,
      from:'Left-Hand Columns',
      paths:[
          Forward +
          HingeLeft,

          RunRight.skew(-1.0,0.0),

          Forward +
          HingeLeft,

          RunRight.skew(-1.0,0.0)
      ]),

    AnimatedCall('Peel to a Diamond',
      formation:Formations.OceanWavesRHBGBG,
      from:'Right-Hand Waves',
      paths:[
          ExtendRight.changeBeats(2).scale(2.0,0.5) +
          HingeRight.changehands(6).scale(1.0,0.5),

          FlipLeft.changeBeats(3).skew(-2.0,-1.5),

          ExtendRight.changeBeats(2).scale(2.0,0.5) +
          HingeRight.changehands(6).scale(1.0,0.5),

          FlipLeft.changeBeats(3).skew(-2.0,-1.5)
      ]),

    AnimatedCall('Peel to a Diamond',
      formation:Formations.OceanWavesLHBGBG,
      from:'Left-Hand Waves',
      paths:[
          FlipRight.changeBeats(3).skew(-2.0,1.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          HingeLeft.changehands(5).scale(1.0,0.5),

          FlipRight.changeBeats(3).skew(-2.0,1.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          HingeLeft.changehands(5).scale(1.0,0.5)
      ]),

    AnimatedCall('All 8 Peel to a Diamond',
      formation:Formations.StaticMiniWavesRH,
      group:' ',
      paths:[
          Forward_3 +
          HingeRight,

          RunLeft.changeBeats(4.5).skew(-3.0,0.0),

          Forward_3 +
          HingeRight,

          RunLeft.changeBeats(4.5).skew(-3.0,0.0)
      ]),

    AnimatedCall('As Couples Peel to a Diamond',
      formation:Formations.TwomFacedLinesRH,
      group:' ',
      paths:[
          ExtendRight.changeBeats(2).scale(2.0,1.5) +
          HingeRight.scale(3.0,1.5),

          ExtendRight.changeBeats(2).scale(2.0,0.5) +
          HingeRight.changehands(3).scale(1.0,0.5),

          BelleWheel.skew(-2.0,1.0),

          BeauWheel.skew(-2.0,1.0)
      ]),

    AnimatedCall('Concentric Peel to a Diamond',
      formation:Formations.TwomFacedLinesRH,
      group:'  ',
      paths:[
          Forward_3 +
          LeadRight.changeBeats(3).scale(2.0,3.0),

          Forward_2 +
          HingeRight,

          RunLeft.changeBeats(3.5).scale(1.0,0.5).skew(-2.0,0.0),

          RunLeft.changeBeats(6).scale(1.0,0.5).skew(-2.0,0.0)
      ]),

    AnimatedCall('Tandem Peel to a Diamond',
      formation:Formations.ColumnRHGBGB,
      group:'  ',
      paths:[
          RunLeft.changeBeats(3).skew(-2.0,0.0) +
          Forward_2,

          Forward_2 +
          RunLeft.changeBeats(3).skew(-2.0,0.0),

          Forward_2 +
          CounterRotateRight_0_m2.changehands(2),

          Forward_2 +
          CounterRotateRight_2_0.changehands(2)
      ]),

    AnimatedCall('Trail to a Diamond',
      formation:Formations.BoxRH,
      from:'Right-Hand Box',
      paths:[
          Forward_2 +
          HingeRight,

          RunRight.scale(1.0,2.0).skew(-2.0,0.0)
      ]),

    AnimatedCall('Trail to a Diamond',
      formation:Formations.BoxLHGirlsLead,
      from:'Left-Hand Box',
      paths:[
          Forward_2 +
          HingeLeft,

          RunLeft.scale(1.0,2.0).skew(-2.0,0.0)
      ]),

    AnimatedCall('Trail to a Diamond',
      formation:Formations.ColumnRHGBGB,
      from:'Right-Hand Columns',
      paths:[
          RunRight.scale(1.0,2.0).skew(-1.0,0.0),

          Forward +
          HingeRight,

          RunRight.scale(1.0,2.0).skew(-1.0,0.0),

          Forward +
          HingeRight
      ]),

    AnimatedCall('Trail to a Diamond',
      formation:Formations.ColumnLHGBGB,
      from:'Left-Hand Columns',
      paths:[
          Forward +
          HingeLeft,

          RunLeft.scale(1.0,2.0).skew(-1.0,0.0),

          Forward +
          HingeLeft,

          RunLeft.scale(1.0,2.0).skew(-1.0,0.0)
      ]),

    AnimatedCall('Trail to a Diamond',
      formation:Formations.OceanWavesRHBGBG,
      from:'Right-Hand Waves',
      paths:[
          ExtendRight.changeBeats(2).scale(2.0,0.5) +
          HingeRight.changehands(6).scale(1.0,0.5),

          RunRight.scale(1.0,1.25).skew(-2.0,0.0),

          ExtendRight.changeBeats(2).scale(2.0,0.5) +
          HingeRight.changehands(6).scale(1.0,0.5),

          RunRight.scale(1.0,1.25).skew(-2.0,0.0)
      ]),

    AnimatedCall('Trail to a Diamond',
      formation:Formations.OceanWavesLHBGBG,
      from:'Left-Hand Waves',
      paths:[
          RunLeft.scale(1.0,1.25).skew(-2.0,0.0),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          HingeLeft.changehands(5).scale(1.0,0.5),

          RunLeft.scale(1.0,1.25).skew(-2.0,0.0),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          HingeLeft.changehands(5).scale(1.0,0.5)
      ]),

    AnimatedCall('All 8 Trail to a Diamond',
      formation:Formations.StaticMiniWavesRH,
      group:' ',
      paths:[
          Forward_3 +
          HingeRight,

          RunRight.changeBeats(4.5).scale(1.0,2.0).skew(-3.0,0.0),

          Forward_3 +
          HingeRight,

          RunRight.changeBeats(4.5).scale(1.0,2.0).skew(-3.0,0.0)
      ]),

    AnimatedCall('As Couples Trail to a Diamond',
      formation:Formations.TwomFacedLinesRH,
      group:' ',
      paths:[
          Forward_2.changehands(2) +
          LeadRight.changeBeats(4).changehands(2).scale(3.0,3.0),

          Forward_2.changehands(1) +
          HingeRight.changeBeats(4).changehands(3),

          LeadRight.changeBeats(2).changehands(1) +
          LeadRight.changeBeats(4).changehands(1).scale(2.0,3.0),

          LeadRight.changeBeats(2).changehands(2).scale(3.0,3.0) +
          LeadRight.changeBeats(4).changehands(2).scale(4.0,5.0)
      ]),

    AnimatedCall('Concentric Trail to a Diamond',
      formation:Formations.TwomFacedLinesRH,
      group:'  ',
      paths:[
          Forward_3 +
          LeadRight.changeBeats(3).scale(2.0,3.0),

          Forward_2 +
          HingeRight,

          RunRight.changeBeats(3.5).scale(1.0,1.5).skew(-2.0,0.0),

          RunRight.changeBeats(6).scale(2.0,3.5).skew(-2.0,0.0)
      ]),

    AnimatedCall('Tandem Trail to a Diamond',
      formation:Formations.ColumnRHGBGB,
      group:'  ',
      paths:[
          RunRight.changeBeats(4).scale(1.0,2.0).skew(-2.0,0.0) +
          Forward_2,

          Forward_2 +
          RunRight.changeBeats(4).scale(1.0,2.0).skew(-2.0,0.0),

          Forward_2 +
          CounterRotateRight_0_m2.changehands(2),

          Forward_2 +
          CounterRotateRight_2_0.changehands(2)
      ]),
  ];

