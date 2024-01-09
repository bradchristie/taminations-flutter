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

  final List<AnimatedCall> RimsTradeBack = [

    AnimatedCall('Rims Trade Back',
      formation:Formation('Ocean Waves RH BGGB'),
      from:'Right-Hand Waves',parts:'3',
      paths:[
          SwingRight +
          RunLeft.changeBeats(4),

          SwingRight,

          SwingRight,

          SwingRight +
          Forward_4
      ]),

    AnimatedCall('Rims Trade Back',
      formation:Formation('Ocean Waves LH BGGB'),
      from:'Left-Hand Waves',parts:'3',
      paths:[
          SwingLeft +
          Forward_4,

          SwingLeft,

          SwingLeft,

          SwingLeft +
          RunRight.changeBeats(4)
      ]),

    AnimatedCall('Rims Trade Back',
      formation:Formation('Thar LH Boys'),
      from:'Thar',parts:'3',
      paths:[
          SwingRight,

          SwingRight +
          HingeLeft,

          SwingRight,

          SwingRight +
          HingeLeft
      ]),

    AnimatedCall('Hubs Trade Back',
      formation:Formation('Ocean Waves RH BGGB'),
      from:'Right-Hand Waves',parts:'3',
      paths:[
          SwingRight,

          SwingRight +
          Forward_4,

          SwingRight +
          RunRight.changeBeats(4).scale(2.0,3.0),

          SwingRight
      ]),

    AnimatedCall('Hubs Trade Back',
      formation:Formation('Ocean Waves LH BGGB'),
      from:'Left-Hand Waves',parts:'3',
      paths:[
          SwingLeft,

          SwingLeft +
          RunLeft.changeBeats(4).scale(2.0,3.0),

          SwingLeft +
          Forward_4,

          SwingLeft
      ]),

    AnimatedCall('Hubs Trade Back',
      formation:Formation('Thar LH Boys'),
      from:'Thar',parts:'3',
      paths:[
          SwingRight +
          LeadRight.changeBeats(4).scale(3.0,3.0),

          SwingRight,

          SwingRight +
          LeadRight.changeBeats(4).scale(3.0,3.0),

          SwingRight
      ]),
  ];

