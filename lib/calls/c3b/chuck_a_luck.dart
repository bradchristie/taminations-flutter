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

  final List<AnimatedCall> ChuckALuck = [

    AnimatedCall('Chuck-A-Luck',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:2,y:1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:2,y:3,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:1,angle:180),
  ]),
      group:' ',parts:'3',
      paths:[
          RunLeft.skew(-1.0,0.0) +
          ExtendLeft.scale(1.0,0.5) +
          QuarterLeft.changeBeats(1).skew(1.0,-0.5),

          QuarterRight.changeBeats(3).skew(-1.0,-2.0) +
          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5),

          QuarterLeft.changeBeats(3).skew(-1.0,2.0) +
          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5),

          RunRight.skew(-1.0,0.0) +
          ExtendLeft.scale(1.0,0.5) +
          QuarterRight.changeBeats(1).skew(1.0,-0.5)
      ]),

    AnimatedCall('Cross Chuck-A-Luck',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:2,y:1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:2,y:3,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:1,angle:180),
  ]),
      group:' ',parts:'4',
      paths:[
          RunRight.changeBeats(4).scale(2.0,2.0).skew(-1.0,0.0) +
          ExtendLeft.scale(1.0,0.5) +
          QuarterRight.changeBeats(1).skew(1.0,-0.5),

          QuarterRight.changeBeats(4).skew(-1.0,-2.0) +
          ExtendLeft.scale(1.0,0.5) +
      Path.fromMovement(Movement.fromData(beats: 4, hands: Hands.NONE, cx1: 1, cy1: 0, cx2: 0, cy2: -2.5, x2: 1, y2: -2.5, cx3: 1, cx4: 1, cy4: -.5, x4: 2, y4: -.5  )),

          QuarterLeft.changeBeats(4).skew(-1.0,2.0) +
          ExtendLeft.scale(1.0,0.5) +
      Path.fromMovement(Movement.fromData(beats: 4, hands: Hands.NONE, cx1: 1.5, cy1: 0, cx2: 2, cy2: 1.5, x2: 1, y2: 1.5, cx3: 1, cx4: 1, cy4: .5, x4: 2, y4: .5  )),

          RunLeft.changeBeats(4).scale(1.0,2.0).skew(-1.0,0.0) +
          ExtendLeft.scale(1.0,0.5) +
          QuarterLeft.changeBeats(1).skew(1.0,-0.5)
      ]),
  ];

