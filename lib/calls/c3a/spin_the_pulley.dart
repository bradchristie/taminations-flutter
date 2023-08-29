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

  final List<AnimatedCall> SpinThePulley = [

    AnimatedCall('Heads Spin the Pulley',
      formation:Formation('Static Square'),
      from:'Static Square',parts:'7.5;2',
      paths:[
          ExtendLeft.changeBeats(3).scale(3.0,0.5) +
          SwingRight.scale(0.5,0.5) +
          HingeRight.scale(1.0,0.5) +
      Path.fromMovement(Movement.fromData(beats: 2, hands: Hands.LEFT, cx1: 1, cy1: 0, cx2: -.5, cy2: -2, x2: 2, y2: -2, cx3: 1, cx4: 1, cy4: -.4, x4: 2, y4: -.4  )) +
          RunRight.skew(-1.0,0.0),

          ExtendLeft.changeBeats(3).scale(3.0,0.5) +
          SwingRight.scale(0.5,0.5) +
          HingeRight.scale(1.0,0.5) +
      Path.fromMovement(Movement.fromData(beats: 2, hands: Hands.LEFT, cx1: 1, cy1: 0, cx2: -.5, cy2: -2, x2: 2, y2: -2, cx3: 1, cx4: 1, cy4: -.4, x4: 2, y4: -.4  )) +
          UmTurnRight.changeBeats(3).skew(1.0,0.0),

          Stand.changeBeats(7.5) +
      Path.fromMovement(Movement.fromData(beats: 2, hands: Hands.LEFT, cx1: 1, cy1: 0, cx2: -.5, cy2: -2, x2: 2, y2: -2, cx3: 1, cx4: 1, cy4: -.4, x4: 2, y4: -.4  )) +
          RunRight.skew(-1.0,0.0),

          Stand.changeBeats(9.5) +
          UmTurnRight.changeBeats(3).skew(1.0,0.0)
      ]),
  ];

