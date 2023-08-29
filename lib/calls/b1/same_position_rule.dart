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

  final List<AnimatedCall> SamePositionRule = [

    AnimatedCall('Circulate 1 1/2',
      formation:Formation('Lines Facing Out'),
      from:'Lines Facing Out',fractions:'4',
      paths:[
          RunLeft.changeBeats(4).scale(2.0,3.0) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          FlipLeft.changeBeats(4) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          RunRight.changeBeats(4) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          RunRight.changeBeats(4).scale(3.0,3.0) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Split Circulate',
      formation:Formation('Inverted Lines Ends Facing Out'),
      from:'Inverted Lines',
      paths:[
          LeadLeft.changeBeats(2).scale(1.0,0.5) +
          QuarterLeft.changeBeats(2).skew(-0.5,1.0),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendLeft.changeBeats(2).scale(2.0,1.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          RunRight.changeBeats(4)
      ]),
  ];

