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

  final List<AnimatedCall> Percolate = [ 

    AnimatedCall('Percolate',
      formation:Formations.EightChainThru,
      from:'Eight Chain Thru',parts:'2;1',
      paths:[
          ExtendLeft.scale(1.0,0.5) +
          ExtendLeft.changeBeats(2).scale(2.0,1.0) +
          HingeRight.scale(1.0,0.75) +
          ExtendRight.changeBeats(3).changehands(1).scale(2.75,2.0) +
          Forward,

          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.25) +
          HingeRight.scale(1.0,1.25) +
          Stand.changeBeats(4).changehands(0),

          ExtendLeft.scale(1.0,0.5) +
          LeadRight.changeBeats(2).scale(1.5,1.5) +
          SwingRight.scale(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          ExtendLeft.scale(1.0,0.5) +
          LeadLeft.changeBeats(2).scale(0.5,0.5) +
          SwingRight.scale(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Percolate',
      formation:Formations.OceanWavesRHBGGB,
      from:'Right-Hand Waves',parts:'4;2',
      paths:[
          Forward_4 +
          LeadRight.changeBeats(2).scale(2.0,3.0) +
          SwingRight.scale(0.5,0.5) +
          Forward_2,

          RunLeft.changeBeats(4) +
          Forward_2 +
          HingeRight +
          Stand.changeBeats(4).changehands(0),

          Forward_4 +
          LeadLeft.changeBeats(2) +
          SwingRight.scale(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,1.0),

          LeadRight.changeBeats(2).scale(2.0,3.0) +
          LeadRight.changeBeats(2).scale(3.0,2.0) +
          Forward_2 +
          HingeRight +
          ExtendRight.changeBeats(3).changehands(1).scale(3.0,2.0) +
          Forward
      ]),

    AnimatedCall('Percolate',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-3,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:3,angle:180),
  ]),
      from:'Left-Hand Waves',parts:'4;2',
      paths:[
          Forward_4 +
          LeadLeft.changeBeats(2).scale(2.0,3.0) +
          SwingLeft.scale(0.5,0.5) +
          Forward_2,

          RunRight.changeBeats(4) +
          Forward_2 +
          HingeLeft +
          Stand.changeBeats(4).changehands(0),

          Forward_4 +
          LeadRight.changeBeats(2) +
          SwingLeft.scale(0.5,0.5) +
          ExtendLeft.changeBeats(2).scale(2.0,1.0),

          LeadLeft.changeBeats(2).scale(2.0,3.0) +
          LeadLeft.changeBeats(2).scale(3.0,2.0) +
          Forward_2 +
          HingeLeft +
          ExtendLeft.changeBeats(3).changehands(2).scale(3.0,2.0) +
          Forward
      ]),

    AnimatedCall('Percolate',
      formation:Formations.NormalLines,
      from:'Normal Lines',parts:'3;2',
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          LeadRight.changeBeats(2).scale(2.5,3.0) +
          SwingRight.scale(0.5,0.5) +
          ExtendRight.scale(1.0,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          LeadRight.changeBeats(2).scale(0.5,1.0) +
          HingeRight.scale(1.0,0.5) +
      Path.fromMovement(Movement.fromData(beats: 2, hands: Hands.LEFT, cx1: 1, cy1: 0, cx2: -.5, cy2: -2, x2: 2, y2: -2, cx3: 1, cx4: 1, cy4: -.4, x4: 2, y4: -.4  )),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          QuarterLeft.changeBeats(2).skew(-0.5,1.0) +
          HingeRight.scale(1.0,0.5) +
          Stand.changeBeats(4).changehands(0),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          LeadLeft.changeBeats(2).scale(1.5,3.0) +
          SwingRight.scale(0.5,0.5) +
          ExtendRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Percolate',
      formation:Formations.LinesFacingOut,
      from:'Lines Facing Out',parts:'4;2',
      paths:[
          RunLeft.changeBeats(4).scale(2.0,3.0) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          SwingRight.scale(0.5,0.5) +
          ExtendRight.scale(1.0,0.5),

          FlipLeft.changeBeats(4) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          HingeRight.scale(1.0,0.5),

          RunRight.changeBeats(4) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          HingeRight.scale(1.0,0.5) +
      Path.fromMovement(Movement.fromData(beats: 2, hands: Hands.LEFT, cx1: 1, cy1: 0, cx2: -.5, cy2: -2, x2: 2, y2: -2, cx3: 1, cx4: 1, cy4: -.4, x4: 2, y4: -.4  )),

          RunRight.changeBeats(4).scale(3.0,3.0) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          SwingRight.scale(0.5,0.5) +
          ExtendRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Percolate',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:1,y:3,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:3,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:90),
  ]),
      from:'T-Bones',parts:'3;1.5',
      paths:[
          Forward_2.changeBeats(3) +
          Forward.changeBeats(1.5) +
          HingeLeft.scale(1.0,0.5),

          RunLeft.changeBeats(3).scale(2.0,3.0) +
          Forward.changeBeats(1.5) +
          SwingRight.scale(0.5,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.5,1.0),

          Forward_2.changeBeats(3) +
          LeadLeft.changeBeats(1.5) +
          HingeLeft.scale(1.0,0.5) +
          CrossLeft.changeBeats(3).scale(1.5,1.0),

          Forward_2.changeBeats(3) +
          LeadRight.changeBeats(1.5) +
          SwingRight.scale(0.5,0.5) +
          Forward_1p5
      ]),

    AnimatedCall('Percolate but Ah So',
      formation:Formations.OceanWavesRHBGGB,
      group:' ',parts:'4;2',
      paths:[
          Forward_4 +
          LeadRight.changeBeats(2).scale(2.0,3.0) +
          SwingRight.scale(0.5,0.5) +
          Forward,

          RunLeft.changeBeats(4) +
          Forward_2 +
          UmTurnRight.changehands(6).skew(-1.0,0.0),

          Forward_4 +
          LeadLeft.changeBeats(2) +
          SwingRight.scale(0.5,0.5) +
          ExtendRight,

          LeadRight.changeBeats(2).scale(2.0,3.0) +
          LeadRight.changeBeats(2).scale(3.0,2.0) +
          Forward_2 +
          RunRight.changehands(6).scale(1.0,2.0).skew(1.0,0.0)
      ]),

    AnimatedCall('Percolate but Swing Thru',
      formation:Formations.EightChainThru,
      group:' ',parts:'2;1',
      paths:[
          ExtendLeft.scale(1.0,0.5) +
          ExtendLeft.changeBeats(2).scale(2.0,1.0) +
          HingeRight.scale(1.0,0.5) +
          HingeRight +
          SwingLeft,

          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.25) +
          HingeRight.scale(1.0,1.25) +
          HingeRight,

          ExtendLeft.scale(1.0,0.5) +
          LeadRight.changeBeats(2).scale(1.5,1.5) +
          SwingRight.scale(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          ExtendLeft.scale(1.0,0.5) +
          LeadLeft.changeBeats(2).scale(0.5,0.5) +
          SwingRight.scale(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Percolate but 2/3 Recycle',
      formation:Formations.EightChainThru,
      group:' ',parts:'2;1',
      paths:[
          ExtendLeft.scale(1.0,0.5) +
          ExtendLeft.changeBeats(2).scale(2.0,1.0) +
          LeadRight +
          Forward_2 +
          Forward_1p5,

          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.25) +
          LeadRight +
          RunRight.skew(0.25,0.0),

          ExtendLeft.scale(1.0,0.5) +
          LeadRight.changeBeats(2).scale(1.5,1.5) +
          SwingRight.scale(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          ExtendLeft.scale(1.0,0.5) +
          LeadLeft.changeBeats(2).scale(0.5,0.5) +
          SwingRight.scale(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5)
      ]),
  ];

