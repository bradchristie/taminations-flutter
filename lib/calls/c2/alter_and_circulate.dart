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

  final List<AnimatedCall> AlterAndCirculate = [

    AnimatedCall('Alter and Circulate',
      formation:Formation('Ocean Waves RH BGGB'),
      from:'Right-Hand Waves',parts:'3;4.5;3;4',
      paths:[
          SwingRight +
          CastLeft +
          SwingRight +
          SwingLeft.changeBeats(4) +
          LeadLeft.changeBeats(3).scale(3.0,1.0),

          SwingRight +
          UmTurnRight +
          RunLeft.changeBeats(4.5).scale(3.0,3.0) +
          RunLeft.changeBeats(4).scale(1.5,3.0) +
          FlipLeft,

          SwingRight +
          UmTurnRight +
          Forward_4.changeBeats(4.5) +
          RunLeft.changeBeats(4).scale(1.5,3.0) +
          FlipLeft,

          SwingRight +
          CastLeft +
          Stand.changeBeats(3) +
          SwingLeft.changeBeats(4) +
          LeadLeft.changeBeats(3).scale(3.0,1.0)
      ]),

    AnimatedCall('Alter and Circulate',
      formation:Formation('Ocean Waves LH BGGB'),
      from:'Left-Hand Waves',fractions:'3;4.5;3;4',
      paths:[
          SwingLeft +
          CastRight +
          Stand.changeBeats(3) +
          SwingRight.changeBeats(4) +
          LeadRight.changeBeats(3).scale(3.0,1.0),

          SwingLeft +
          UmTurnLeft +
          Forward_4.changeBeats(4.5) +
          RunRight.changeBeats(4).scale(1.5,3.0) +
          FlipRight,

          SwingLeft +
          UmTurnLeft +
          RunRight.changeBeats(4.5).scale(3.0,3.0) +
          RunRight.changeBeats(4).scale(1.5,3.0) +
          FlipRight,

          SwingLeft +
          CastRight +
          SwingLeft +
          SwingRight.changeBeats(4) +
          LeadRight.changeBeats(3).scale(3.0,1.0)
      ]),
  ];

