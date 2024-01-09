/*

  Taminations Square Dance Animations
  Copyright (C) 2024 Brad Christie

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

  final List<AnimatedCall> Q14TheDeucey = [

    AnimatedCall('1/4 the Deucey',
      formation:Formation('Ocean Waves RH GBGB'),
      from:'Right-Hand Waves',fractions:'2;2;2',
      paths:[
          HingeRight.changeBeats(2) +
          HingeLeft.changeBeats(2) +
          HingeRight.changeBeats(2) +
          ExtendLeft.changeBeats(2).scale(2.0,2.0),

          HingeRight.changeBeats(2) +
          RunRight.changeBeats(6).scale(2.0,3.0),

          HingeRight.changeBeats(2) +
          HingeLeft.changeBeats(2) +
          Stand.changeBeats(2) +
          HingeLeft.changeBeats(2),

          HingeRight.changeBeats(2) +
          ExtendRight.changeBeats(2).scale(2.0,2.0) +
          HingeRight.changeBeats(2) +
          HingeLeft.changeBeats(2)
      ]),

    AnimatedCall('1/4 the Deucey',
      formation:Formation('Ocean Waves LH BGGB'),
      from:'Left-Hand Waves',fractions:'2;2;2',
      paths:[
          HingeLeft.changeBeats(2) +
          ExtendLeft.changeBeats(2).scale(2.0,2.0) +
          HingeLeft.changeBeats(2) +
          HingeRight.changeBeats(2),

          HingeLeft.changeBeats(2) +
          HingeRight.changeBeats(2) +
          Stand.changeBeats(2) +
          HingeRight.changeBeats(2),

          HingeLeft.changeBeats(2) +
          RunLeft.changeBeats(6).scale(2.0,3.0),

          HingeLeft.changeBeats(2) +
          HingeRight.changeBeats(2) +
          HingeLeft.changeBeats(2) +
          ExtendRight.changeBeats(2).scale(2.0,2.0)
      ]),

    AnimatedCall('3/4 the Deucey',
      formation:Formation('Ocean Waves RH BGGB'),
      from:'Right-Hand Waves',fractions:'4.5;4.5;4.5',
      paths:[
          CastRight +
          RunRight.changeBeats(13.5).scale(2.0,3.0),

          CastRight +
          CastLeft +
          Stand.changeBeats(4.5) +
          CastLeft,

          CastRight +
          ExtendRight.changeBeats(4.5).scale(2.0,2.0) +
          CastRight +
          CastLeft,

          CastRight +
          CastLeft +
          CastRight +
          ExtendLeft.changeBeats(4.5).scale(2.0,2.0)
      ]),

    AnimatedCall('3/4 the Deucey',
      formation:Formation('Ocean Waves LH BGGB'),
      from:'Left-Hand Waves',fractions:'4.5;4.5;4.5',
      paths:[
          CastLeft +
          CastRight +
          CastLeft +
          ExtendRight.changeBeats(4.5).scale(2.0,2.0),

          CastLeft +
          ExtendLeft.changeBeats(4.5).scale(2.0,2.0) +
          CastLeft +
          CastRight,

          CastLeft +
          CastRight +
          Stand.changeBeats(4.5) +
          CastRight,

          CastLeft +
          RunLeft.changeBeats(13.5).scale(2.0,3.0)
      ]),
  ];

