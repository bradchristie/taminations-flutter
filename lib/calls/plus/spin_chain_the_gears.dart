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
import '../../formations.dart';
import '../../moves.dart';

  final List<AnimatedCall> SpinChainTheGears = [

    AnimatedCall('Spin Chain the Gears',
      formation:Formations.OceanWavesRHBGGB,
      from:'Right-Hand Waves',parts:'3;4.5;3;4.5;3',difficulty: 1,
      paths:[
          SwingRight +
          CastLeft +
          SwingRight +
          CastLeft.changehands(5) +
          FlipRight,

          SwingRight +
          Stand.changeBeats(2) +
          FlipRight.changeBeats(5.5) +
          CastLeft.changehands(5) +
          SwingRight +
          CastLeft,

          SwingRight +
          Stand.changeBeats(2) +
          FlipRight.changeBeats(5.5) +
          CastLeft.changehands(5) +
          Stand.changeBeats(3) +
          CastLeft,

          SwingRight +
          CastLeft +
          Stand.changeBeats(3) +
          CastLeft.changehands(5) +
          FlipRight
      ]),

    AnimatedCall('Spin Chain the Gears',
      formation:Formations.OceanWavesLHBGGB,
      from:'Left-Hand Waves',parts:'3;4.5;3;4.5;3',difficulty: 2,
      paths:[
          SwingLeft +
          CastRight +
          Stand.changeBeats(3) +
          CastRight.changehands(6) +
          FlipLeft,

          SwingLeft +
          Stand.changeBeats(2) +
          FlipLeft.changeBeats(5.5) +
          CastRight.changehands(6) +
          Stand.changeBeats(3) +
          CastRight,

          SwingLeft +
          Stand.changeBeats(2) +
          FlipLeft.changeBeats(5.5) +
          CastRight.changehands(6) +
          SwingLeft +
          CastRight,

          SwingLeft +
          CastRight +
          SwingLeft +
          CastRight.changehands(6) +
          FlipLeft
      ]),

    AnimatedCall('Spin Chain the Gears',
      formation:Formations.EightChainThru,
      from:'Eight Chain Thru',parts:'5;4.5;3;4.5;3',difficulty: 2,
      paths:[
          ExtendLeft.changeBeats(2).scale(1.0,2.0) +
          SwingRight +
          CastLeft +
          SwingRight +
          CastLeft.changehands(5) +
          FlipRight,

          Forward.changeBeats(2) +
          SwingRight +
          Stand.changeBeats(2) +
          FlipRight.changeBeats(5.5) +
          CastLeft.changehands(5) +
          Stand.changeBeats(3) +
          CastLeft,

          ExtendLeft.changeBeats(2).scale(1.0,2.0) +
          SwingRight +
          CastLeft +
          Stand.changeBeats(3) +
          CastLeft.changehands(5) +
          FlipRight,

          Forward.changeBeats(2) +
          SwingRight +
          Stand.changeBeats(2) +
          FlipRight.changeBeats(5.5) +
          CastLeft.changehands(5) +
          SwingRight +
          CastLeft
      ]),

    AnimatedCall('Left Spin Chain the Gears',
      formation:Formations.EightChainThru,
      from:'Eight Chain Thru',group:' ',parts:'5;4.5;3;4.5;3',difficulty: 3,
      paths:[
          Forward.changeBeats(2) +
          SwingLeft +
          Stand.changeBeats(2) +
          FlipLeft.changeBeats(5.5) +
          CastRight.changehands(6) +
          Stand.changeBeats(3) +
          CastRight,

          ExtendRight.changeBeats(2).scale(1.0,2.0) +
          SwingLeft +
          CastRight +
          SwingLeft +
          CastRight.changehands(6) +
          FlipLeft,

          Forward.changeBeats(2) +
          SwingLeft +
          Stand.changeBeats(2) +
          FlipLeft.changeBeats(5.5) +
          CastRight.changehands(6) +
          SwingLeft +
          CastRight,

          ExtendRight.changeBeats(2).scale(1.0,2.0) +
          SwingLeft +
          CastRight +
          Stand.changeBeats(3) +
          CastRight.changehands(6) +
          FlipLeft
      ]),

    AnimatedCall('Spin Chain the Gears Part 2',
      formation:Formations.OceanWavesRHBGGB,
      from:'Right-Hand Waves',noDisplay: true,
      paths:[
          FlipRight.changeBeats(4.5),

          CastLeft,

          CastLeft,

          FlipRight.changeBeats(4.5)
      ]),

    AnimatedCall('Spin Chain the Gears Part 2',
      formation:Formations.OceanWavesLHBGGB,
      from:'Left-Hand Waves',noDisplay: true,
      paths:[
          FlipLeft.changeBeats(4.5),

          CastRight,

          CastRight,

          FlipLeft.changeBeats(4.5)
      ]),

    AnimatedCall('Spin Chain the Gears Part 6',
      formation:Formations.StarsLH,
      from:'Left-Hand Stars',noDisplay: true,
      paths:[
          CastLeft,

          FlipRight.changeBeats(4.5),

          CastLeft,

          FlipRight.changeBeats(4.5)
      ]),

    AnimatedCall('Spin Chain the Gears Part 6',
      formation:Formations.StarsRH,
      from:'Right-Hand Stars',noDisplay: true,
      paths:[
          CastRight,

          FlipLeft.changeBeats(4.5),

          CastRight,

          FlipLeft.changeBeats(4.5)
      ]),
  ];

