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

  final List<AnimatedCall> CloverAndAnything = [

    AnimatedCall('Clover and',
      formation:Formation('Couples Facing Out'),
      group:' ',noDisplay: true,
      paths:[
          LeadRight.scale(1.5,1.5) +
          LeadRight.scale(1.5,1.5) +
          LeadRight,

          LeadLeft.scale(1.5,1.5) +
          LeadLeft.scale(1.5,1.5) +
          LeadLeft
      ]),

    AnimatedCall('Clover and Pass the Ocean',
      formation:Formation('Trade By'),
      group:' ',
      paths:[
          LeadRight.scale(1.0,1.5) +
          LeadRight.scale(1.5,1.5) +
          LeadRight.scale(1.5,1.0),

          LeadLeft.scale(1.0,1.5) +
          LeadLeft.scale(1.5,1.5) +
          LeadLeft.scale(1.5,1.0),

          ExtendLeft.scale(1.0,0.5) +
          LeadLeft.scale(1.0,0.5),

          ExtendLeft.scale(1.0,0.5) +
          LeadRight.changeBeats(3).scale(3.0,1.5)
      ]),

    AnimatedCall('Clover and Square Thru 2',
      formation:Formation('Trade By'),
      group:' ',
      paths:[
          LeadRight.scale(1.0,1.5) +
          LeadRight.scale(1.5,1.5) +
          LeadRight.scale(1.5,1.0),

          LeadLeft.scale(1.0,1.5) +
          LeadLeft.scale(1.5,1.5) +
          LeadLeft.scale(1.5,1.0),

          PullLeft.scale(1.0,0.5) +
          LeadLeft.skew(0.5,-0.5) +
          ExtendLeft.scale(1.0,0.5),

          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5) +
          ExtendLeft.scale(1.0,0.5)
      ]),

    AnimatedCall('Clover and Swing Thru',
        formation:Formation('T-Bone RDDL'),
        group:' ',
        paths:[
          Forward_2 +
              Forward.changeBeats(1.5) +
              SwingRight,
          Forward_2 +
              ExtendLeft.changeBeats(1.5).scale(1,1.5) +
              SwingRight.scale(1, 0.75) +
              SwingLeft,
          LeadRight.scale(2.0,1.5) +
              LeadRight.scale(1.5,0.5) +
              LeadRight.scale(1.5,1.0),

          LeadLeft.scale(2.0,1.5) +
              LeadLeft.scale(1.5,0.5) +
              LeadLeft.scale(1.5,1.0),

        ]),

    AnimatedCall('Clover and Trade',
      formation:Formation('Completed Double Pass Thru'),
      group:' ',
      paths:[
          LeadRight.scale(1.0,1.5) +
          LeadRight.scale(1.5,1.5) +
          LeadRight.scale(1.5,1.0),

          LeadLeft.scale(1.0,1.5) +
          LeadLeft.scale(1.5,1.5) +
          LeadLeft.scale(1.5,1.0),

          FlipLeft,

          RunRight
      ]),


  ];

