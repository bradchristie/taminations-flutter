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

  final List<AnimatedCall> ShakeAndRattle = [

    AnimatedCall('Shake and Rattle',
      formation:Formation('Completed Double Pass Thru'),
      from:'Completed Double Pass Thru',
      paths:[
          FlipRight.scale(1.0,0.5).skew(-1.0,0.0) +
          QuarterRight.skew(1.0,0.0),

          FlipRight +
          QuarterRight.skew(0.0,1.0),

          QuarterLeft.changeBeats(4.5).skew(0.0,3.0),

          LeadLeft.changeBeats(4.5).scale(2.0,1.0)
      ]),

    AnimatedCall('Shake and Rattle',
      formation:Formation('Column RH GBGB'),
      from:'Right-Hand Columns',
      paths:[
          FlipRight +
          QuarterRight.skew(0.0,1.0),

          LeadLeft.changeBeats(4.5).scale(2.0,1.0),

          FlipRight +
          QuarterRight.skew(0.0,1.0),

          LeadLeft.changeBeats(4.5).scale(2.0,1.0)
      ]),

    AnimatedCall('Shake and Rattle',
      formation:Formation('Magic Column RH'),
      from:'Magic Columns',
      paths:[
          QuarterLeft.changeBeats(4.5).skew(0.0,3.0),

          LeadLeft.changeBeats(4.5).scale(2.0,1.0),

          FlipRight +
          QuarterRight.skew(0.0,1.0),

          FlipRight.scale(1.0,0.5).skew(-1.0,0.0) +
          QuarterRight.skew(1.0,0.0)
      ]),

    AnimatedCall('Shake and Rattle',
      formation:Formation('Ocean Waves RH BGBG'),
      from:'Right-Hand Waves',
      paths:[
          QuarterLeft.changeBeats(4.5).skew(3.0,0.0),

          FlipRight +
          QuarterRight.skew(1.0,0.0),

          QuarterLeft.changeBeats(4.5).skew(3.0,0.0),

          FlipRight +
          QuarterRight.skew(1.0,0.0)
      ]),

    AnimatedCall('Shake and Rattle',
      formation:Formation('Ocean Waves LH BGBG'),
      from:'Left-Hand Waves',
      paths:[
          FlipRight.changeBeats(2.5).scale(1.0,0.25).skew(-1.0,0.0) +
          LeadRight.changeBeats(2).scale(2.0,0.5),

          LeadLeft.changeBeats(4.5).scale(1.0,2.0),

          FlipRight.changeBeats(2.5).scale(1.0,0.25).skew(-1.0,0.0) +
          LeadRight.changeBeats(2).scale(2.0,0.5),

          LeadLeft.changeBeats(4.5).scale(1.0,2.0)
      ]),

    AnimatedCall('Shake and Rattle',
      formation:Formation('Inverted Lines Ends Facing Out'),
      from:'Inverted Lines',
      paths:[
          FlipRight.changeBeats(2.5).scale(1.0,0.25).skew(-1.0,0.0) +
          LeadRight.changeBeats(2).scale(2.0,0.5),

          LeadLeft.changeBeats(4.5).scale(1.0,2.0),

          QuarterLeft.changeBeats(4.5).skew(3.0,0.0),

          FlipRight +
          QuarterRight.skew(1.0,0.0)
      ]),

    AnimatedCall('Shake and Rattle and Roll',
      formation:Formation('Completed Double Pass Thru'),
      group:' ',
      paths:[
          FlipRight.scale(1.0,0.5).skew(-1.0,0.0) +
          LeadRight +
          QuarterRight,

          FlipRight +
          QuarterRight +
          QuarterRight,

          QuarterLeft.changeBeats(4.5).skew(0.0,2.0) +
          QuarterLeft,

          QuarterLeft.changeBeats(4.5).skew(2.0,0.0) +
          QuarterLeft
      ]),
  ];

