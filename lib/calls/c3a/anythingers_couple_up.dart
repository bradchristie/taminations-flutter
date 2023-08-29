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

  final List<AnimatedCall> AnythingersCoupleUp = [

    AnimatedCall('Counter Couple Up',
      formation:Formation('Ocean Waves RH BGGB'),
      group:'  ',parts:'4',
      paths:[
          CounterRotateRight_5_m1.changeBeats(4),

          CounterRotateLeft_m1_3.changeBeats(4) +
          UmTurnRight,

          CounterRotateLeft_3_m1.changeBeats(4),

          CounterRotateRight_1_m5.changeBeats(4) +
          UmTurnRight
      ]),

    AnimatedCall('Split Counter Couple Up',
      formation:Formation('Ocean Waves RH BGGB'),
      group:'  ',parts:'3',
      paths:[
          CounterRotateRight_2_0.changeBeats(3).changehands(Hands.RIGHT).skew(1.0,0.0),

          CounterRotateRight_0_m2.changeBeats(3).changehands(Hands.RIGHT).skew(-1.0,0.0) +
          UmTurnRight,

          CounterRotateRight_2_0.changeBeats(3).changehands(Hands.RIGHT).skew(1.0,0.0),

          CounterRotateRight_0_m2.changeBeats(3).changehands(Hands.RIGHT).skew(-1.0,0.0) +
          UmTurnRight
      ]),

    AnimatedCall('Trade Couple Up',
      formation:Formation('Ocean Waves RH BGGB'),
      group:'  ',parts:'4',
      paths:[
          Forward +
          ExtendRight.changeBeats(3).scale(3.0,2.0) +
          UmTurnLeft,

          RunLeft.changeBeats(4).scale(0.5,2.0),

          Forward +
          ExtendRight.changeBeats(3).scale(3.0,2.0) +
          UmTurnLeft,

          RunRight.changeBeats(4).scale(1.5,2.0)
      ]),
  ];

