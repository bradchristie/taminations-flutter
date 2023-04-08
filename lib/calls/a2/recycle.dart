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
import '../../formations.dart';
import '../../moves.dart';

  final List<AnimatedCall> Recycle = [

    AnimatedCall('Recycle',
      formation:Formations.FacingCouplesCompact,
      from:'Facing Couples',
      paths:[
          UmTurnRight.changeBeats(3).skew(1.5,0.0),

      Path.fromMovement(Movement.fromData(beats: 3, hands: Hands.NONE, cx1: -.5, cy1: 0, cx2: 0, cy2: 4, x2: 1.5, y2: 4, cx3: 1, cx4: 2, cy4: 2, x4: 3, y4: 2  ))
      ]),

    AnimatedCall('Recycle',
      formation:Formations.EightChainThru,
      from:'Eight Chain Thru',
      paths:[
          UmTurnRight.changeBeats(3).skew(1.0,0.0),

      Path.fromMovement(Movement.fromData(beats: 3, hands: Hands.NONE, cx1: -1, cy1: 2, cx2: 1, cy2: 4, x2: 1, y2: 4, cx3: 1, cx4: 2, cy4: 2, x4: 3, y4: 2  )),

          UmTurnRight.changeBeats(3).skew(1.0,0.0),

      Path.fromMovement(Movement.fromData(beats: 3, hands: Hands.NONE, cx1: -1, cy1: 2, cx2: 1, cy2: 4, x2: 1, y2: 4, cx3: 1, cx4: 2, cy4: 2, x4: 3, y4: 2  ))
      ]),

    AnimatedCall('Recycle',
      formation:Formations.NormalLines,
      from:'Lines',
      paths:[
          UmTurnRight.changeBeats(3).skew(2.0,-0.5),

      Path.fromMovement(Movement.fromData(beats: 3, hands: Hands.NONE, cx1: -1, cy1: 2, cx2: 1, cy2: 2.5, x2: 2, y2: 2.5, cx3: 1, cx4: 2, cy4: 2, x4: 3, y4: 2  )),

          UmTurnRight.changeBeats(3).skew(2.0,-0.5),

      Path.fromMovement(Movement.fromData(beats: 3, hands: Hands.NONE, cx1: -1, cy1: 2, cx2: 1, cy2: 2.5, x2: 2, y2: 2.5, cx3: 1, cx4: 2, cy4: 2, x4: 3, y4: 2  ))
      ]),

    AnimatedCall('Reverse Recycle',
      formation:Formations.FacingCouplesCompact,
      from:'Facing Couples',
      paths:[
      Path.fromMovement(Movement.fromData(beats: 3, hands: Hands.NONE, cx1: -.5, cy1: 0, cx2: 0, cy2: -4, x2: 1.5, y2: -4, cx3: 1, cx4: 2, cy4: -2, x4: 3, y4: -2  )),

          UmTurnLeft.changeBeats(3).skew(1.5,0.0)
      ]),

    AnimatedCall('Reverse Recycle',
      formation:Formations.EightChainThru,
      from:'Eight Chain Thru',
      paths:[
      Path.fromMovement(Movement.fromData(beats: 3, hands: Hands.NONE, cx1: -1, cy1: -2, cx2: 1, cy2: -4, x2: 1, y2: -4, cx3: 1, cx4: 2, cy4: -2, x4: 3, y4: -2  )),

          UmTurnLeft.changeBeats(3).skew(1.0,0.0),

      Path.fromMovement(Movement.fromData(beats: 3, hands: Hands.NONE, cx1: -1, cy1: -2, cx2: 1, cy2: -4, x2: 1, y2: -4, cx3: 1, cx4: 2, cy4: -2, x4: 3, y4: -2  )),

          UmTurnLeft.changeBeats(3).skew(1.0,0.0)
      ]),

    AnimatedCall('Reverse Recycle',
      formation:Formations.NormalLines,
      from:'Lines',
      paths:[
      Path.fromMovement(Movement.fromData(beats: 3, hands: Hands.NONE, cx1: -1, cy1: -2, cx2: 1, cy2: -2.5, x2: 2, y2: -2.5, cx3: 1, cx4: 2, cy4: -2, x4: 3, y4: -2  )),

          UmTurnLeft.changeBeats(3).skew(2.0,0.5),

      Path.fromMovement(Movement.fromData(beats: 3, hands: Hands.NONE, cx1: -1, cy1: -2, cx2: 1, cy2: -2.5, x2: 2, y2: -2.5, cx3: 1, cx4: 2, cy4: -2, x4: 3, y4: -2  )),

          UmTurnLeft.changeBeats(3).skew(2.0,0.5)
      ]),

    AnimatedCall('As Couples Recycle',
      formation:Formations.NormalLines,
      from:'Lines',group:' ',
      paths:[
          RunRight.changeBeats(5).changehands(2).skew(2.0,-0.5),

          UmTurnRight.changeBeats(5).changehands(1).skew(2.0,0.5),

      Path.fromMovement(Movement.fromData(beats: 5, hands: Hands.GRIPRIGHT, cx1: -1, cy1: 2, cx2: 1, cy2: 4.5, x2: 2, y2: 4.5, cx3: 1, cx4: 2, cy4: 2, x4: 3, y4: 2  )),

      Path.fromMovement(Movement.fromData(beats: 5, hands: Hands.GRIPLEFT, cx1: -1, cy1: 2, cx2: 1, cy2: 5.5, x2: 2, y2: 5.5, cx3: 1, cx4: 2, cy4: 2, x4: 3, y4: 2  ))
      ]),

    AnimatedCall('As Couples Reverse Recycle',
      formation:Formations.NormalLines,
      from:'Lines',group:' ',
      paths:[
      Path.fromMovement(Movement.fromData(beats: 5, hands: Hands.GRIPRIGHT, cx1: -1, cy1: -2, cx2: 1, cy2: -5.5, x2: 2, y2: -5.5, cx3: 1, cx4: 2, cy4: -2, x4: 3, y4: -2  )),

      Path.fromMovement(Movement.fromData(beats: 5, hands: Hands.GRIPLEFT, cx1: -1, cy1: -2, cx2: 1, cy2: -4.5, x2: 2, y2: -4.5, cx3: 1, cx4: 2, cy4: -2, x4: 3, y4: -2  )),

          UmTurnLeft.changeBeats(5).changehands(2).skew(2.0,-0.5),

          RunLeft.changeBeats(5).changehands(1).skew(2.0,0.5)
      ]),

    AnimatedCall('All 8 Recycle',
      formation:Formations.StaticSquare,
      from:'Static Square',group:' ',
      paths:[
          UmTurnRight.changeBeats(4).skew(3.0,0.0),

          Stand +
          ExtendLeft.changeBeats(3).scale(3.0,4.0),

          UmTurnRight.changeBeats(4).skew(3.0,0.0),

          Stand +
          ExtendLeft.changeBeats(3).scale(3.0,4.0)
      ]),

    AnimatedCall('All 8 Reverse Recycle',
      formation:Formations.StaticSquare,
      from:'Static Square',group:' ',
      paths:[
          Stand +
          ExtendRight.changeBeats(3).scale(3.0,4.0),

          UmTurnLeft.changeBeats(4).skew(3.0,0.0),

          Stand +
          ExtendRight.changeBeats(3).scale(3.0,4.0),

          UmTurnLeft.changeBeats(4).skew(3.0,0.0)
      ]),
  ];

