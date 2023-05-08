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
import '../../moves.dart';

  final List<AnimatedCall> ReverseOrder = [

    AnimatedCall('Reverse Order Diamond Chain Thru',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:2,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:2,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:2,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:2,angle:270),
  ]),
      group:'Reverse Order',parts:'4.5;3',
      paths:[
          CastRight +
          SwingLeft +
          LeadRight.changeBeats(3).scale(3.0,1.0),

          Stand.changeBeats(7.5) +
          LeadRight.changeBeats(3).scale(1.0,3.0),

          Stand.changeBeats(7.5) +
          LeadRight.changeBeats(3).scale(1.0,3.0),

          CastRight +
          Stand.changeBeats(3) +
          LeadRight.changeBeats(3).scale(3.0,1.0)
      ]),

    AnimatedCall('Reverse Order Mix',
      formation:Formation('Wave RH'),
      group:'Reverse Order',parts:'3',
      paths:[
          Stand.changeBeats(3) +
          DodgeRight,

          SwingLeft +
          RunLeft.scale(1.0,2.0)
      ]),

    AnimatedCall('Reverse Order Pass the Ocean',
      formation:Formation('Eight Chain Thru'),
      group:'Reverse Order',parts:'2;1.5',
      paths:[
          ExtendLeft.changeBeats(2).scale(1.5,2.0) +
          QuarterRight +
          ExtendLeft.scale(1.0,0.5) +
          Forward,

          Forward.changeBeats(2).scale(1.5,1.0) +
          QuarterRight +
          ExtendLeft.scale(1.0,0.5) +
          Forward,

          ExtendLeft.changeBeats(2).scale(0.5,2.0) +
          QuarterRight +
          ExtendLeft.scale(1.0,0.5) +
          ExtendRight,

          Forward.changeBeats(2).scale(0.5,1.0) +
          QuarterRight +
          ExtendLeft.scale(1.0,0.5) +
          ExtendRight
      ]),

    AnimatedCall('Reverse Order Recoil',
      formation:Formation('Wave RH'),
      group:'Reverse Order',parts:'3',
      paths:[
          RunRight.skew(1.0,0.0) +
          UmTurnLeft.changeBeats(4).changehands(5).skew(1.0,0.0),

          Forward.changeBeats(3) +
          RunLeft.changeBeats(4).changehands(5).scale(2.0,2.0).skew(-1.0,0.0)
      ]),

    AnimatedCall('Reverse Order Remake',
      formation:Formation('Ocean Waves RH BGGB'),
      group:'Reverse Order',parts:'4.5;3',
      paths:[
          CastRight +
          Stand.changeBeats(3) +
          HingeRight,

          CastRight +
          SwingLeft +
          HingeRight,

          CastRight +
          Stand.changeBeats(3) +
          HingeRight,

          CastRight +
          SwingLeft +
          HingeRight
      ]),

    AnimatedCall('Reverse Order Right and Left Thru',
      formation:Formation('Lines Facing Out'),
      group:'Reverse Order',parts:'3',
      paths:[
          BelleWheel.scale(0.67,1.0) +
          PullLeft.scale(2.0,0.5) +
          ExtendRight.scale(2.0,0.5),

          BeauWheel.scale(0.67,1.0) +
          PullLeft.scale(2.0,0.5) +
          ExtendRight.scale(2.0,0.5),

          BelleWheel.scale(0.67,1.0) +
          PullLeft.scale(2.0,0.5) +
          ExtendRight.scale(2.0,0.5),

          BeauWheel.scale(0.67,1.0) +
          PullLeft.scale(2.0,0.5) +
          ExtendRight.scale(2.0,0.5)
      ]),

    AnimatedCall('Reverse Order Scramble',
      formation:Formation('Normal Lines'),
      group:'Reverse Order',parts:'6',
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          SwingRight.scale(0.5,0.5) +
          ExtendRight.scale(1.0,0.5) +
          LeadLeft.changeBeats(2).changehands(1).scale(2.0,2.0).skew(0.0,-1.0),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
      Path.fromMovement(Movement.fromData(beats: 4, hands: Hands.NONE, cx1: 1, cy1: 0, cx2: 0, cy2: -2.5, x2: 1, y2: -2.5, cx3: 1, cx4: 1, cy4: -.5, x4: 2, y4: -.5  )) +
          QuarterLeft.changeBeats(2).changehands(2).skew(0.0,-1.0),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
      Path.fromMovement(Movement.fromData(beats: 4, hands: Hands.NONE, cx1: 1, cy1: 0, cx2: 2, cy2: 1.5, x2: 1, y2: 1.5, cx3: 1, cx4: 1, cy4: .5, x4: 2, y4: .5  )) +
          QuarterRight.changeBeats(2).changehands(1).skew(0.0,1.0),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          SwingRight.scale(0.5,0.5) +
          ExtendRight.scale(1.0,0.5) +
          LeadRight.changeBeats(2).changehands(2).scale(2.0,2.0).skew(0.0,1.0)
      ]),

    AnimatedCall('Reverse Order Travel Thru',
      formation:Formation('Two-Faced Line RH'),
      group:'Reverse Order',parts:'1.5',
      paths:[
          HingeRight.changehands(2) +
          PullLeft.scale(2.0,0.5) +
          ExtendRight.scale(2.0,0.5),

          BackHingeLeft.changehands(1) +
          PullLeft.scale(2.0,0.5) +
          ExtendRight.scale(2.0,0.5)
      ]),
  ];

