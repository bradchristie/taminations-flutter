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

  final List<AnimatedCall> ScatterCirculate = [ 

    AnimatedCall('Scatter Circulate',
      formation:Formations.NormalLines,
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
      formation:Formations.LinesFacingOut,
      from:'Lines Facing Out',
      paths:[
          FlipLeft.changeBeats(4),

          RunLeft.changeBeats(4).scale(1.0,2.0),

          RunRight.changeBeats(4).scale(2.0,2.0),

          FlipRight.changeBeats(4)
      ]),

    AnimatedCall('Scatter Circulate',
      formation:Formation('', [
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
      formation:Formations.TwomFacedLinesLH,
      from:'Left-Hand Two-Faced Lines',
      paths:[
          RunLeft.changeBeats(4),

          RunLeft.changeBeats(4).scale(1.0,2.0),

          Forward +
          ExtendLeft.changeBeats(3).scale(3.0,2.0),

          Forward_4
      ]),

    AnimatedCall('Scatter Circulate',
      formation:Formation('T-Bone RDLU', [
        DancerModel.fromData(gender:Gender.BOY,x:1,y:3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:1,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:3,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:180),
  ]),
      from:'T-Bone Lines',
      paths:[
          Forward_2,

          ExtendRight.scale(1.0,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.0,1.5),

          Forward_2,

          RunLeft.scale(1.0,2.0)
      ]),
  ];

