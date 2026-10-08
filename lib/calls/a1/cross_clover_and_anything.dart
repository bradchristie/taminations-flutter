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

final List<AnimatedCall> CrossCloverAndAnything = [


  AnimatedCall('Cross Clover and',
      formation:Formation('Couples Facing Out'),
      group:' ',noDisplay: true,
      paths:[
        LeadLeft.changeBeats(3).scale(2.0,3.5) +
            LeadLeft.scale(1.5,1.5) +
            LeadLeft.scale(1.5,1.0),

        LeadRight.changeBeats(3).scale(0.5,3.5) +
            LeadRight.scale(1.5,0.5) +
            LeadRight
      ]),

  AnimatedCall('Cross Clover and Swap Around',
      formation:Formation('Trade By'),
      group:' ',
      taminator: 'Not in Plus 2026',
      paths:[
        LeadLeft.changeBeats(3).scale(2.0,3.5) +
            LeadLeft.scale(1.5,2.5) +
            LeadLeft.scale(1.5,1.0),

        LeadRight.changeBeats(3).scale(0.5,3.5) +
            LeadRight.scale(1.5,1.0) +
            LeadRight.scale(1.5,1.0),

        Forward_2,

        FlipRight
      ]),
];

