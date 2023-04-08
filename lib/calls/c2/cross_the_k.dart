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

  final List<AnimatedCall> CrossTheK = [ 

    AnimatedCall('Cross the K',
      formation:Formations.NormalLines,
      from:'Lines',parts:'5',
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.changeBeats(2).scale(1.0,2.5) +
          Forward +
          RunRight,

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          Forward +
          ExtendLeft.changeBeats(2).scale(1.0,1.5) +
          UmTurnLeft,

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.changeBeats(2).scale(1.0,2.5) +
          Forward +
          UmTurnRight,

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          Forward +
          ExtendLeft.changeBeats(2).scale(1.0,1.5) +
          FlipLeft
      ]),

    AnimatedCall('Cross the K',
      formation:Formations.EightChainThru,
      from:'Eight Chain Thru',parts:'6',
      paths:[
          ExtendLeft.changeBeats(2).scale(1.0,0.5) +
      Path.fromMovement(Movement.fromData(beats: 4, hands: Hands.NONE, cx1: 1, cy1: 0, cx2: 0, cy2: -2.5, x2: 1, y2: -2.5, cx3: 1, cx4: 1, cy4: -.5, x4: 2, y4: -.5  )) +
          FlipLeft,

          ExtendLeft.changeBeats(2).scale(1.0,0.5) +
      Path.fromMovement(Movement.fromData(beats: 4, hands: Hands.NONE, cx1: 1, cy1: 0, cx2: 1.5, cy2: 1.5, x2: 1, y2: 1.5, cx3: 1, cx4: 1, cy4: .5, x4: 2, y4: .5  )) +
          RunRight.scale(0.67,1.0),

          ExtendLeft.changeBeats(2).scale(1.0,0.5) +
      Path.fromMovement(Movement.fromData(beats: 4, hands: Hands.NONE, cx1: 1, cy1: 0, cx2: 0, cy2: -2.5, x2: 1, y2: -2.5, cx3: 1, cx4: 1, cy4: -.5, x4: 2, y4: -.5  )) +
          UmTurnRight,

          ExtendLeft.changeBeats(2).scale(1.0,0.5) +
      Path.fromMovement(Movement.fromData(beats: 4, hands: Hands.NONE, cx1: 1, cy1: 0, cx2: 1.5, cy2: 1.5, x2: 1, y2: 1.5, cx3: 1, cx4: 1, cy4: .5, x4: 2, y4: .5  )) +
          UmTurnLeft
      ]),

    AnimatedCall('The K',
      formation:Formations.WaveRH,
      from:'Right-Hand Wave',fractions:'1.5',
      paths:[
          UmTurnLeft,

          SwingLeft
      ]),

    AnimatedCall('The K',
      formation:Formations.WaveLH,
      from:'Left-Hand Wave',fractions:'1.5',
      paths:[
          UmTurnRight,

          SwingRight
      ]),

    AnimatedCall('The K',
      formation:Formations.TwomFacedLineRH,
      from:'Right-Hand Two-Faced Line',fractions:'1.5',
      paths:[
          UmTurnLeft,

          SwingRight
      ]),

    AnimatedCall('The K',
      formation:Formations.TwomFacedLineLH,
      from:'Left-Hand Two-Faced Line',fractions:'1.5',
      paths:[
          SwingLeft,

          UmTurnRight
      ]),

    AnimatedCall('The K',
      formation:Formations.DiamondRH,
      from:'Right-Hand Diamond',fractions:'1.5',
      paths:[
          UmTurnLeft,

          SwingRight
      ]),

    AnimatedCall('The K',
      formation:Formations.DiamondLH,
      from:'Left-Hand Diamond',fractions:'1.5',
      paths:[
          UmTurnRight,

          SwingLeft
      ]),

    AnimatedCall('The K',
      formation:Formations.OceanWavesRHBGGB,
      from:'Right-Hand Waves',fractions:'1.5',
      paths:[
          UmTurnLeft,

          SwingLeft,

          SwingLeft,

          UmTurnLeft
      ]),

    AnimatedCall('The K',
      formation:Formations.LinesFacingOut,
      from:'Lines Facing Out',fractions:'1.5',
      paths:[
          UmTurnRight,

          FlipLeft,

          RunRight,

          UmTurnLeft
      ]),

    AnimatedCall('The K',
      formation:Formations.DiamondsRHGirlPoints,
      from:'Right-Hand Diamonds',fractions:'1.5',
      paths:[
          SwingRight,

          UmTurnLeft,

          SwingRight,

          UmTurnLeft
      ]),

    AnimatedCall('The K',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:3,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:1,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:3,angle:270),
  ]),
      from:'Right-Hand Columns',fractions:'1.5',
      paths:[
          UmTurnLeft,

          SwingRight.scale(0.5,1.0),

          SwingRight.scale(0.5,1.0),

          UmTurnLeft
      ]),

    AnimatedCall('The K',
      formation:Formations.ColumnLHGBGB,
      from:'Left-Hand Columns',fractions:'1.5',
      paths:[
          UmTurnRight,

          SwingLeft.scale(0.5,1.0),

          SwingLeft.scale(0.5,1.0),

          UmTurnRight
      ]),

    AnimatedCall('The K',
      formation:Formations.n34Tag,
      from:'3/4 Tag',fractions:'1.5',
      paths:[
          UmTurnRight,

          UmTurnLeft,

          SwingRight,

          SwingRight
      ]),

    AnimatedCall('The K',
      formation:Formations.TwomFacedTidalLineRH,
      from:'Tidal Two-Faced Line',fractions:'1.5',
      paths:[
          UmTurnLeft,

          SwingRight.scale(0.5,0.5),

          SwingRight.scale(0.5,0.5),

          UmTurnLeft
      ]),

    AnimatedCall('The K',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:1,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-1,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:3.1,y:0,angle:270),
  ]),
      from:'Galaxy',fractions:'1.5',
      paths:[
          SwingRight.scale(0.5,1.0),

          UmTurnLeft,

          SwingRight.scale(0.5,1.0),

          UmTurnLeft
      ]),

    AnimatedCall('As Couples the K',
      formation:Formations.TwomFacedTidalLineRH,
      group:' ',
      paths:[
          BeauWheel.scale(0.5,0.5),

          BelleWheel.scale(0.5,0.5),

          SwingLeft.scale(1.5,1.5),

          SwingLeft.changehands(3).scale(0.5,0.5)
      ]),

    AnimatedCall('Concentric the K',
      formation:Formations.TwomFacedTidalLineRH,
      group:' ',
      paths:[
          UmTurnLeft.changeBeats(5),

          RunRight.changeBeats(5).scale(2.0,2.5),

          UmTurnRight.changeBeats(5),

          SwingLeft.changeBeats(5).changehands(3).scale(0.5,0.5)
      ]),

    AnimatedCall('Crazy the K',
      formation:Formations.TwomFacedTidalLineRH,
      group:' ',parts:'3;3;3',
      paths:[
          UmTurnLeft +
          Stand.changeBeats(3) +
          UmTurnRight +
          Stand.changeBeats(3),

          SwingRight.scale(0.5,0.5) +
          UmTurnRight +
          FlipLeft.scale(1.0,0.5) +
          Stand.changeBeats(3),

          SwingRight.scale(0.5,0.5) +
          Stand.changeBeats(3) +
          RunRight.scale(1.0,0.5) +
          UmTurnRight,

          UmTurnLeft +
          SwingRight.scale(0.5,0.5) +
          UmTurnRight +
          SwingLeft.scale(0.5,0.5)
      ]),

    AnimatedCall('Cross Concentric the K',
      formation:Formations.TwomFacedTidalLineRH,
      group:' ',
      paths:[
          DodgeRight +
          UmTurnLeft,

          DodgeRight +
          SwingRight.scale(0.5,0.5),

          RunRight,

          RunLeft.scale(1.0,1.5)
      ]),

    AnimatedCall('Offset Lines the K',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:0,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-3,angle:180),
  ]),
      group:' ',fractions:'1.5',
      paths:[
          UmTurnLeft,

          QuarterRight.skew(-0.5,-1.0) +
          LeadRight.scale(1.0,1.5),

          QuarterRight.skew(-0.5,-1.0) +
          LeadRight.scale(1.0,1.5),

          UmTurnLeft
      ]),

    AnimatedCall('Once Removed the K',
      formation:Formations.TidalWaveRHBGBG,
      group:' ',
      paths:[
          UmTurnLeft,

          UmTurnRight,

          RunRight.scale(1.5,1.0),

          RunLeft.scale(0.5,1.0)
      ]),

    AnimatedCall('Tandem the K',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:180),
  ]),
      group:' ',fractions:'2',
      paths:[
          Pivotforwardright.changeBeats(4).scale(1.0,0.5),

          CounterRotateRight_2_0.changehands(2) +
          CounterRotateRight_2_0.changehands(2),

          CounterRotateRight_0_m2.changehands(2) +
          CounterRotateRight_0_m2.changehands(2),

          Pivotbackwardleft.changeBeats(4)
      ]),

    AnimatedCall('Cross Trail Thru the K',
      formation:Formations.NormalLines,
      from:'Lines',group:'  ',fractions:'5',
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.changeBeats(2).scale(1.0,2.5) +
          Forward +
          RunRight,

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          Forward +
          ExtendLeft.changeBeats(2).scale(1.0,1.5) +
          UmTurnLeft,

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.changeBeats(2).scale(1.0,2.5) +
          Forward +
          UmTurnRight,

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          Forward +
          ExtendLeft.changeBeats(2).scale(1.0,1.5) +
          FlipLeft
      ]),
  ];

