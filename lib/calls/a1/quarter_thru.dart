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

  final List<AnimatedCall> QuarterThru = [ 

    AnimatedCall('Quarter Thru',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:1,y:2,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:2,angle:90),
  ]),
      from:'Right-Hand Box',parts:'1.5',
      paths:[
          HingeRight +
          SwingLeft,

          HingeRight
      ]),

    AnimatedCall('Quarter Thru',
      formation:Formations.BoxRHClose,
      from:'Right-Hand Box Close',parts:'1.5',noDisplay: true,
      paths:[
          HingeRight.scale(0.5,1.0) +
          SwingLeft.scale(0.5,0.5),

          HingeRight.scale(0.5,1.0)
      ]),

    AnimatedCall('Quarter Thru',
      formation:Formations.OceanWavesRHBGGB,
      from:'Right-Hand Waves',parts:'1.5',
      paths:[
          HingeRight +
          SwingLeft,

          HingeRight,

          HingeRight +
          SwingLeft,

          HingeRight
      ]),

    AnimatedCall('Quarter Thru',
      formation:Formations.ColumnRHGBGB,
      from:'Columns',parts:'1.5',
      paths:[
          HingeRight.scale(0.5,1.0),

          HingeRight.scale(0.5,1.0) +
          SwingLeft.scale(0.5,0.5),

          HingeRight.scale(0.5,1.0),

          HingeRight.scale(0.5,1.0) +
          SwingLeft.scale(0.5,0.5)
      ]),

    AnimatedCall('Quarter Thru',
      formation:Formations.AlamoWave,
      from:'Alamo Ring',parts:'1.6',
      paths:[
          SxtnthLeft.changehands(2) +
          HingeRight.skew(0.45,0.0) +
          SwingLeft,

          SxtnthRight.changehands(2) +
          HingeRight.skew(-0.45,0.0),

          SxtnthLeft.changehands(2) +
          HingeRight.skew(0.45,0.0) +
          SwingLeft,

          SxtnthRight.changehands(2) +
          HingeRight.skew(-0.45,0.0)
      ]),

    AnimatedCall('Quarter Thru',
      formation:Formations.DiamondsFacingGirlPoints,
      from:'Facing Diamonds',parts:'1.5',
      paths:[
          HingeRight +
          SwingLeft,

          Stand.changeBeats(1.5) +
          SwingLeft,

          HingeRight +
          SwingLeft,

          Stand.changeBeats(1.5) +
          SwingLeft
      ]),

    AnimatedCall('Quarter Thru',
      formation:Formations.DiamondsFacingPTP,
      from:'Facing Point-to-Point Diamonds',parts:'1.5',
      paths:[
          HingeRight.scale(0.67,1.0) +
          SwingLeft.scale(0.67,0.67),

          Stand.changeBeats(1.5) +
          SwingLeft.scale(0.67,0.67),

          HingeRight.scale(0.67,1.0) +
          SwingLeft.scale(0.67,0.67),

          Stand.changeBeats(1.5) +
          SwingLeft.scale(0.67,0.67)
      ]),

    AnimatedCall('Centers Quarter Thru',
      formation:Formations.OceanWavesLHBGGB,
      from:'Left-Hand Waves',parts:'1.5',
      paths:[
          Path(),

          HingeRight +
          SwingLeft,

          HingeRight,

          Path()
      ]),

    AnimatedCall('Left Quarter Thru',
      formation:Formations.BoxLH,
      from:'Left-Hand Box',parts:'1.5',
      paths:[
          HingeLeft,

          HingeLeft +
          SwingRight
      ]),

    AnimatedCall('Left Quarter Thru',
      formation:Formations.BoxLHClose,
      from:'Left-Hand Box Close',parts:'1.5',noDisplay: true,
      paths:[
          HingeLeft.scale(0.5,1.0),

          HingeLeft.scale(0.5,1.0) +
          SwingRight.scale(0.5,0.5)
      ]),

    AnimatedCall('Left Quarter Thru',
      formation:Formations.OceanWavesLHBGGB,
      from:'Left-Hand Waves',parts:'1.5',
      paths:[
          HingeLeft,

          HingeLeft +
          SwingRight,

          HingeLeft,

          HingeLeft +
          SwingRight
      ]),

    AnimatedCall('Left Quarter Thru',
      formation:Formations.ColumnLHGBGB,
      from:'Left-Hand Columns',parts:'1.5',
      paths:[
          HingeLeft.scale(0.5,1.0) +
          SwingRight.scale(0.5,0.5),

          HingeLeft.scale(0.5,1.0),

          HingeLeft.scale(0.5,1.0) +
          SwingRight.scale(0.5,0.5),

          HingeLeft.scale(0.5,1.0)
      ]),

    AnimatedCall('Left Quarter Thru',
      formation:Formations.AlamoWave,
      from:'Alamo Ring',parts:'1.6',
      paths:[
          SxtnthRight.changehands(1) +
          HingeLeft.skew(0.45,0.0) +
          SwingRight,

          SxtnthLeft.changehands(1) +
          HingeLeft.skew(-0.45,0.0),

          SxtnthRight.changehands(1) +
          HingeLeft.skew(0.45,0.0) +
          SwingRight,

          SxtnthLeft.changehands(1) +
          HingeLeft.skew(-0.45,0.0)
      ]),

    AnimatedCall('Left Quarter Thru',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-2,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:-2,angle:270),
  ]),
      from:'Facing Diamonds',parts:'1.5',
      paths:[
          HingeLeft +
          SwingRight,

          Stand.changeBeats(1.5) +
          SwingRight,

          HingeLeft +
          SwingRight,

          Stand.changeBeats(1.5) +
          SwingRight
      ]),

    AnimatedCall('Left Quarter Thru',
      formation:Formations.DiamondsFacingLHPTP,
      from:'Facing Point-to-Point Diamonds',parts:'1.5',
      paths:[
          HingeLeft.scale(0.67,1.0) +
          SwingRight.scale(0.67,0.67),

          Stand.changeBeats(1.5) +
          SwingRight.scale(0.67,0.67),

          HingeLeft.scale(0.67,1.0) +
          SwingRight.scale(0.67,0.67),

          Stand.changeBeats(1.5) +
          SwingRight.scale(0.67,0.67)
      ]),

    AnimatedCall('As Couples Quarter Thru',
      formation:Formations.TwomFacedLinesRH,
      group:' ',parts:'3',
      paths:[
          HingeRight.changeBeats(3).scale(1.5,3.0) +
          SwingLeft.changeBeats(4).scale(0.5,0.5),

          HingeRight.changeBeats(3).changehands(3).scale(0.5,1.0) +
          SwingLeft.changeBeats(4).scale(1.5,1.5),

          HingeRight.changeBeats(3).changehands(3).scale(0.5,1.0),

          HingeRight.changeBeats(3).scale(1.5,3.0)
      ]),
    a2.All4All8.where((tam) =>
      tam.title == 'All 8 Quarter Thru').first.xref(title: 'All 8 Quarter Thru').xref(group: ' '),

    AnimatedCall('3/4 Thru',
      formation:Formations.BoxRH,
      from:'Right-Hand Box',parts:'4.5',
      paths:[
          CastRight,

          CastRight +
          SwingLeft
      ]),

    AnimatedCall('3/4 Thru',
      formation:Formations.OceanWavesRHBGGB,
      from:'Ocean Waves',parts:'4.5',
      paths:[
          CastRight,

          CastRight +
          SwingLeft,

          CastRight,

          CastRight +
          SwingLeft
      ]),

    AnimatedCall('3/4 Thru',
      formation:Formations.ColumnRHGBGB,
      from:'Columns',parts:'4.5',
      paths:[
          CastRight.scale(0.5,1.0) +
          SwingLeft.scale(0.5,0.5),

          CastRight.scale(0.5,1.0),

          CastRight.scale(0.5,1.0) +
          SwingLeft.scale(0.5,0.5),

          CastRight.scale(0.5,1.0)
      ]),

    AnimatedCall('3/4 Thru',
      formation:Formations.AlamoWave,
      from:'Alamo Ring',parts:'4.6',
      paths:[
          SxtnthLeft.changehands(2) +
          HingeRight.skew(0.45,0.0) +
          SwingRight,

          SxtnthRight.changehands(2) +
          HingeRight.skew(-0.45,0.0) +
          SwingRight +
          SwingLeft,

          SxtnthLeft.changehands(2) +
          HingeRight.skew(0.45,0.0) +
          SwingRight,

          SxtnthRight.changehands(2) +
          HingeRight.skew(-0.45,0.0) +
          SwingRight +
          SwingLeft
      ]),

    AnimatedCall('3/4 Thru',
      formation:Formations.DiamondsFacingGirlPoints,
      from:'Facing Diamonds',parts:'4.5',
      paths:[
          CastRight +
          SwingLeft,

          Stand.changeBeats(4.5) +
          SwingLeft,

          CastRight +
          SwingLeft,

          Stand.changeBeats(4.5) +
          SwingLeft
      ]),

    AnimatedCall('3/4 Thru',
      formation:Formations.DiamondsFacingPTP,
      from:'Facing Point-to-Point Diamonds',parts:'4.5',
      paths:[
          HingeRight.scale(0.67,1.0) +
          SwingRight.scale(0.67,0.67) +
          SwingLeft.scale(0.67,0.67),

          Stand.changeBeats(4.5) +
          SwingLeft.scale(0.67,0.67),

          HingeRight.scale(0.67,1.0) +
          SwingRight.scale(0.67,0.67) +
          SwingLeft.scale(0.67,0.67),

          Stand.changeBeats(4.5) +
          SwingLeft.scale(0.67,0.67)
      ]),

    AnimatedCall('Centers 3/4 Thru',
      formation:Formations.OceanWavesLHBGGB,
      from:'Left-Hand Waves',parts:'4.5',
      paths:[
          Path(),

          CastRight,

          CastRight +
          SwingLeft,

          Path()
      ]),

    AnimatedCall('Left 3/4 Thru',
      formation:Formations.BoxLH,
      from:'Left-Hand Box',parts:'4.5',
      paths:[
          CastLeft +
          SwingRight,

          CastLeft
      ]),

    AnimatedCall('Left 3/4 Thru',
      formation:Formations.OceanWavesLHBGGB,
      from:'Left-Hand Waves',parts:'4.5',
      paths:[
          CastLeft +
          SwingRight,

          CastLeft,

          CastLeft +
          SwingRight,

          CastLeft
      ]),

    AnimatedCall('Left 3/4 Thru',
      formation:Formations.ColumnLHGBGB,
      from:'Left-Hand Columns',parts:'1.5',
      paths:[
          CastLeft.scale(0.5,1.0),

          CastLeft.scale(0.5,1.0) +
          SwingRight.scale(0.5,0.5),

          CastLeft.scale(0.5,1.0),

          CastLeft.scale(0.5,1.0) +
          SwingRight.scale(0.5,0.5)
      ]),

    AnimatedCall('Left 3/4 Thru',
      formation:Formations.AlamoWave,
      from:'Alamo Ring',parts:'1.6',
      paths:[
          SxtnthRight.changehands(1) +
          HingeLeft.skew(0.45,0.0) +
          SwingLeft,

          SxtnthLeft.changehands(1) +
          HingeLeft.skew(-0.45,0.0) +
          SwingLeft +
          SwingRight,

          SxtnthRight.changehands(1) +
          HingeLeft.skew(0.45,0.0) +
          SwingLeft,

          SxtnthLeft.changehands(1) +
          HingeLeft.skew(-0.45,0.0) +
          SwingLeft +
          SwingRight
      ]),

    AnimatedCall('Left 3/4 Thru',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-2,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:-2,angle:270),
  ]),
      from:'Facing Diamonds',parts:'4.5',
      paths:[
          CastLeft +
          SwingRight,

          Stand.changeBeats(4.5) +
          SwingRight,

          CastLeft +
          SwingRight,

          Stand.changeBeats(4.5) +
          SwingRight
      ]),

    AnimatedCall('Left 3/4 Thru',
      formation:Formations.DiamondsFacingLHPTP,
      from:'Facing Point-to-Point Diamonds',parts:'4.5',
      paths:[
          HingeLeft.scale(0.67,1.0) +
          SwingLeft.scale(0.67,0.67) +
          SwingRight.scale(0.67,0.67),

          Stand.changeBeats(4.5) +
          SwingRight.scale(0.67,0.67),

          HingeLeft.scale(0.67,1.0) +
          SwingLeft.scale(0.67,0.67) +
          SwingRight.scale(0.67,0.67),

          Stand.changeBeats(4.5) +
          SwingRight.scale(0.67,0.67)
      ]),

    AnimatedCall('As Couples 3/4 Thru',
      formation:Formations.TwomFacedLinesRH,
      from:'Two-Faced Lines',group:' ',parts:'9',
      paths:[
          CastRight.changeBeats(9).scale(1.5,3.0),

          CastRight.changeBeats(9).changehands(3).scale(0.5,1.0),

          CastRight.changeBeats(9).changehands(3).scale(0.5,1.0) +
          SwingLeft.changeBeats(4).scale(1.5,1.5),

          CastRight.changeBeats(9).scale(1.5,3.0) +
          SwingLeft.changeBeats(4).scale(0.5,0.5)
      ]),
    a2.All4All8.where((tam) =>
      tam.title == 'All 8 3/4 Thru').first.xref(title: 'All 8 3/4 Thru').xref(group: ' '),
  ];

