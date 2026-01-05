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

  final List<AnimatedCall> Reset = [

    AnimatedCall('Reset',
      formation:Formation('Box RH Boys Lead'),
      from:'Right-Hand Box',parts:'3;1.5;3',
      paths:[
          RunLeft.skew(-2.0,0.0) +
          HingeLeft +
          Forward_2.changeBeats(3) +
          HingeRight,

          Forward_2.changeBeats(3) +
          HingeLeft +
          RunRight.skew(-2.0,0.0) +
          HingeRight
      ]),

    AnimatedCall('Reset',
      formation:Formation('Box LH'),
      from:'Left-Hand Box',parts:'3;1.5;3',
      paths:[
          RunRight.skew(-2.0,0.0) +
          HingeRight +
          Forward_2.changeBeats(3) +
          HingeLeft,

          Forward_2.changeBeats(3) +
          HingeRight +
          RunLeft.skew(-2.0,0.0) +
          HingeLeft
      ]),
  ];

