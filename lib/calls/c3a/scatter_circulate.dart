/*

  Taminations Square Dance Animations
  Copyright (C) 2026 Brad Christie

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

  final List<AnimatedCall> ScatterCirculate = [

    AnimatedCall('Scatter Circulate',
      formation:Formation('Normal Lines'),
      from:'Normal Lines',
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
      Path.fromMovement(Movement.fromData(beats: 3, hands: Hands.NONE, cx1: 1, cy1: 0, cx2: 0, cy2: -2.5, x2: 2, y2: -2.5, cx3: 1, cx4: 1, cy4: -.5, x4: 2, y4: -.5  )),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
      Path.fromMovement(Movement.fromData(beats: 3, hands: Hands.NONE, cx1: 1, cy1: 0, cx2: 1.5, cy2: 1.5, x2: 2, y2: 1.5, cx3: 1, cx4: 1, cy4: .5, x4: 2, y4: .5  )),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Scatter Circulate',
      formation:Formation('Lines Facing Out'),
      from:'Lines Facing Out',
      paths:[
          FlipLeft.changeBeats(4),

          RunLeft.changeBeats(4).scale(1.0,2.0),

          RunRight.changeBeats(4).scale(2.0,2.0),

          FlipRight.changeBeats(4)
      ]),

    AnimatedCall('Scatter Circulate',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:3,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-3,angle:180),
  ]),
      from:'Right-Hand Two-Faced Lines',
      paths:[
          Forward_4,

          Forward +
          ExtendRight.changeBeats(3).scale(3.0,2.0),

          RunRight.changeBeats(4).scale(1.0,2.0),

          RunRight.changeBeats(4)
      ]),

    AnimatedCall('Scatter Circulate',
      formation:Formation('Two-Faced Lines LH'),
      from:'Left-Hand Two-Faced Lines',
      paths:[
          RunLeft.changeBeats(4),

          RunLeft.changeBeats(4).scale(1.0,2.0),

        ExtendLeft.changeBeats(3).scale(3.0,2.0) +
            Forward,

          Forward_4
      ]),

    AnimatedCall('Scatter Circulate',
        formation: Formation('Eight Chain Thru'),
        from: 'Eight Chain Thru',
        paths: [
          ExtendLeft.scale(1, 0.5) +
              ExtendRight.scale(1,0.5),
          ExtendLeft.scale(1, 0.5) +
              ExtendRight.scale(1,0.5),
          ExtendLeft.scale(1.5, 0.5) +
              BackSashayRight.skew(0.5, -0.5),
          ExtendLeft.scale(1.5, 0.5) +
              SashayLeft.skew(0.5, -0.5)
        ]),

    AnimatedCall('Scatter Circulate',
        formation: Formation('Trade By'),
        from: 'Trade By',
        paths: [
          FlipLeft,
          RunRight,
          ExtendLeft.scale(1.5, 0.5) +
              SashayLeft.skew(0.5, -0.5),
          ExtendLeft.scale(1.5, 0.5) +
              BackSashayRight.skew(0.5, -0.5),
        ]),

    AnimatedCall('Scatter Circulate',
        formation: Formation('Magic Column RH'),
        from: 'Magic Columns, Right-Hand Centers',
        paths: [
          Forward_2,
          ExtendRight_2,
          Forward +
              ExtendRight.changeBeats(2).scale(1,2),
          RunLeft
        ]),

    AnimatedCall('Scatter Circulate',
        formation: Formation('Magic Column LH'),
        from: 'Magic Columns, Left-Hand Centers',
        paths: [
          RunRight,
          Forward +
              ExtendLeft.changeBeats(2).scale(1,2),
          ExtendLeft_2,
          Forward_2,
        ]),

    AnimatedCall('Scatter Circulate',
        formation: Formation('T-Bone LUUR'),
        from: 'T-Bones 1',
        paths: [
          RunRight,
          FlipLeft,
          ExtendLeft.scale(1.5, 0.5) +
              BackSashayRight.skew(0.5, -0.5),
          ExtendLeft.scale(1.5, 0.5) +
              SashayLeft.skew(0.5, -0.5),
        ]),

    AnimatedCall('Scatter Circulate',
        formation: Formation('T-Bone RDDL'),
        from: 'T-Bones 2',
        paths: [
          Forward_2,
          Forward_2,
          RunLeft.changeBeats(4).scale(1.0,2.0),
          RunRight.changeBeats(4).scale(2.0,2.0),
        ]),

    AnimatedCall('Scatter Circulate',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:1,y:3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:1,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:3,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:180),
  ]),
      from:'T-Bones 3',
      paths:[
          Forward_2,

          ExtendRight.scale(1.0,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.0,1.5),

          Forward_2,

          RunLeft.scale(1.0,2.0)
      ]),

    AnimatedCall('Scatter Circulate',
        formation:Formation('', dancers:[
          DancerModel.fromData(gender:Gender.BOY,x:1,y:3,angle:270),
          DancerModel.fromData(gender:Gender.GIRL,x:1,y:1,angle:0),
          DancerModel.fromData(gender:Gender.BOY,x:-1,y:3,angle:0),
          DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:270),
        ]),
        from:'T-Bones 4',
        paths:[
          Forward_2,
          RunRight.scale(1.0,2.0),
          Forward_2,
          ExtendLeft.changeBeats(1.5).scale(1.0,1.5) +
              ExtendLeft.scale(1.0,0.5)
        ]),

  ];

