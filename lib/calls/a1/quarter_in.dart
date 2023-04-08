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
import '../a2/all_4_all_8.dart' as a2;

  final List<AnimatedCall> QuarterIn = [

    AnimatedCall('Quarter In',
      formation:Formations.FacingCouplesCompact,
      from:'Facing Couples',
      paths:[
          QuarterRight.changeBeats(2).skew(0.5,0.5),

          QuarterLeft.changeBeats(2).skew(0.5,-0.5)
      ]),

    AnimatedCall('Quarter In',
      formation:Formations.TwomFacedLineRH,
      from:'Two-Faced Line',
      paths:[
          QuarterRight.changeBeats(2),

          QuarterLeft.changeBeats(2)
      ]),

    AnimatedCall('Quarter In',
      formation:Formations.DiamondRH,
      from:'Diamond',
      paths:[
          QuarterRight.changeBeats(2),

          QuarterRight.changeBeats(2)
      ]),

    AnimatedCall('Quarter In',
      formation:Formations.EightChainThru,
      from:'Eight Chain Thru',
      paths:[
          QuarterRight.changeBeats(2).skew(0.0,1.0),

          QuarterLeft.changeBeats(2).skew(0.0,-1.0),

          QuarterRight.changeBeats(2).skew(0.0,1.0),

          QuarterLeft.changeBeats(2).skew(0.0,-1.0)
      ]),

    AnimatedCall('Quarter In',
      formation:Formations.NormalLines,
      from:'Lines',
      paths:[
          QuarterRight.changeBeats(2).skew(1.0,0.0),

          QuarterLeft.changeBeats(2).skew(1.0,0.0),

          QuarterRight.changeBeats(2).skew(1.0,0.0),

          QuarterLeft.changeBeats(2).skew(1.0,0.0)
      ]),

    AnimatedCall('Quarter In',
      formation:Formations.LinesFacingOut,
      from:'Lines Facing Out',
      paths:[
          QuarterLeft.changeBeats(2).skew(-1.0,0.0),

          QuarterRight.changeBeats(2).skew(-1.0,0.0),

          QuarterLeft.changeBeats(2).skew(-1.0,0.0),

          QuarterRight.changeBeats(2).skew(-1.0,0.0)
      ]),

    AnimatedCall('Quarter In',
      formation:Formations.OceanWavesRHBGGB,
      from:'Right-Hand Waves',
      paths:[
          QuarterRight.changeBeats(2).skew(1.0,0.0),

          QuarterRight.changeBeats(2).skew(-1.0,0.0),

          QuarterRight.changeBeats(2).skew(1.0,0.0),

          QuarterRight.changeBeats(2).skew(-1.0,0.0)
      ]),

    AnimatedCall('Quarter In',
      formation:Formations.OceanWavesLHBGGB,
      from:'Left-Hand Waves',
      paths:[
          QuarterLeft.changeBeats(2).skew(-1.0,0.0),

          QuarterLeft.changeBeats(2).skew(1.0,0.0),

          QuarterLeft.changeBeats(2).skew(-1.0,0.0),

          QuarterLeft.changeBeats(2).skew(1.0,0.0)
      ]),

    AnimatedCall('Quarter In',
      formation:Formations.TmBoneLDDR,
      from:'T-Bones',
      paths:[
          QuarterRight.changeBeats(2),

          QuarterLeft.changeBeats(2),

          QuarterRight.changeBeats(2),

          QuarterLeft.changeBeats(2)
      ]),

    AnimatedCall('Quarter In',
      formation:Formations.DiamondsRHGirlPoints,
      from:'Diamonds',
      paths:[
          QuarterRight.changeBeats(2),

          QuarterRight.changeBeats(2),

          QuarterRight.changeBeats(2),

          QuarterRight.changeBeats(2)
      ]),

    AnimatedCall('Quarter In',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:0,y:5.25,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:3.75,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:2.25,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:.75,angle:180),
  ]),
      from:'Tidal Wave',
      paths:[
          QuarterRight.changeBeats(2),

          QuarterRight.changeBeats(2),

          QuarterRight.changeBeats(2),

          QuarterRight.changeBeats(2)
      ]),

    AnimatedCall('Heads Quarter In',
      formation:Formations.StaticSquare,
      group:' ',
      paths:[
          QuarterRight,

          QuarterLeft,

          Path(),

          Path()
      ]),

    AnimatedCall('Sides Quarter In',
      formation:Formations.StaticSquare,
      group:' ',
      paths:[
          Path(),

          Path(),

          QuarterRight,

          QuarterLeft
      ]),
    a2.All4All8.where((tam) =>
      tam.title == 'All 4 Couples Quarter In').first.xref(title: 'All 4 Couples Quarter In').xref(group: ' '),

    AnimatedCall('As Couples Quarter In',
      formation:Formations.NormalLines,
      from:'Lines',group:' ',
      paths:[
          HingeRight.changeBeats(3),

          BackHingeLeft.changeBeats(3),

          BackHingeRight.changeBeats(3),

          HingeLeft.changeBeats(3)
      ]),

    AnimatedCall('Quarter Out',
      formation:Formations.FacingCouplesCompact,
      from:'Facing Couples',
      paths:[
          QuarterLeft.changeBeats(2).skew(0.5,0.5),

          QuarterRight.changeBeats(2).skew(0.5,-0.5)
      ]),

    AnimatedCall('Quarter Out',
      formation:Formations.EightChainThru,
      from:'Eight Chain Thru',
      paths:[
          QuarterLeft.changeBeats(2).skew(0.0,1.0),

          QuarterRight.changeBeats(2).skew(0.0,-1.0),

          QuarterLeft.changeBeats(2).skew(0.0,1.0),

          QuarterRight.changeBeats(2).skew(0.0,-1.0)
      ]),

    AnimatedCall('Quarter Out',
      formation:Formations.NormalLines,
      from:'Lines',
      paths:[
          QuarterLeft.changeBeats(2).skew(1.0,0.0),

          QuarterRight.changeBeats(2).skew(1.0,0.0),

          QuarterLeft.changeBeats(2).skew(1.0,0.0),

          QuarterRight.changeBeats(2).skew(1.0,0.0)
      ]),

    AnimatedCall('Quarter Out',
      formation:Formations.LinesFacingOut,
      from:'Lines Facing Out',
      paths:[
          QuarterRight.changeBeats(2).skew(-1.0,0.0),

          QuarterLeft.changeBeats(2).skew(-1.0,0.0),

          QuarterRight.changeBeats(2).skew(-1.0,0.0),

          QuarterLeft.changeBeats(2).skew(-1.0,0.0)
      ]),

    AnimatedCall('Quarter Out',
      formation:Formations.OceanWavesRHBGGB,
      from:'Right-Hand Waves',
      paths:[
          QuarterLeft.changeBeats(2).skew(1.0,0.0),

          QuarterLeft.changeBeats(2).skew(-1.0,0.0),

          QuarterLeft.changeBeats(2).skew(1.0,0.0),

          QuarterLeft.changeBeats(2).skew(-1.0,0.0)
      ]),

    AnimatedCall('Quarter Out',
      formation:Formations.OceanWavesLHBGGB,
      from:'Left-Hand Waves',
      paths:[
          QuarterRight.changeBeats(2).skew(-1.0,0.0),

          QuarterRight.changeBeats(2).skew(1.0,0.0),

          QuarterRight.changeBeats(2).skew(-1.0,0.0),

          QuarterRight.changeBeats(2).skew(1.0,0.0)
      ]),

    AnimatedCall('Quarter Out',
      formation:Formations.TmBoneLDDR,
      from:'T-Bones',
      paths:[
          QuarterLeft.changeBeats(2),

          QuarterRight.changeBeats(2),

          QuarterLeft.changeBeats(2),

          QuarterRight.changeBeats(2)
      ]),

    AnimatedCall('Quarter Out',
      formation:Formations.DiamondsRHGirlPoints,
      from:'Diamonds',
      paths:[
          QuarterLeft.changeBeats(2),

          QuarterLeft.changeBeats(2),

          QuarterLeft.changeBeats(2),

          QuarterLeft.changeBeats(2)
      ]),

    AnimatedCall('Quarter Out',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:3,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:3,angle:270),
  ]),
      from:'Heads Facing Left',
      paths:[
          QuarterLeft.changeBeats(2),

          QuarterLeft.changeBeats(2),

          QuarterLeft.changeBeats(2),

          QuarterRight.changeBeats(2)
      ]),

    AnimatedCall('Heads Quarter Out',
      formation:Formations.StaticSquare,
      group:' ',
      paths:[
          QuarterLeft,

          QuarterRight,

          Path(),

          Path()
      ]),

    AnimatedCall('Sides Quarter Out',
      formation:Formations.StaticSquare,
      group:' ',
      paths:[
          Path(),

          Path(),

          QuarterLeft,

          QuarterRight
      ]),
    a2.All4All8.where((tam) =>
      tam.title == 'All 4 Couples Quarter Out').first.xref(title: 'All 4 Couples Quarter Out').xref(group: ' '),

    AnimatedCall('As Couples Quarter Out',
      formation:Formations.NormalLines,
      from:'Lines',group:' ',
      paths:[
          BackHingeRight.changeBeats(2),

          HingeLeft.changeBeats(2),

          HingeRight.changeBeats(2),

          BackHingeLeft.changeBeats(2)
      ]),
  ];

