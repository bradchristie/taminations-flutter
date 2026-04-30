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
      formation:Formation('Ocean Waves RH BGGB Compact'),
      from:'Right-Hand Waves',parts:'3;4.5;3',difficulty: 1,
      paths:[
        SwingRight +
            HingeLeft.scale(0.75,1) +
            SwingLeft.scale(0.75,0.75) +
            SwingRight.scale(0.75,0.75) +
            SwingLeft.scale(0.75,0.75) +
            HingeLeft.scale(1,0.75),

        SwingRight,

        SwingRight,

        SwingRight +
            HingeLeft.scale(0.75,1) +
            SwingLeft.scale(0.75,0.75) +
            Stand.changeBeats(3) +
            SwingLeft.scale(0.75,0.75) +
            HingeLeft.scale(1,0.75),
      ]),

    AnimatedCall('Spin Chain Thru',
      formation:Formation('Ocean Waves LH BGGB Compact'),
      from:'Left-Hand Waves',parts:'3;4.5;3',difficulty: 2,
      paths:[
        SwingLeft +
            HingeRight.scale(0.75,1) +
            SwingRight.scale(0.75,0.75) +
            Stand.changeBeats(3) +
            SwingRight.scale(0.75,0.75) +
            HingeRight.scale(1,0.75),

        SwingLeft,

        SwingLeft,

        SwingLeft +
            HingeRight.scale(0.75,1) +
            SwingRight.scale(0.75,0.75) +
            SwingLeft.scale(0.75,0.75) +
            SwingRight.scale(0.75,0.75) +
            HingeRight.scale(1,0.75)
      ]),

    AnimatedCall('Spin Chain Thru',
      formation:Formation('Eight Chain Thru'),
      from:'Eight Chain Thru',parts:'5;4.5;3',difficulty: 2,
      taminator: '''
    The Facing Couples rule applies here.
    ''',
      paths:[
        ExtendLeft.changeBeats(2).scale(1.5, 2) +
            SwingRight +
            HingeLeft.scale(0.75, 1) +
            SwingLeft.scale(0.75, 0.75) +
            SwingRight.scale(0.75, 0.75) +
            SwingLeft.scale(0.75, 0.75) +
            HingeLeft.scale(1, 0.75),

        Forward_1p5.changeBeats(2) +
            SwingRight,

        ExtendLeft.changeBeats(2).scale(0.5, 2) +
            SwingRight +
            HingeLeft.scale(0.75, 1) +
            SwingLeft.scale(0.75, 0.75) +
            Stand.changeBeats(3) +
            SwingLeft.scale(0.75, 0.75) +
            HingeLeft.scale(1, 0.75),

        Forwardp5.changeBeats(2) +
            SwingRight,
      ]),

    AnimatedCall('Left Spin Chain Thru',
      formation:Formation('Eight Chain Thru'),
      from:'Eight Chain Thru',parts:'5;4.5;3',difficulty: 3,
      taminator: '''
      The Facing Couples rule applies here.
      The caller says Left so everyone steps to a left-hand wave.
    ''',
      paths:[
        Forward_1p5.changeBeats(2) +
            SwingLeft,

        ExtendRight.changeBeats(2).scale(1.5,2) +
            SwingLeft +
            HingeRight.scale(0.75,1) +
            SwingRight.scale(0.75,0.75) +
            SwingLeft.scale(0.75,0.75) +
            SwingRight.scale(0.75,0.75) +
            HingeRight.scale(1,0.75),

        Forwardp5.changeBeats(2) +
            SwingLeft,

        ExtendRight.changeBeats(2).scale(0.5,2) +
            SwingLeft +
            HingeRight.scale(0.75,1) +
            SwingRight.scale(0.75,0.75) +
            Stand.changeBeats(3) +
            SwingRight.scale(0.75,0.75) +
            HingeRight.scale(1,0.75),

      ]),
  ];

