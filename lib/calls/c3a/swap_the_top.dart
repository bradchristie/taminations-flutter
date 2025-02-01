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

final List<AnimatedCall> SwapTheTop = [

  AnimatedCall('Swap the Top',
      formation:Formation('Facing Couples'),
      from:'Facing Couples',
      paths:[
        FlipRight.changeBeats(4.5) +
            LeadRight.changeBeats(2),

        Forward_2 +
            CastLeft
      ]),

  AnimatedCall('Swap the Top',
      formation:Formation('Normal Lines'),
      from:'Normal Lines',
      paths:[
        FlipRight.changeBeats(4.5) +
            LeadRight.changeBeats(2),

        Forward_2 +
            CastLeft,

        FlipRight.changeBeats(4.5) +
            LeadRight.changeBeats(2),

        Forward_2 +
            CastLeft

      ]),

  AnimatedCall('Swap the Top',
      formation:Formation('Eight Chain Thru'),
      from:'Eight Chain Thru',
      paths:[
        FlipRight.changeBeats(4.5) +
            LeadRight.changeBeats(2).scale(.5, 1),

        ExtendLeft.changeBeats(2).scale(1, .5) +
            CastLeft.scale(.5,.5),

        FlipRight.changeBeats(4.5) +
            LeadRight.changeBeats(2).scale(.5, 1),

        ExtendLeft.changeBeats(2).scale(1, .5) +
            CastLeft.scale(.5,.5),

      ]),

];

