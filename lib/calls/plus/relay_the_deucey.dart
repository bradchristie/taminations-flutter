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

  final List<AnimatedCall> RelayTheDeucey = [

    AnimatedCall('Relay the Deucey',
      formation:Formation('Ocean Waves RH BGGB'),
      from:'Right-Hand Waves',parts:'3;4.5;3;3;3',difficulty: 1,
      paths:[
          SwingRight +
          CastLeft +
          SwingRight +
          SwingLeft +
          SwingRight +
          LeadRight.changeBeats(4.5).scale(3.0,3.0),

          SwingRight +
          Forward_2.changeBeats(4.5) +
          Forward_2.changeBeats(3) +
          LeadRight.changeBeats(3).scale(3.0,3.0) +
          SwingRight +
          CastLeft,

          SwingRight +
          LeadRight.changeBeats(4.5).scale(3.0,3.0) +
          SwingRight +
          SwingLeft +
          SwingRight +
          CastLeft,

          SwingRight +
          CastLeft +
          SwingRight +
          LeadRight.changeBeats(3).scale(3.0,3.0) +
          Forward_2.changeBeats(3) +
          Forward_2.changeBeats(4.5)
      ]),

    AnimatedCall('Relay the Deucey',
      formation:Formation('Ocean Waves LH BGGB'),
      from:'Left-Hand Waves',parts:'3;4.5;3;3;3',difficulty: 2,
      paths:[
          SwingLeft +
          CastRight +
          SwingLeft +
          LeadLeft.changeBeats(3).scale(3.0,3.0) +
          Forward_2.changeBeats(3) +
          Forward_2.changeBeats(4.5),

          SwingLeft +
          LeadLeft.changeBeats(4.5).scale(3.0,3.0) +
          SwingLeft +
          SwingRight +
          SwingLeft +
          CastRight,

          SwingLeft +
          Forward_2.changeBeats(4.5) +
          Forward_2.changeBeats(3) +
          LeadLeft.changeBeats(3).scale(3.0,3.0) +
          SwingLeft +
          CastRight,

          SwingLeft +
          CastRight +
          SwingLeft +
          SwingRight +
          SwingLeft +
          LeadLeft.changeBeats(4.5).scale(3.0,3.0)
      ]),

    AnimatedCall('Relay the Deucey',
      formation:Formation('Eight Chain Thru'),
      from:'Eight Chain Thru',parts:'5;4.5;3;3;3',difficulty: 3,
      paths:[
          ExtendLeft.changeBeats(2).scale(1.0,2.0) +
          SwingRight +
          CastLeft +
          SwingRight +
          SwingLeft +
          SwingRight +
          LeadRight.changeBeats(4.5).scale(3.0,3.0),

          Forward.changeBeats(2) +
          SwingRight +
          LeadRight.changeBeats(4.5).scale(3.0,3.0) +
          SwingRight +
          SwingLeft +
          SwingRight +
          CastLeft,

          ExtendLeft.changeBeats(2).scale(1.0,2.0) +
          SwingRight +
          CastLeft +
          SwingRight +
          LeadRight.changeBeats(3).scale(3.0,3.0) +
          Forward_2.changeBeats(3) +
          Forward_2.changeBeats(4.5),

          Forward.changeBeats(2) +
          SwingRight +
          Forward_2.changeBeats(4.5) +
          Forward_2.changeBeats(3) +
          LeadRight.changeBeats(3).scale(3.0,3.0) +
          SwingRight +
          CastLeft
      ]),

    AnimatedCall('Left Relay the Deucey',
      formation:Formation('Eight Chain Thru'),
      from:'Eight Chain Thru',parts:'3;4.5;3;3;3',difficulty: 2,
      paths:[
          Forward.changeBeats(2) +
          SwingLeft +
          LeadLeft.changeBeats(4.5).scale(3.0,3.0) +
          SwingLeft +
          SwingRight +
          SwingLeft +
          CastRight,

          ExtendRight.changeBeats(2).scale(1.0,2.0) +
          SwingLeft +
          CastRight +
          SwingLeft +
          SwingRight +
          SwingLeft +
          LeadLeft.changeBeats(4.5).scale(3.0,3.0),

          Forward.changeBeats(2) +
          SwingLeft +
          Forward_2.changeBeats(4.5) +
          Forward_2.changeBeats(3) +
          LeadLeft.changeBeats(3).scale(3.0,3.0) +
          SwingLeft +
          CastRight,

          ExtendRight.changeBeats(2).scale(1.0,2.0) +
          SwingLeft +
          CastRight +
          SwingLeft +
          LeadLeft.changeBeats(3).scale(3.0,3.0) +
          Forward_2.changeBeats(3) +
          Forward_2.changeBeats(4.5)
      ]),
  ];

