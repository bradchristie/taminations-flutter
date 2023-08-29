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

  final List<AnimatedCall> SwingAlong = [

    AnimatedCall('Along',
      formation:Formation('Tidal Wave RH BGBG'),
      from:'Right-Hand Tidal Wave',
      paths:[
          Forward +
          LeadRight.changeBeats(6).scale(2.0,5.5),

          HingeLeft.scale(1.0,0.5) +
          Forward_4 +
          SwingLeft,

          HingeLeft.scale(1.0,0.5) +
          FlipLeft.changeBeats(4) +
          SwingLeft,

          HingeLeft.scale(1.0,0.5) +
          Forward_2 +
          FlipRight
      ]),

    AnimatedCall('Along',
      formation:Formation('Tidal Wave LH BGGB'),
      from:'Left-Hand Tidal Wave',
      paths:[
          Forward +
          LeadLeft.changeBeats(6).scale(2.0,5.5),

          HingeRight.scale(1.0,0.5) +
          Forward_4 +
          SwingRight,

          HingeRight.scale(1.0,0.5) +
          FlipRight.changeBeats(4) +
          SwingRight,

          HingeRight.scale(1.0,0.5) +
          Forward_2 +
          FlipLeft
      ]),

    AnimatedCall('Swing Along',
      formation:Formation('Tidal Wave RH BGGB'),
      from:'Right-Hand Tidal Wave',fractions:'3',
      paths:[
          SwingRight.scale(0.5,0.5) +
          HingeLeft.scale(1.0,0.5) +
          Forward_4 +
          SwingLeft,

          SwingRight.scale(0.5,0.5) +
          Forward +
          LeadRight.changeBeats(6).scale(2.0,5.5),

          SwingRight.scale(0.5,0.5) +
          HingeLeft.scale(1.0,0.5) +
          Forward_2 +
          FlipRight,

          SwingRight.scale(0.5,0.5) +
          HingeLeft.scale(1.0,0.5) +
          FlipLeft.changeBeats(4) +
          SwingLeft
      ]),
  ];

