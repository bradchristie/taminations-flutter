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

  final List<AnimatedCall> Quick = [

    AnimatedCall('Quick Step',
      formation:Formations.MixedColumnsRHEndsIn,
      from:'Right-Hand Centers',
      paths:[
          Forward_2,

          Stand.changeBeats(3).changehands(0) +
          UmTurnRight.changeBeats(4).changehands(2),

          Forward_2,

          ExtendLeft.changeBeats(3).scale(2.0,2.0) +
          RunRight.changeBeats(4).changehands(2).scale(2.0,2.0)
      ]),

    AnimatedCall('Quick Step',
      formation:Formations.MixedColumnsLHEndsIn,
      from:'Left-Hand Centers',
      paths:[
          Stand.changeBeats(3).changehands(0) +
          UmTurnLeft.changeBeats(4).changehands(1),

          Forward_2,

          ExtendRight.changeBeats(3).scale(2.0,2.0) +
          RunLeft.changeBeats(4).changehands(1).scale(2.0,2.0),

          Forward_2
      ]),

    AnimatedCall('Quick Turn and Deal',
      formation:Formations.ColumnRHGBGB,
      from:'Right-Hand Columns',
      paths:[
          Stand.changeBeats(3).changehands(0) +
          FlipRight,

          ExtendLeft.changeBeats(3).scale(2.0,2.0) +
          FlipRight,

          Forward_2,

          Forward_2
      ]),
  ];

