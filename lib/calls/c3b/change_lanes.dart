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
import '../../moves.dart';

  final List<AnimatedCall> ChangeLanes = [

    AnimatedCall('Change Lanes',
      formation:Formation('Two-Faced Lines RH'),
      from:'Right-Hand Two-Faced Lines',
      paths:[
          Forward_4.changeBeats(6) +
          RunRight.changeBeats(5).scale(1.0,2.0),

          HingeRight +
          SwingLeft +
          SwingRight +
          LeadRight.changeBeats(3.5).scale(3.0,1.0),

          HingeRight +
          Stand.changeBeats(3) +
          SwingRight +
          LeadRight.changeBeats(3.5).scale(3.0,1.0),

          RunRight.changeBeats(8).scale(2.0,3.0) +
          ExtendRight.changeBeats(3).scale(4.0,2.0)
      ]),

    AnimatedCall('Change Lanes',
      formation:Formation('Two-Faced Lines LH'),
      from:'Left-Hand Two-Faced Lines',
      paths:[
          RunLeft.changeBeats(8).scale(2.0,3.0) +
          ExtendLeft.changeBeats(3).scale(4.0,2.0),

          HingeLeft +
          Stand.changeBeats(3) +
          SwingLeft +
          LeadLeft.changeBeats(3.5).scale(3.0,1.0),

          HingeLeft +
          SwingRight +
          SwingLeft +
          LeadLeft.changeBeats(3.5).scale(3.0,1.0),

          Forward_4.changeBeats(6) +
          RunLeft.changeBeats(5).scale(1.0,2.0)
      ]),

    AnimatedCall('Change Lanes',
      formation:Formation('Ocean Waves RH BGGB'),
      from:'Right-Hand Waves',
      paths:[
          Forward_4.changeBeats(6) +
          RunRight.changeBeats(5).scale(2.0,2.0),

          HingeLeft +
          Stand.changeBeats(3) +
          SwingLeft +
          LeadLeft.changeBeats(3.5).scale(3.0,1.0),

          HingeLeft +
          SwingRight +
          SwingLeft +
          LeadLeft.changeBeats(3.5).scale(3.0,1.0),

          RunRight.changeBeats(8).scale(2.0,3.0) +
          ExtendRight.changeBeats(3).scale(4.0,2.0)
      ]),

    AnimatedCall('Change Lanes',
      formation:Formation('Ocean Waves LH BGGB'),
      from:'Left-Hand Waves',
      paths:[
          RunLeft.changeBeats(8).scale(2.0,3.0) +
          ExtendLeft.changeBeats(3).scale(4.0,2.0),

          HingeRight +
          SwingLeft +
          SwingRight +
          LeadRight.changeBeats(3.5).scale(3.0,1.0),

          HingeRight +
          Stand.changeBeats(3) +
          SwingRight +
          LeadRight.changeBeats(3.5).scale(3.0,1.0),

          Forward_4.changeBeats(6) +
          FlipLeft.changeBeats(5).scale(1.0,2.0)
      ]),

    AnimatedCall('Change Lanes',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:3,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:0),
  ]),
      from:'Columns',
      paths:[
          RunRight.changeBeats(6) +
          Stand.changeBeats(2) +
      Path.fromMovement(Movement.fromData(beats: 3.5, hands: Hands.NONE, cx1: -1, cy1: 0, cx2: 0, cy2: -2, x2: 1, y2: -2, cx3: 4, cx4: 4, cy4: -1, x4: 8, y4: -1  )),

          HingeRight.scale(0.5,1.0) +
          Stand.changeBeats(3) +
          SwingRight.scale(0.5,0.5) +
          LeadRight.changeBeats(4).scale(3.0,1.5),

          FlipLeft.changeBeats(6) +
          Stand.changeBeats(2) +
      Path.fromMovement(Movement.fromData(beats: 3.5, hands: Hands.NONE, cx1: 2, cy1: 0, cx2: 1, cy2: 1, x2: 1, y2: 2, cx3: 4, cx4: 4, cy4: 1, x4: 8, y4: 1  )),

          HingeRight.scale(0.5,1.0) +
          SwingLeft.scale(0.5,0.5) +
          SwingRight.scale(0.5,0.5) +
          QuarterRight.changeBeats(4).skew(3.0,0.5)
      ]),
  ];

