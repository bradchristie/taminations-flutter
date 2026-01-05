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

  final List<AnimatedCall> LoopAndTag = [

    AnimatedCall('Loop and Tag',
      formation:Formation('Box RH'),
      from:'Right-Hand Box',fractions:'6.5;2;2',
      paths:[
          Forward_3.changeBeats(2) +
          RunLeft +
          QuarterLeft.skew(1.0,0.0) +
          ExtendLeft.changeBeats(2) +
          Forward_2 +
          ExtendRight.changeBeats(2),

          RunLeft.skew(-1.0,0.0) +
          LeadLeft.changeBeats(2).scale(1.0,2.0) +
          ExtendLeft.changeBeats(1.5) +
          Forward_2 +
          ExtendRight.changeBeats(2)
      ]),

    AnimatedCall('Loop and Tag',
      formation:Formation('Box LH'),
      from:'Left-Hand Box',fractions:'6.5;2;2',
      paths:[
          RunRight.skew(-1.0,0.0) +
          LeadRight.changeBeats(2).scale(1.0,2.0) +
          ExtendLeft.changeBeats(1.5) +
          Forward_2 +
          ExtendRight.changeBeats(2),

          Forward_3.changeBeats(2) +
          RunRight +
          QuarterRight.skew(1.0,0.0) +
          ExtendLeft.changeBeats(2) +
          Forward_2 +
          ExtendRight.changeBeats(2)
      ]),
  ];

