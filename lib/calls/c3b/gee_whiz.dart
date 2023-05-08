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
import '../../formation.dart';
import '../../moves.dart';

  final List<AnimatedCall> GeeWhiz = [

    AnimatedCall('Gee Whiz',
      formation:Formation('Two-Faced Lines RH'),
      from:'Right-Hand Two-Faced Lines',
      paths:[
          Stand.changeBeats(2) +
          ExtendRight.changeBeats(3).scale(3.0,2.0),

          Forward_2 +
          Forward_3.changeBeats(3),

          RunRight.changeBeats(4) +
          Forward,

          RunRight.changeBeats(5).scale(1.5,2.0).skew(1.0,0.0)
      ]),

    AnimatedCall('Gee Whiz',
      formation:Formation('Two-Faced Lines LH'),
      from:'Left-Hand Two-Faced Lines',
      paths:[
          RunLeft.changeBeats(5).scale(1.5,2.0).skew(1.0,0.0),

          RunLeft.changeBeats(4) +
          Forward,

          Stand.changeBeats(2) +
          Forward_3.changeBeats(3),

          ExtendLeft.changeBeats(3).scale(3.0,2.0) +
          Forward_2
      ]),

    AnimatedCall('Left Gee Whiz',
      formation:Formation('Lines Facing Out'),
      group:' ',
      paths:[
          UmTurnLeft.changeBeats(2).skew(-1.5,0.5) +
          Forward.changeBeats(.5) +
          ExtendRight.changeBeats(2.5).scale(2.5,1.5),

          FlipRight.changeBeats(2).skew(0.5,0.5) +
          Forward_2.changeBeats(1.5) +
          ExtendRight.changeBeats(1.5).scale(1.5,1.5),

          RunRight.changeBeats(4) +
          Forward,

          RunRight.changeBeats(5).scale(1.5,2.0).skew(1.0,0.0)
      ]),

    AnimatedCall('Right Gee Whiz',
      formation:Formation('Lines Facing Out'),
      group:' ',
      paths:[
          RunLeft.changeBeats(5).scale(1.5,2.0).skew(1.0,0.0),

          RunLeft.changeBeats(4) +
          Forward,

          UmTurnLeft.changeBeats(2).skew(-1.5,0.5) +
          Forward_2.changeBeats(1.5) +
          ExtendLeft.changeBeats(1.5).scale(1.5,0.5),

          FlipRight.changeBeats(2).skew(0.5,0.5) +
          Forward.changeBeats(.5) +
          ExtendLeft.changeBeats(2.5).scale(2.5,0.5)
      ]),
  ];

