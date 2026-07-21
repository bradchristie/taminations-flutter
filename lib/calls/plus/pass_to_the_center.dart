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

  final List<AnimatedCall> PassToTheCenter = [

    AnimatedCall('Pass to the Center',
      formation:Formation('Pass Thru'),
      from:'Eight Chain Thru',parts:'2',difficulty: 1,
      paths:[
          PassThru,

          PassThru,

          PassThru +
          RunRight.changeBeats(4),

          PassThru +
          FlipLeft.changeBeats(4)
      ]),

    AnimatedCall('Pass to the Center',
      formation:Formation('Ocean Waves RH BGGB Compact'),
      from:'Right-Hand Waves',parts: '2',difficulty: 3,
      paths:[
          ExtendRight.changeBeats(2).scale(0.5,2.0),

          Forward_1p5.changeBeats(2) +
          FlipLeft.changeBeats(4),

          Forwardp5.changeBeats(2),

          ExtendRight.changeBeats(2).scale(1.5,2) +
              RunRight.changeBeats(4)
      ]),
  ];

