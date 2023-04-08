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

  final List<AnimatedCall> LockTheHinge = [

    AnimatedCall('Lock the Hinge',
      formation:Formations.OceanWavesRHBGGB,
      from:'Right-Hand Waves',parts:'3',
      paths:[
          LeadRight.changeBeats(3).scale(1.5,3.0) +
          HingeRight.scale(1.0,0.5),

          HingeLeft.changeBeats(3).scale(0.5,1.0) +
          HingeRight.scale(1.0,0.5),

          HingeLeft.changeBeats(3).scale(0.5,1.0) +
          HingeRight.scale(1.0,0.5),

          LeadRight.changeBeats(3).scale(1.5,3.0) +
          HingeRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Lock the Hinge',
      formation:Formations.OceanWavesLHBGGB,
      from:'Left-Hand Waves',parts:'3',
      paths:[
          LeadLeft.changeBeats(3).scale(1.5,3.0) +
          HingeLeft.scale(1.0,0.5),

          HingeRight.changeBeats(3).scale(0.5,1.0) +
          HingeLeft.scale(1.0,0.5),

          HingeRight.changeBeats(3).scale(0.5,1.0) +
          HingeLeft.scale(1.0,0.5),

          LeadLeft.changeBeats(3).scale(1.5,3.0) +
          HingeLeft.scale(1.0,0.5)
      ]),

    AnimatedCall('Lock the Hinge',
      formation:Formations.TwomFacedLinesRH,
      from:'Right-Hand Two-Faced Lines',parts:'3',
      paths:[
          LeadRight.changeBeats(3).changehands(6).scale(1.5,3.0) +
          LeadRight.scale(1.0,0.5),

          HingeRight.changeBeats(3).changehands(7).scale(0.5,1.0) +
          QuarterLeft.skew(-1.0,0.5),

          HingeRight.changeBeats(3).changehands(7).scale(0.5,1.0) +
          QuarterLeft.skew(-1.0,0.5),

          LeadRight.changeBeats(3).changehands(6).scale(1.5,3.0) +
          LeadRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Lock the Hinge',
      formation:Formations.TwomFacedLinesLH,
      from:'Left-Hand Two-Faced Lines',parts:'3',
      paths:[
          LeadLeft.changeBeats(3).changehands(5).scale(1.5,3.0) +
          QuarterLeft.skew(-1.0,0.5),

          HingeLeft.changeBeats(3).changehands(7).scale(0.5,1.0) +
          LeadRight.scale(1.0,0.5),

          HingeLeft.changeBeats(3).changehands(7).scale(0.5,1.0) +
          LeadRight.scale(1.0,0.5),

          LeadLeft.changeBeats(3).changehands(5).scale(1.5,3.0) +
          QuarterLeft.skew(-1.0,0.5)
      ]),

    AnimatedCall('Lock the Hinge',
      formation:Formations.TidalWaveRHBGGB,
      from:'Right-Hand Tidal Wave',parts:'3',
      paths:[
          LeadRight.changeBeats(3).scale(3.0,1.5) +
          HingeRight,

          HingeLeft.changeBeats(3).scale(1.0,0.5) +
          HingeRight,

          HingeLeft.changeBeats(3).scale(1.0,0.5) +
          HingeRight,

          LeadRight.changeBeats(3).scale(3.0,1.5) +
          HingeRight
      ]),

    AnimatedCall('Lock the Hinge',
      formation:Formations.TidalWaveLHBGGB,
      from:'Left-Hand Tidal Wave',parts:'3',
      paths:[
          LeadLeft.changeBeats(3).scale(3.0,1.5) +
          HingeLeft,

          HingeRight.changeBeats(3).scale(1.0,0.5) +
          HingeLeft,

          HingeRight.changeBeats(3).scale(1.0,0.5) +
          HingeLeft,

          LeadLeft.changeBeats(3).scale(3.0,1.5) +
          HingeLeft
      ]),

    AnimatedCall('Hinge the Lock',
      formation:Formations.BoxRH,
      from:'Right-Hand Box',parts:'1.5',
      paths:[
          HingeRight +
          HingeLeft.changeBeats(3),

          HingeRight +
          LeadRight.changeBeats(3).scale(3.0,3.0)
      ]),

    AnimatedCall('Hinge the Lock',
      formation:Formations.BoxLH,
      from:'Left-Hand Box',parts:'1.5',
      paths:[
          HingeLeft +
          LeadLeft.changeBeats(3).scale(3.0,3.0),

          HingeLeft +
          HingeRight.changeBeats(3)
      ]),

    AnimatedCall('Hinge the Lock',
      formation:Formations.FacingCouples,
      from:'Facing Couples',parts:'1.5',
      paths:[
          LeadRight.changeBeats(1.5) +
          HingeLeft.changeBeats(3),

          QuarterLeft.changeBeats(1.5).skew(-1.0,1.0) +
          LeadRight.changeBeats(3).scale(3.0,3.0)
      ]),

    AnimatedCall('Hinge the Lock',
      formation:Formations.CouplesFacingOut,
      from:'Couples Facing Out',parts:'1.5',
      paths:[
          QuarterLeft.changeBeats(1.5).skew(-1.0,1.0) +
          HingeLeft.changeBeats(3),

          LeadRight.changeBeats(1.5) +
          LeadRight.changeBeats(3).scale(3.0,3.0)
      ]),

    AnimatedCall('Hinge the Lock',
      formation:Formations.OceanWavesRHBGGB,
      from:'Right-Hand Waves',parts:'1.5',
      paths:[
          HingeRight +
          HingeLeft.changeBeats(3).scale(0.5,1.0),

          HingeRight +
          LeadRight.changeBeats(3).scale(1.5,3.0),

          HingeRight +
          HingeLeft.changeBeats(3).scale(0.5,1.0),

          HingeRight +
          LeadRight.changeBeats(3).scale(1.5,3.0)
      ]),

    AnimatedCall('Hinge the Lock',
      formation:Formations.OceanWavesLHBGGB,
      from:'Left-Hand Waves',parts:'1.5',
      paths:[
          HingeLeft +
          LeadLeft.changeBeats(3).scale(1.5,3.0),

          HingeLeft +
          HingeRight.changeBeats(3).scale(0.5,1.0),

          HingeLeft +
          LeadLeft.changeBeats(3).scale(1.5,3.0),

          HingeLeft +
          HingeRight.changeBeats(3).scale(0.5,1.0)
      ]),

    AnimatedCall('Hinge the Lock',
      formation:Formations.ColumnRHGBGB,
      from:'Right-Hand Columns',parts:'1.5',
      paths:[
          HingeRight.scale(0.5,1.0) +
          LeadRight.changeBeats(3).scale(3.0,1.5),

          HingeRight.scale(0.5,1.0) +
          HingeLeft.changeBeats(3).scale(1.0,0.5),

          HingeRight.scale(0.5,1.0) +
          LeadRight.changeBeats(3).scale(3.0,1.5),

          HingeRight.scale(0.5,1.0) +
          HingeLeft.changeBeats(3).scale(1.0,0.5)
      ]),

    AnimatedCall('Hinge the Lock',
      formation:Formations.ColumnLHGBGB,
      from:'Left-Hand Columns',parts:'1.5',
      paths:[
          HingeLeft.scale(0.5,1.0) +
          HingeRight.changeBeats(3).scale(1.0,0.5),

          HingeLeft.scale(0.5,1.0) +
          LeadLeft.changeBeats(3).scale(3.0,1.5),

          HingeLeft.scale(0.5,1.0) +
          HingeRight.changeBeats(3).scale(1.0,0.5),

          HingeLeft.scale(0.5,1.0) +
          LeadLeft.changeBeats(3).scale(3.0,1.5)
      ]),

    AnimatedCall('Hinge the Top',
      formation:Formations.BoxRH,
      from:'Right-Hand Box',parts:'1.5',
      paths:[
          HingeRight +
          CastLeft,

          HingeRight +
          LeadRight.changeBeats(4.5).scale(3.0,3.0)
      ]),

    AnimatedCall('Hinge the Top',
      formation:Formations.BoxLH,
      from:'Left-Hand Box',parts:'1.5',
      paths:[
          HingeLeft +
          LeadLeft.changeBeats(4.5).scale(3.0,3.0),

          HingeLeft +
          CastRight
      ]),

    AnimatedCall('All 8 Hinge the Lock',
      formation:Formations.StaticSquare,
      group:' ',parts:'1.5',
      paths:[
          QuarterRight.changeBeats(1.5).skew(2.0,-1.0) +
          HingeLeft.changeBeats(3),

          QuarterLeft.changeBeats(1.5).skew(0.0,1.0) +
          LeadRight.changeBeats(3).scale(3.0,3.0),

          QuarterRight.changeBeats(1.5).skew(2.0,-1.0) +
          HingeLeft.changeBeats(3),

          QuarterLeft.changeBeats(1.5).skew(0.0,1.0) +
          LeadRight.changeBeats(3).scale(3.0,3.0)
      ]),

    AnimatedCall('As Couples Lock the Hinge',
      formation:Formations.TwomFacedTidalLineRH,
      group:' ',parts:'4',
      paths:[
          LeadRight.changeBeats(4).changehands(2).scale(3.5,3.5) +
          LeadRight.changeBeats(3).changehands(2).scale(3.0,1.5),

          LeadRight.changeBeats(4).changehands(1).scale(2.5,2.5) +
          LeadRight.changeBeats(3).changehands(3).scale(1.0,0.5),

          LeadLeft.changeBeats(4).scale(1.5,1.5) +
          LeadRight.changeBeats(3).changehands(3).scale(1.0,0.5),

          LeadLeft.changeBeats(4).scale(0.5,0.5) +
          LeadRight.changeBeats(3).changehands(2).scale(3.0,1.5)
      ]),

    AnimatedCall('As Couples Hinge the Lock',
      formation:Formations.TwomFacedLinesRH,
      group:' ',parts:'3',
      paths:[
          LeadRight.changeBeats(3).changehands(2).scale(1.5,3.0) +
          LeadLeft.changeBeats(3).changehands(3).scale(0.5,0.5),

          LeadRight.changeBeats(3).changehands(3).scale(0.5,1.0) +
          LeadLeft.changeBeats(3).changehands(1).scale(1.5,1.5),

          LeadRight.changeBeats(3).changehands(3).scale(0.5,1.0) +
          LeadRight.changeBeats(3).changehands(1).scale(2.5,2.5),

          LeadRight.changeBeats(3).changehands(2).scale(1.5,3.0) +
          LeadRight.changeBeats(3).changehands(2).scale(3.5,3.5)
      ]),

    AnimatedCall('Tandem Lock the Hinge',
      formation:Formations.OceanWavesRHBGGB,
      group:' ',parts:'4',
      paths:[
          CounterRotateRight_5_m1.changeBeats(4) +
          CounterRotateRight_2_0.changeBeats(2).changehands(2).skew(1.0,0.0),

          CounterRotateLeft_m1_3.changeBeats(4) +
          CounterRotateRight_0_m2.changeBeats(2).changehands(2).skew(-1.0,0.0),

          CounterRotateLeft_3_m1.changeBeats(4) +
          CounterRotateRight_2_0.changeBeats(2).changehands(2).skew(1.0,0.0),

          CounterRotateRight_1_m5.changeBeats(4) +
          CounterRotateRight_0_m2.changeBeats(2).changehands(2).skew(-1.0,0.0)
      ]),

    AnimatedCall('Tandem Hinge the Lock',
      formation:Formations.ColumnRHGBGB,
      group:' ',parts:'2',
      paths:[
          CounterRotateRight_0_m2.changehands(2) +
          CounterRotateRight_2_m4.changeBeats(4).skew(0.0,-1.0),

          CounterRotateRight_2_0.changehands(2) +
          CounterRotateRight_4_m2.changeBeats(4).skew(0.0,1.0),

          CounterRotateRight_0_m2.changehands(2) +
          CounterRotateLeft_0_2.changeBeats(4).changehands(1).skew(0.0,1.0),

          CounterRotateRight_2_0.changehands(2) +
          CounterRotateLeft_2_0.changeBeats(4).changehands(1).skew(0.0,-1.0)
      ]),
  ];

