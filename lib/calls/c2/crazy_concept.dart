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
import '../c2/cross_the_k.dart' as c2;

  final List<AnimatedCall> CrazyConcept = [ 

    AnimatedCall('Crazy Circulate',
      formation:Formations.OceanWavesRHBGBG,
      group:'Crazy',parts:'3;3;3',
      paths:[
          Forward_4.changeBeats(3) +
          Stand.changeBeats(3) +
          RunRight +
          Forward_4.changeBeats(3),

          RunRight +
          Stand.changeBeats(3) +
          Forward_4.changeBeats(3) +
          Stand.changeBeats(3),

          Forward_4.changeBeats(3) +
          RunLeft +
          Forward_4.changeBeats(3) +
          RunLeft,

          RunRight +
          Forward_4.changeBeats(3) +
          RunRight +
          Stand.changeBeats(3)
      ]),

    AnimatedCall('Crazy Circulate 3',
      formation:Formations.OceanWavesRHBGBG,
      group:'Crazy',parts:'9;9;9',
      paths:[
          Forward_4.changeBeats(3) +
          RunRight +
          Forward_4.changeBeats(3) +
          RunLeft +
          Forward_4.changeBeats(3) +
          RunLeft +
          Forward_4.changeBeats(3) +
          RunRight +
          Forward_4.changeBeats(3) +
          Stand.changeBeats(9).changehands(0),

          RunRight +
          Forward_4.changeBeats(3) +
          RunRight +
          Forward_4.changeBeats(3) +
          RunLeft +
          Forward_4.changeBeats(3) +
          RunRight +
          Forward_4.changeBeats(3) +
          RunRight +
          Forward_4.changeBeats(3) +
          RunLeft +
          Forward_4.changeBeats(3),

          Forward_4.changeBeats(3) +
          RunRight +
          Forward_4.changeBeats(3) +
          Stand.changeBeats(9).changehands(0) +
          RunRight +
          Forward_4.changeBeats(3) +
          RunRight +
          Stand.changeBeats(9).changehands(0),

          RunRight +
          Forward_4.changeBeats(3) +
          RunRight +
          Stand.changeBeats(9).changehands(0) +
          Forward_4.changeBeats(3) +
          RunRight +
          Forward_4.changeBeats(3) +
          RunLeft +
          Forward_4.changeBeats(3) +
          RunLeft
      ]),

    AnimatedCall('Crazy Circulate 1-2-2-3',
      formation:Formations.OceanWavesRHBGBG,
      group:'Crazy',parts:'3;6;6',
      paths:[
          Forward_4.changeBeats(3) +
          Stand.changeBeats(6).changehands(0) +
          RunRight +
          Forward_4.changeBeats(3) +
          RunLeft +
          Forward_4.changeBeats(3) +
          RunLeft,

          RunRight +
          Stand.changeBeats(6).changehands(0) +
          Forward_4.changeBeats(3) +
          RunRight +
          Forward_4.changeBeats(3) +
          RunLeft +
          Forward_4.changeBeats(3),

          Forward_4.changeBeats(3) +
          RunLeft +
          Forward_4.changeBeats(3) +
          RunRight +
          Forward_4.changeBeats(3) +
          Stand.changeBeats(9).changehands(0),

          RunRight +
          Forward_4.changeBeats(3) +
          RunLeft +
          Forward_4.changeBeats(3) +
          RunRight +
          Stand.changeBeats(9).changehands(0)
      ]),

    AnimatedCall('Crazy Counter Rotate 1/4',
      formation:Formations.TwomFacedTidalLineRH,
      group:'Crazy',parts:'2;2;2',
      paths:[
          LeadRight.changeBeats(2).changehands(2).scale(3.0,1.5).skew(0.0,-1.0) +
          Stand.changeBeats(2) +
          CounterRotateRight_2_0 +
          Stand.changeBeats(2.5),

          LeadRight.changeBeats(2).changehands(3).scale(1.0,0.5).skew(0.0,-1.0) +
          CounterRotateRight_2_0.changehands(2) +
          CounterRotateRight_0_m2.changehands(2) +
          QuarterLeft.changeBeats(2.5).skew(0.0,2.0),

          QuarterRight.changeBeats(2).changehands(3).skew(1.0,0.5) +
          CounterRotateRight_0_m2.changehands(2) +
          CounterRotateRight_2_0.changehands(2) +
          Stand.changeBeats(2.5),

          QuarterRight.changeBeats(2).changehands(2).skew(3.0,-0.5) +
          Stand.changeBeats(2) +
          CounterRotateRight_0_m2 +
          ExtendLeft +
          LeadRight
      ]),

    AnimatedCall('Crazy Flutterwheel',
      formation:Formations.NormalLines,
      group:'Crazy',parts:'8;8;8',
      paths:[
          Forward.changeBeats(3.5).changehands(0) +
          ExtendLeft.changeBeats(1.5).changehands(2).scale(1.5,1.5) +
          RunRight.changehands(2).scale(1.5,2.0).skew(1.5,0.5) +
          ExtendLeft.changeBeats(2).scale(1.5,1.75) +
          SwingRight.changehands(3).scale(0.75,0.75) +
          UmTurnRight.changehands(1).skew(1.5,0.25) +
          Forward.changeBeats(3.5).changehands(0) +
          ExtendLeft.changeBeats(1.5).changehands(2).scale(1.5,1.0) +
          RunRight.changehands(2).scale(1.5,1.75).skew(1.5,0.5) +
          Stand.changeBeats(8).changehands(0),

          ExtendLeft.changeBeats(2).scale(1.5,1.75) +
          SwingRight.changehands(3).scale(0.75,0.75) +
          UmTurnRight.changehands(1).skew(1.5,0.25) +
          Forward.changeBeats(3.5).changehands(0) +
          ExtendLeft.changeBeats(1.5).changehands(2).scale(1.5,1.5) +
          RunRight.changehands(2).scale(1.5,2.0).skew(1.5,0.5) +
          ExtendLeft.changeBeats(2).scale(1.5,1.75) +
          SwingRight.changehands(3).scale(0.75,0.75) +
          UmTurnRight.changehands(1).skew(1.5,0.25) +
          Forward.changeBeats(3.5).changehands(0) +
          ExtendLeft.changeBeats(1.5).changehands(2).scale(1.5,1.0) +
          RunRight.changehands(2).scale(1.5,1.75).skew(1.5,0.5),

          Forward.changeBeats(3.5).changehands(0) +
          ExtendLeft.changeBeats(1.5).changehands(2).scale(1.5,1.0) +
          RunRight.changehands(2).scale(1.5,1.75).skew(1.5,0.5) +
          Stand.changeBeats(8).changehands(0) +
          Forward.changeBeats(3.5).changehands(0) +
          ExtendLeft.changeBeats(1.5).changehands(2).scale(1.5,1.0) +
          RunRight.changehands(2).scale(1.5,1.75).skew(1.5,0.5) +
          ExtendLeft.changeBeats(2).scale(1.5,1.75) +
          SwingRight.changehands(3).scale(0.75,0.75) +
          UmTurnRight.changehands(1).skew(1.5,0.25),

          ExtendLeft.changeBeats(2).scale(1.5,1.75) +
          SwingRight.changehands(3).scale(0.75,0.75) +
          UmTurnRight.changehands(1).skew(1.5,0.25) +
          Stand.changeBeats(8).changehands(0) +
          ExtendLeft.changeBeats(2).scale(1.5,1.75) +
          SwingRight.changehands(3).scale(0.75,0.75) +
          UmTurnRight.changehands(1).skew(1.5,0.25) +
          Stand.changeBeats(8).changehands(0)
      ]),

    AnimatedCall('Crazy Mix',
      formation:Formations.TidalWaveRHBGGB,
      group:'Crazy',parts:'3;3;3',
      paths:[
          DodgeRight.changeBeats(1).scale(0.5,0.5) +
          SwingRight.changeBeats(2).scale(0.5,0.5) +
          DodgeLeft.changeBeats(1).scale(0.5,0.5) +
          SwingLeft.changeBeats(2).scale(0.5,0.5) +
          DodgeRight.changeBeats(1).scale(0.5,0.5) +
          RunRight.changeBeats(2).scale(1.0,0.5) +
          Stand.changeBeats(3),

          RunLeft +
          RunRight +
          RunLeft.scale(2.0,1.0) +
          Stand.changeBeats(3),

          RunLeft +
          Stand.changeBeats(3) +
          DodgeLeft.changeBeats(1).scale(0.5,0.5) +
          FlipLeft.changeBeats(2).scale(0.5,0.5) +
          DodgeRight.changeBeats(1).scale(0.5,0.5) +
          SwingRight.changeBeats(2).scale(0.5,0.5),

          DodgeRight.changeBeats(1).scale(0.5,0.5) +
          SwingRight.changeBeats(2).scale(0.5,0.5) +
          Stand.changeBeats(3) +
          RunRight +
          RunLeft
      ]),
    c2.CrossTheK.where((tam) =>
      tam.title == 'Crazy the K').first.xref(title: 'Crazy The K').xref(group: 'Crazy'),

    AnimatedCall('Crazy Trade',
      formation:Formations.LinesFacingOut,
      group:'Crazy',parts:'3;3;3',
      paths:[
          FlipLeft +
          RunRight +
          SwingLeft +
          Stand.changeBeats(3),

          RunRight +
          Stand.changeBeats(3) +
          SwingRight +
          FlipLeft,

          FlipLeft +
          Stand.changeBeats(3) +
          SwingLeft +
          RunRight,

          RunRight +
          FlipLeft +
          SwingRight +
          Stand.changeBeats(3)
      ]),

    AnimatedCall('Crazy Triangle Circulate',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:-3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-5,angle:180),
  ]),
      group:'Crazy',parts:'3;3;3',
      paths:[
          Forward_2.changeBeats(3) +
          RunLeft.skew(-1.0,0.0) +
          Stand.changeBeats(3).changehands(2) +
          RunLeft.skew(1.0,0.0),

          Stand.changeBeats(3).changehands(2) +
          RunLeft.skew(1.0,0.0) +
          Forward_2.changeBeats(3) +
          RunLeft.skew(-1.0,0.0),

          RunRight.skew(-1.0,0.0) +
          Stand.changeBeats(3) +
          RunRight.skew(1.0,0.0) +
          Forward_2.changeBeats(3),

          RunRight.skew(1.0,0.0) +
          Forward_2.changeBeats(3) +
          RunRight.skew(-1.0,0.0) +
          Stand.changeBeats(3)
      ]),

    AnimatedCall('1/2 Crazy Quarter Thru',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:3,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:3,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:0,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:0,angle:90),
  ]),
      group:' ',parts:'4.5',
      paths:[
          HingeRight.scale(0.5,1.0) +
          SwingLeft.scale(0.75,0.75) +
          HingeRight,

          HingeRight +
          Stand.changeBeats(3),

          HingeRight +
          SwingLeft.scale(0.75,0.75),

          HingeRight +
          Stand.changeBeats(3) +
          HingeRight +
          SwingLeft
      ]),

    AnimatedCall('1/2 Crazy Right and Left Thru',
      formation:Formations.NormalLines,
      group:' ',parts:'5',
      paths:[
          PullLeft.scale(2.0,0.5) +
          ExtendRight.scale(2.0,0.5) +
          BeauWheel.scale(0.67,1.0) +
          PullLeft.scale(2.0,0.5) +
          ExtendRight.scale(2.0,0.5) +
          BelleWheel.scale(0.67,1.0),

          PullLeft.scale(2.0,0.5) +
          ExtendRight.scale(2.0,0.5) +
          BelleWheel.scale(0.67,1.0) +
          Stand.changeBeats(5),

          PullLeft.scale(2.0,0.5) +
          ExtendRight.scale(2.0,0.5) +
          BeauWheel.scale(0.67,1.0) +
          Stand.changeBeats(5),

          PullLeft.scale(2.0,0.5) +
          ExtendRight.scale(2.0,0.5) +
          BelleWheel.scale(0.67,1.0) +
          PullLeft.scale(2.0,0.5) +
          ExtendRight.scale(2.0,0.5) +
          BeauWheel.scale(0.67,1.0)
      ]),

    AnimatedCall('3/4 Crazy Circulate',
      formation:Formations.OceanWavesRHBGBG,
      group:' ',parts:'3;3',
      paths:[
          Forward_4.changeBeats(3) +
          Stand.changeBeats(3) +
          RunRight,

          RunRight +
          Stand.changeBeats(3) +
          Forward_4.changeBeats(3),

          Forward_4.changeBeats(3) +
          RunLeft +
          Forward_4.changeBeats(3),

          RunRight +
          Forward_4.changeBeats(3) +
          RunRight
      ]),

    AnimatedCall('Reverse Crazy Reverse Flutterwheel',
      formation:Formations.NormalLines,
      group:'Reverse Crazy',parts:'8;8;8',
      paths:[
          StandAlone.changeBeats(8) +
          ExtendRight.changeBeats(2).scale(1.5,1.75) +
          SwingLeft.changehands(3).scale(0.75,0.75) +
          UmTurnLeft.changehands(2).skew(1.5,-0.25) +
          StandAlone.changeBeats(8) +
          ExtendRight.changeBeats(2).scale(1.5,1.75) +
          SwingLeft.changehands(3).scale(0.75,0.75) +
          UmTurnLeft.changehands(2).skew(1.5,-0.25),

          ExtendRight.changeBeats(2).scale(1.5,1.75) +
          SwingLeft.changehands(3).scale(0.75,0.75) +
          UmTurnLeft.changehands(2).skew(1.5,-0.25) +
          Forward.changeBeats(3.5).changehands(0) +
          ExtendRight.changeBeats(1.5).changehands(1).scale(1.5,1.0) +
          RunLeft.changehands(1).scale(1.5,2.0).skew(1.5,-1.0) +
          StandAlone.changeBeats(8) +
          Forward.changeBeats(3.5).changehands(0) +
          ExtendRight.changeBeats(1.5).changehands(1).scale(1.5,1.5) +
          RunLeft.changehands(1).scale(1.5,2.0).skew(1.5,-0.5),

          Forward.changeBeats(3.5).changehands(0) +
          ExtendRight.changeBeats(1.5).changehands(1).scale(1.5,1.5) +
          RunLeft.changehands(1).scale(1.5,2.0).skew(1.5,-0.5) +
          ExtendRight.changeBeats(2).scale(1.5,1.75) +
          SwingLeft.changehands(3).scale(0.75,0.75) +
          UmTurnLeft.changehands(2).skew(1.5,-0.25) +
          Forward.changeBeats(3.5).changehands(0) +
          ExtendRight.changeBeats(1.5).changehands(1).scale(1.5,1.5) +
          RunLeft.changehands(1).scale(1.5,2.0).skew(1.5,-0.5) +
          ExtendRight.changeBeats(2).scale(1.5,1.75) +
          SwingLeft.changehands(3).scale(0.75,0.75) +
          UmTurnLeft.changehands(2).skew(1.5,-0.25),

          StandAlone.changeBeats(8) +
          Forward.changeBeats(3.5).changehands(0) +
          ExtendRight.changeBeats(1.5).changehands(1).scale(1.5,1.5) +
          RunLeft.changehands(1).scale(1.5,2.0).skew(1.5,-0.5) +
          ExtendRight.changeBeats(2).scale(1.5,1.75) +
          SwingLeft.changehands(3).scale(0.75,0.75) +
          UmTurnLeft.changehands(2).skew(1.5,-0.25) +
          Forward.changeBeats(3.5).changehands(0) +
          ExtendRight.changeBeats(1.5).changehands(1).scale(1.5,1.0) +
          RunLeft.changehands(1).scale(1.5,2.0).skew(1.5,-1.0)
      ]),

    AnimatedCall('1/2 Reverse Crazy Tag Back',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:3,y:0,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:0,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:2,y:3,angle:0),
  ]),
      group:'1/2 Reverse Crazy',parts:'8.5',
      paths:[
          LeadRight +
          ExtendRight.changeBeats(2).scale(2.0,0.25) +
          SwingRight.scale(0.75,0.75) +
          ExtendLeft.changeBeats(2).scale(2.0,0.25) +
          LeadRight +
          Forward_2 +
          RunRight +
          StandLeft.changeBeats(2),

          LeadRight +
          Forward_2 +
          RunRight +
          StandLeft.changeBeats(2) +
          LeadRight +
          Forward_2 +
          RunRight +
          StandLeft.changeBeats(2),

          StandAlone.changeBeats(6.5) +
          StandRight.changeBeats(2) +
          LeadRight +
          ExtendRight.changeBeats(2).scale(2.0,0.25) +
          SwingRight.scale(0.75,0.75) +
          ExtendLeft.changeBeats(2).scale(2.0,0.25),

          StandAlone.changeBeats(8.5) +
          LeadRight +
          ExtendRight.changeBeats(2).scale(2.0,0.25) +
          SwingRight.scale(0.75,0.75) +
          ExtendLeft.changeBeats(2).scale(2.0,0.25)
      ]),

    AnimatedCall('1/2 Reverse Crazy 2/3 Recycle',
      formation:Formations.DiamondsFacingLHGirlPoints,
      group:'1/2 Reverse Crazy',parts:'4.5',
      paths:[
          LeadLeft.changeBeats(4.5).scale(1.0,5.0) +
          CastRight,

          StandAlone.changeBeats(4.5) +
          LeadRight.changeBeats(4.5).scale(1.0,5.0),

          CastLeft.changehands(0) +
          CastRight,

          StandAlone.changeBeats(4.5) +
          LeadRight.changeBeats(4.5).scale(1.0,5.0)
      ]),

    AnimatedCall('3/4 Reverse Crazy Follow Thru',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:3,y:0,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:3,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:3,angle:270),
  ]),
      group:'3/4 Reverse Crazy',parts:'3;3',
      paths:[
          ExtendLeft.changeBeats(1.5).scale(1.5,0.75) +
          HingeRight.scale(0.5,0.75) +
          Forward.changeBeats(1.5).scale(1.5,1.0) +
          HingeRight.scale(1.5,1.0) +
          StandAlone.changeBeats(3),

          ExtendRight.changeBeats(1.5).scale(1.5,0.25) +
          HingeRight.scale(1.5,0.75) +
          ExtendRight.changeBeats(1.5).scale(1.5,0.25) +
          HingeRight.scale(1.5,0.75) +
          StandAlone.changeBeats(3),

          StandAlone.changeBeats(3) +
          ExtendLeft.changeBeats(1.5).scale(1.5,1.5) +
          HingeRight.scale(0.5,0.5) +
          ExtendLeft.changeBeats(1.75).scale(2.0,0.25) +
          HingeLeft.changeBeats(1.25).scale(1.0,0.75),

          StandAlone.changeBeats(3) +
          ExtendRight.changeBeats(1.5).scale(1.5,0.25) +
          HingeRight.scale(0.5,0.75) +
          LeadLeft.changeBeats(3)
      ]),

    AnimatedCall('3/4 Reverse Crazy Quarter Thru',
      formation:Formations.OceanWavesLHBGGB,
      group:'3/4 Reverse Crazy',parts:'4.5;4.5',
      paths:[
          StandAlone.changeBeats(4.5) +
          StandAlone.changeBeats(1.5) +
          SwingLeft +
          HingeRight +
          SwingLeft,

          HingeRight +
          SwingLeft +
          HingeRight +
          SwingLeft +
          StandAlone.changeBeats(4.5),

          HingeRight +
          StandAlone.changeBeats(3) +
          HingeRight +
          SwingLeft +
          StandAlone.changeBeats(4.5),

          StandAlone.changeBeats(4.5) +
          StandAlone.changeBeats(1.5) +
          SwingLeft +
          HingeRight +
          StandAlone.changeBeats(3)
      ]),
  ];

