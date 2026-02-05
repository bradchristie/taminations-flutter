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

  final List<AnimatedCall> Scramble = [

    AnimatedCall('Scramble',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.GIRL,x:2,y:1,angle:0),
        Dancer.fromData(gender:Gender.BOY,x:2,y:3,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:-2,y:3,angle:180),
        Dancer.fromData(gender:Gender.BOY,x:-2,y:1,angle:180),
  ]),
      from:'Lines Facing Out',parts:'2',
      paths:[
          QuarterRight.changeBeats(2).skew(-1.0,0.0) +
          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.changeBeats(4).scale(1.0,2.5) +
          Forward,

          LeadRight.changeBeats(2).scale(1.0,2.0) +
          ExtendLeft.scale(1.0,0.5) +
          SwingRight.scale(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          LeadLeft.changeBeats(2).scale(1.0,2.0) +
          ExtendLeft.scale(1.0,0.5) +
          SwingRight.scale(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          QuarterLeft.changeBeats(2).skew(-1.0,0.0) +
          ExtendLeft.scale(1.0,0.5) +
          Forward +
          ExtendLeft.changeBeats(4).scale(1.0,1.5)
      ]),

    AnimatedCall('Scramble',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.GIRL,x:2,y:1,angle:180),
        Dancer.fromData(gender:Gender.BOY,x:2,y:3,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:-2,y:3,angle:180),
        Dancer.fromData(gender:Gender.BOY,x:-2,y:1,angle:0),
  ]),
      from:'Inverted Lines, Ends Facing Out',parts:'2',
      paths:[
          QuarterLeft.changeBeats(2).skew(1.0,0.0) +
          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.changeBeats(4).scale(1.0,2.5) +
          Forward,

          LeadRight.changeBeats(2).scale(1.0,2.0) +
          ExtendLeft.scale(1.0,0.5) +
          SwingRight.scale(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          LeadLeft.changeBeats(2).scale(1.0,2.0) +
          ExtendLeft.scale(1.0,0.5) +
          SwingRight.scale(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          QuarterRight.changeBeats(2).skew(1.0,0.0) +
          ExtendLeft.scale(1.0,0.5) +
          Forward +
          ExtendLeft.changeBeats(4).scale(1.0,1.5)
      ]),

    AnimatedCall('Central Scramble',
      formation:Formation('Lines Facing Out'),
      group:' ',parts:'2',
      paths:[
          QuarterLeft.changeBeats(2).skew(-1.0,0.0) +
          ExtendLeft.scale(1.0,0.5) +
      Path.fromMovement(Movement.fromData(beats: 4, hands: Hands.NONE, cx1: 1, cy1: 0, cx2: 1.5, cy2: 1.5, x2: 1, y2: 1.5, cx3: 1, cx4: 1, cy4: .5, x4: 2, y4: .5  )),

          QuarterRight.changeBeats(2).skew(-1.0,0.0) +
          ExtendLeft.scale(1.0,0.5) +
      Path.fromMovement(Movement.fromData(beats: 4, hands: Hands.NONE, cx1: 1, cy1: 0, cx2: 0, cy2: -2.5, x2: 1, y2: -2.5, cx3: 1, cx4: 1, cy4: -.5, x4: 2, y4: -.5  )),

          QuarterLeft.changeBeats(2).skew(-1.0,0.0) +
          ExtendLeft.scale(1.0,0.5) +
      Path.fromMovement(Movement.fromData(beats: 4, hands: Hands.NONE, cx1: 1, cy1: 0, cx2: 1.5, cy2: 1.5, x2: 1, y2: 1.5, cx3: 1, cx4: 1, cy4: .5, x4: 2, y4: .5  )),

          QuarterRight.changeBeats(2).skew(-1.0,0.0) +
          ExtendLeft.scale(1.0,0.5) +
      Path.fromMovement(Movement.fromData(beats: 4, hands: Hands.NONE, cx1: 1, cy1: 0, cx2: 0, cy2: -2.5, x2: 1, y2: -2.5, cx3: 1, cx4: 1, cy4: -.5, x4: 2, y4: -.5  ))
      ]),
  ];

