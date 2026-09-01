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

final List<AnimatedCall> PassTheOcean = [

  AnimatedCall('Pass the Ocean',
      formation:Formation('Wave RH'),
      from:'Right-Hand Wave',difficulty: 2,
      paths:[
        LeadRight.changeBeats(4).scale(3,3).changeRoll(.NONE),

        HingeLeft.changeBeats(4).changeRoll(.NONE),

      ]),

  AnimatedCall('Pass the Ocean',
      formation:Formation('Ocean Waves RH BGGB Compact'),
      from:'Right-Hand Waves',difficulty: 2,
      paths:[
        LeadRight.changeBeats(4).scale(1,3).changeRoll(.NONE),

        HingeLeft.changeBeats(4).changeRoll(.NONE),

        QuarterLeft.changeBeats(4).changehands(Hands.LEFT).skew(0,1).changeRoll(.NONE),

        LeadRight.changeBeats(4).scale(2,3).changeRoll(.NONE)
      ]),

  AnimatedCall('Pass the Ocean',
      formation:Formation('Tidal Wave RH BGGB'),
      from:'Right-Hand Tidal Wave',difficulty: 2,
      paths:[
        LeadRight.changeBeats(4).scale(3,2).changeRoll(.NONE),

        HingeLeft.changeBeats(4).changeRoll(.NONE),

        QuarterLeft.changeBeats(4).changehands(Hands.LEFT).skew(1,0).changeRoll(.NONE),

        LeadRight.changeBeats(4).scale(3,1).changeRoll(.NONE)
      ]),

];

