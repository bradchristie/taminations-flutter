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

  final List<AnimatedCall> EightByAnything = [

    AnimatedCall('Eight by Reach Out',
      formation:Formations.n3and_1lines3,
      group:'Eight by',
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          LeadRight.changeBeats(3).scale(2.5,2.5) +
          QuarterLeft.skew(1.0,0.0) +
          QuarterLeft +
          BackHingeRight.scale(2.0,0.5) +
          QuarterLeft,

          Forward_2 +
          RunLeft,

          RunRight +
          Forward_2,

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          LeadLeft.changeBeats(4.5).scale(3.5,2.5) +
          HingeLeft.changeBeats(3).scale(2.0,0.5) +
          QuarterLeft
      ]),

    AnimatedCall('Eight by Swap Around',
      formation:Formations.NormalLines,
      from:'Lines',group:'Eight by',
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          LeadRight.changeBeats(3).scale(2.5,2.5) +
          QuarterLeft.skew(1.0,0.0) +
          QuarterLeft +
          BackHingeRight.scale(1.0,0.5) +
          QuarterLeft,

          FlipRight.skew(1.0,0.0),

          Forward_3,

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          LeadLeft.changeBeats(4.5).scale(3.5,2.5) +
          HingeLeft.changeBeats(3).scale(1.0,0.5) +
          QuarterLeft
      ]),

    AnimatedCall('Eight by Wheel Thru',
      formation:Formations.NormalLines,
      from:'Lines',group:'Eight by',
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          LeadRight.changeBeats(3).scale(2.5,2.5) +
          QuarterLeft.skew(1.0,0.0) +
          QuarterLeft +
          BackHingeRight.scale(2.0,0.5) +
          QuarterLeft,

      Path.fromMovement(Movement.fromData(beats: 5, hands: Hands.NONE, cx1: 2.5, cy1: 0, cx2: 3, cy2: -.5, x2: 3, y2: -3  )),

          QuarterRight.changeBeats(5).skew(1.0,-1.0),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          LeadLeft.changeBeats(4.5).scale(3.5,2.5) +
          HingeLeft.changeBeats(3).scale(2.0,0.5) +
          QuarterLeft
      ]),

    AnimatedCall('Eight by Swing Thru',
      formation:Formations.NormalLines,
      from:'Lines',group:'Eight by',
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          LeadRight.changeBeats(3).scale(2.5,2.5) +
          QuarterLeft.skew(1.0,0.0) +
          QuarterLeft +
          BackHingeRight.scale(2.0,0.5) +
          QuarterLeft,

          ExtendLeft.changeBeats(3).scale(2.0,0.5) +
          SwingRight.scale(0.5,0.25) +
          SwingLeft,

          ExtendLeft.changeBeats(3).scale(2.0,0.5) +
          SwingRight.scale(0.5,1.25) +
          Stand.changeBeats(3),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          LeadLeft.changeBeats(4.5).scale(3.5,2.5) +
          HingeLeft.changeBeats(3).scale(2.0,0.5) +
          QuarterLeft
      ]),

    AnimatedCall('Eight by Flip the Diamond',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:0,y:6,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:0,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-2,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-4,angle:0),
  ]),
      group:'Eight by',
      paths:[
          LeadRight.changeBeats(3.75).scale(2.5,5.5) +
          QuarterLeft.skew(1.5,0.0) +
          QuarterLeft +
          BackHingeRight.changeBeats(2).scale(1.0,0.5) +
          QuarterLeft,

          LeadRight.changeBeats(3).scale(3.0,1.0),

          RunRight.scale(1.0,0.5),

          LeadLeft.changeBeats(4.25).scale(3.5,4.0) +
          HingeLeft.changeBeats(4).scale(2.0,0.5) +
          QuarterLeft
      ]),
  ];

