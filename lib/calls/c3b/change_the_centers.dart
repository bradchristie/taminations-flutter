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

  final List<AnimatedCall> ChangeTheCenters = [

    AnimatedCall('Change the Centers',
      formation:Formation('Wave RH'),
      from:'Right-Hand Wave',parts:'3;3;3',
      paths:[
          SwingRight +
          SwingLeft +
          RunLeft.scale(1.0,2.0) +
          Stand.changeBeats(3),

          SwingRight +
          Stand.changeBeats(3) +
          DodgeRight +
          SwingRight
      ]),

    AnimatedCall('Change the Centers',
      formation:Formation('Wave LH'),
      from:'Left-Hand Wave',parts:'3;3;3',
      paths:[
          SwingLeft +
          SwingRight +
          RunRight.scale(1.0,2.0) +
          Stand.changeBeats(3),

          SwingLeft +
          Stand.changeBeats(3) +
          DodgeLeft +
          SwingLeft
      ]),

    AnimatedCall('Change the Wave',
      formation:Formation('Wave RH'),
      from:'Right-Hand Wave',parts:'3;3;3',
      paths:[
          SwingRight +
          SwingLeft +
          RunLeft.scale(1.0,2.0) +
          SwingLeft,

          SwingRight +
          Stand.changeBeats(3) +
          DodgeRight +
          SwingLeft
      ]),

    AnimatedCall('Change the Wave',
      formation:Formation('Wave LH'),
      from:'Left-Hand Wave',parts:'3;3;3',
      paths:[
          SwingLeft +
          SwingRight +
          RunRight.scale(1.0,2.0) +
          SwingRight,

          SwingLeft +
          Stand.changeBeats(3) +
          DodgeLeft +
          SwingRight
      ]),
  ];

