/*

  Taminations Square Dance Animations
  Copyright (C) 2024 Brad Christie

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
import '../../moves.dart';

  final List<AnimatedCall> CrossTheK = [

    AnimatedCall('Cross the K',
      formation:Formation('Normal Lines'),
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
      formation:Formation('Eight Chain Thru'),
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
      formation:Formation('Wave RH'),
      from:'Right-Hand Wave',fractions:'1.5',
      paths:[
          UmTurnLeft,

          SwingLeft
      ]),

    AnimatedCall('The K',
      formation:Formation('Wave LH'),
      from:'Left-Hand Wave',fractions:'1.5',
      paths:[
          UmTurnRight,

          SwingRight
      ]),

    AnimatedCall('The K',
      formation:Formation('Two-Faced Line RH'),
      from:'Right-Hand Two-Faced Line',fractions:'1.5',
      paths:[
          UmTurnLeft,

          SwingRight
      ]),

    AnimatedCall('The K',
      formation:Formation('Two-Faced Line LH'),
      from:'Left-Hand Two-Faced Line',fractions:'1.5',
      paths:[
          SwingLeft,

          UmTurnRight
      ]),

    AnimatedCall('The K',
      formation:Formation('Diamond RH'),
      from:'Right-Hand Diamond',fractions:'1.5',
      paths:[
          UmTurnLeft,

          SwingRight
      ]),

    AnimatedCall('The K',
      formation:Formation('Diamond LH'),
      from:'Left-Hand Diamond',fractions:'1.5',
      paths:[
          UmTurnRight,

          SwingLeft
      ]),

    AnimatedCall('The K',
      formation:Formation('Ocean Waves RH BGGB'),
      from:'Right-Hand Waves',fractions:'1.5',
      paths:[
          UmTurnLeft,

          SwingLeft,

          SwingLeft,

          UmTurnLeft
      ]),

    AnimatedCall('The K',
      formation:Formation('Lines Facing Out'),
      from:'Lines Facing Out',fractions:'1.5',
      paths:[
          UmTurnRight,

          FlipLeft,

          RunRight,

          UmTurnLeft
      ]),

    AnimatedCall('The K',
      formation:Formation('Diamonds RH Girl Points'),
      from:'Right-Hand Diamonds',fractions:'1.5',
      paths:[
          SwingRight,

          UmTurnLeft,

          SwingRight,

          UmTurnLeft
      ]),

    AnimatedCall('The K',
      formation:Formation('', dancers:[
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
      formation:Formation('Column LH GBGB'),
      from:'Left-Hand Columns',fractions:'1.5',
      paths:[
          UmTurnRight,

          SwingLeft.scale(0.5,1.0),

          SwingLeft.scale(0.5,1.0),

          UmTurnRight
      ]),

    AnimatedCall('The K',
      formation:Formation('3/4 Tag'),
      from:'3/4 Tag',fractions:'1.5',
      paths:[
          UmTurnRight,

          UmTurnLeft,

          SwingRight,

          SwingRight
      ]),

    AnimatedCall('The K',
      formation:Formation('Two-Faced Tidal Line RH'),
      from:'Tidal Two-Faced Line',fractions:'1.5',
      paths:[
          UmTurnLeft,

          SwingRight.scale(0.5,0.5),

          SwingRight.scale(0.5,0.5),

          UmTurnLeft
      ]),

    AnimatedCall('The K',
      formation:Formation('', dancers:[
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
      formation:Formation('Two-Faced Tidal Line RH'),
      group:' ',
      paths:[
          BeauWheel.scale(0.5,0.5),

          BelleWheel.scale(0.5,0.5),

          SwingLeft.scale(1.5,1.5),

          SwingLeft.changehands(Hands.BOTH).scale(0.5,0.5)
      ]),

    AnimatedCall('Concentric the K',
      formation:Formation('Two-Faced Tidal Line RH'),
      group:' ',
      paths:[
          UmTurnLeft.changeBeats(5),

          RunRight.changeBeats(5).scale(2.0,2.5),

          UmTurnRight.changeBeats(5),

          SwingLeft.changeBeats(5).changehands(Hands.BOTH).scale(0.5,0.5)
      ]),

    AnimatedCall('Crazy the K',
      formation:Formation('Two-Faced Tidal Line RH'),
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
      formation:Formation('Two-Faced Tidal Line RH'),
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
      formation:Formation('', dancers:[
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
      formation:Formation('Tidal Wave RH BGBG'),
      group:' ',
      paths:[
          UmTurnLeft,

          UmTurnRight,

          RunRight.scale(1.5,1.0),

          RunLeft.scale(0.5,1.0)
      ]),

    AnimatedCall('Tandem the K',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:180),
  ]),
      group:' ',fractions:'2',
      paths:[
          Pivotforwardright.changeBeats(4).scale(1.0,0.5),

          CounterRotateRight_2_0.changehands(Hands.RIGHT) +
          CounterRotateRight_2_0.changehands(Hands.RIGHT),

          CounterRotateRight_0_m2.changehands(Hands.RIGHT) +
          CounterRotateRight_0_m2.changehands(Hands.RIGHT),

          Pivotbackwardleft.changeBeats(4)
      ]),

    AnimatedCall('Cross Trail Thru the K',
      formation:Formation('Normal Lines'),
      from:'Lines',group:'  ',fractions:'5',
      taminator: '''
			This is the same as Cross the K
		''',
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

