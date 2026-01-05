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

  final List<AnimatedCall> SpinChainThru = [

    AnimatedCall('Spin Chain Thru',
      formation:Formation('Ocean Waves RH BGGB'),
      from:'Right-Hand Waves',parts:'3;4.5;3',difficulty: 1,
      paths:[
          SwingRight +
          CastLeft +
          SwingRight +
          CastLeft,

          SwingRight,

          SwingRight,

          SwingRight +
          CastLeft +
          Stand.changeBeats(3) +
          CastLeft
      ]),

    AnimatedCall('Spin Chain Thru',
      formation:Formation('Ocean Waves LH BGGB'),
      from:'Left-Hand Waves',parts:'3;4.5;3',difficulty: 2,
      paths:[
          SwingLeft +
          CastRight +
          Stand.changeBeats(3) +
          CastRight,

          SwingLeft,

          SwingLeft,

          SwingLeft +
          CastRight +
          SwingLeft +
          CastRight
      ]),

    AnimatedCall('Spin Chain Thru',
      formation:Formation('Eight Chain Thru'),
      from:'Eight Chain Thru',parts:'5;4.5;3',difficulty: 2,
      taminator: '''
    The Facing Couples rule applies here.
    ''',
      paths:[
          ExtendLeft.changeBeats(2).scale(1.0,2.0) +
          SwingRight +
          CastLeft +
          SwingRight +
          CastLeft,

          Forward.changeBeats(2) +
          SwingRight,

          ExtendLeft.changeBeats(2).scale(1.0,2.0) +
          SwingRight +
          CastLeft +
          Stand.changeBeats(3) +
          CastLeft,

          Forward.changeBeats(2) +
          SwingRight
      ]),

    AnimatedCall('Left Spin Chain Thru',
      formation:Formation('Eight Chain Thru'),
      from:'Eight Chain Thru',parts:'5;4.5;3',difficulty: 3,
      taminator: '''
      The Facing Couples rule applies here.
      The caller says Left so everyone steps to a left-hand wave.
    ''',
      paths:[
          Forward.changeBeats(2) +
          SwingLeft,

          ExtendRight.changeBeats(2).scale(1.0,2.0) +
          SwingLeft +
          CastRight +
          SwingLeft +
          CastRight,

          Forward.changeBeats(2) +
          SwingLeft,

          ExtendRight.changeBeats(2).scale(1.0,2.0) +
          SwingLeft +
          CastRight +
          Stand.changeBeats(3) +
          CastRight
      ]),
  ];

