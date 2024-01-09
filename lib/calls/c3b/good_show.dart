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

  final List<AnimatedCall> GoodShow = [

    AnimatedCall('Good Show',
      formation:Formation('Ocean Waves RH BGGB'),
      from:'Right-Hand Waves',
      paths:[
          Forward_4,

          RunRight.changeBeats(4),

          Forward_4 +
          UmTurnRight,

          DodgeRight.changeBeats(4)
      ]),

    AnimatedCall('Good Show',
      formation:Formation('Ocean Waves LH BGGB'),
      from:'Left-Hand Waves',
      paths:[
          DodgeLeft.changeBeats(4),

          Forward_4 +
          UmTurnLeft,

          RunLeft.changeBeats(4),

          Forward_4
      ]),

    AnimatedCall('Good Show',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:1,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:3,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:3,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:90),
  ]),
      from:'Right-Hand Columns',
      paths:[
          RunRight.scale(0.5,1.0),

          Forward_2.changeBeats(3),

          DodgeRight,

          Forward_2 +
          UmTurnRight
      ]),
  ];

