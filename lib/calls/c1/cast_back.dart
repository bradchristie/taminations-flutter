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
import '../../formations.dart';
import '../../moves.dart';

  final List<AnimatedCall> CastBack = [

    AnimatedCall('Cast Back',
      formation:Formations.BoxRHBoysLead,
      from:'Right-Hand Box',
      paths:[
          RunLeft.changeBeats(5).skew(-4.0,0.0),

          Path()
      ]),

    AnimatedCall('Cast Back',
      formation:Formations.DoublePassThru,
      from:'Double Pass Thru',
      paths:[
          Path(),

          Path(),

          RunLeft.skew(-2.0,0.0),

          RunRight.skew(-2.0,0.0)
      ]),

    AnimatedCall('Cast Back',
      formation:Formations.CompletedDoublePassThru,
      from:'Completed Double Pass Thru',
      paths:[
          RunRight.skew(-2.0,0.0),

          RunLeft.skew(-2.0,0.0),

          Path(),

          Path()
      ]),

    AnimatedCall('Cast Back',
      formation:Formations.ColumnRHGBGB,
      from:'Right-Hand Columns',
      paths:[
          UmTurnLeft.skew(-2.0,2.0),

          Path(),

          UmTurnLeft.skew(-2.0,2.0),

          Path()
      ]),

    AnimatedCall('Cross Cast Back',
      formation:Formations.CompletedDoublePassThru,
      from:'Completed Double Pass Thru',
      paths:[
          RunLeft.changeBeats(5).scale(2.0,2.0).skew(-1.0,0.0) +
          Forward,

          RunRight.changeBeats(5).scale(1.0,2.0).skew(-1.0,0.0) +
          Forward,

          Stand.changeBeats(6),

          Stand.changeBeats(6)
      ]),
  ];

