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

  final List<AnimatedCall> HorseshoeTurn = [

    AnimatedCall('Horseshoe Turn',
      formation:Formation('Completed Double Pass Thru'),
      from:'Completed Double Pass Thru',
      paths:[
          LeadRight.changeBeats(2).scale(1.0,1.5) +
          LeadRight.changeBeats(2).scale(1.5,1.5) +
          LeadRight.changeBeats(2).scale(1.5,1.0),

          LeadLeft.changeBeats(2).scale(1.0,1.5) +
          LeadLeft.changeBeats(2).scale(1.5,1.5) +
          LeadLeft.changeBeats(2).scale(1.5,1.0),

          QuarterLeft.changeBeats(3).skew(-0.5,1.0) +
          ExtendRight.changeBeats(3).scale(1.0,0.5),

          LeadRight.changeBeats(3).scale(0.5,1.0) +
          ExtendRight.changeBeats(3).scale(1.0,0.5)
      ]),

    AnimatedCall('Horseshoe Turn',
      formation:Formation('Trade By'),
      from:'Trade By',
      paths:[
          LeadRight.changeBeats(2).scale(1.0,1.5) +
          LeadRight.changeBeats(2).scale(1.5,1.5) +
          LeadRight.changeBeats(2).scale(1.5,1.0),

          LeadLeft.changeBeats(2).scale(1.0,1.5) +
          LeadLeft.changeBeats(2).scale(1.5,1.5) +
          LeadLeft.changeBeats(2).scale(1.5,1.0),

          QuarterLeft.changeBeats(3).skew(-0.5,1.0) +
          ExtendRight.changeBeats(3).scale(1.0,0.5),

          LeadRight.changeBeats(3).scale(0.5,1.0) +
          ExtendRight.changeBeats(3).scale(1.0,0.5)
      ]),

    AnimatedCall('Horseshoe Turn',
      formation:Formation('3/4 Tag'),
      from:'3/4 Tag',
      paths:[
          LeadRight.changeBeats(2).scale(1.0,2.5) +
          LeadRight.changeBeats(2).scale(1.5,1.5) +
          LeadRight.changeBeats(2).scale(1.5,1.0),

          LeadLeft.changeBeats(2).scale(1.0,2.5) +
          LeadLeft.changeBeats(2).scale(1.5,1.5) +
          LeadLeft.changeBeats(2).scale(1.5,1.0),

          LeadRight.changeBeats(3).scale(0.5,1.0) +
          ExtendRight.changeBeats(3).scale(1.0,0.5),

          LeadRight.changeBeats(3).scale(0.5,1.0) +
          ExtendRight.changeBeats(3).scale(0.5,0.5)
      ]),

    AnimatedCall('Horseshoe Turn',
      formation:Formation('T-Bone LUUR'),
      from:'T-Bones',
      paths:[
          LeadLeft.changeBeats(2).scale(1.0,1.5) +
          LeadLeft.changeBeats(2).scale(1.5,1.5) +
          LeadLeft.changeBeats(2).scale(1.5,1.0),

          LeadRight.changeBeats(2).scale(1.0,1.5) +
          LeadRight.changeBeats(2).scale(1.5,1.5) +
          LeadRight.changeBeats(2).scale(1.5,1.0),

          LeadRight.changeBeats(3).scale(0.5,1.0) +
          ExtendRight.changeBeats(3).scale(1.0,0.5),

          QuarterLeft.changeBeats(3).skew(-0.5,1.0) +
          ExtendRight.changeBeats(3).scale(1.0,0.5)
      ]),
  ];

