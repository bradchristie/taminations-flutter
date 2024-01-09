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

  final List<AnimatedCall> SquareThru = [

    AnimatedCall('Square Thru 2',
      formation:Formation('Facing Couples Compact'),
      from:'Facing Couples',difficulty: 1,
      paths:[
          PullLeft.changeBeats(1.5).scale(1.5,0.5) +
          LeadRight.scale(0.5,1.5) +
          ExtendLeft.changeBeats(2).scale(1.5,0.5),

          PullLeft.changeBeats(1.5).scale(1.5,0.5) +
          LeadLeft.skew(0.5,-0.5) +
          ExtendLeft.changeBeats(2).scale(1.5,0.5)
      ]),

    AnimatedCall('Square Thru 2',
      formation:Formation('Wave RH'),
      from:'Right-Hand Wave',difficulty: 2,
      paths:[
          LeadRight.changeBeats(3).scale(0.5,3.0) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          LeadLeft.changeBeats(3).skew(0.5,0.0) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Square Thru 2',
      formation:Formation('Eight Chain Thru'),
      from:'Eight Chain Thru',difficulty: 1,
      paths:[
          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          PullLeft.scale(1.0,0.5) +
          LeadLeft.skew(0.5,-0.5) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          PullLeft.scale(1.0,0.5) +
          LeadLeft.skew(0.5,-0.5) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Square Thru 2',
      formation:Formation('Normal Lines'),
      from:'Lines',difficulty: 1,
      paths:[
          Forward +
          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5) +
          ExtendLeft.scale(1.0,0.5),

          Forward +
          PullLeft.scale(1.0,0.5) +
          LeadLeft.skew(0.5,-0.5) +
          ExtendLeft.scale(1.0,0.5),

          Forward +
          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5) +
          ExtendLeft.scale(1.0,0.5),

          Forward +
          PullLeft.scale(1.0,0.5) +
          LeadLeft.skew(0.5,-0.5) +
          ExtendLeft.scale(1.0,0.5)
      ]),

    AnimatedCall('Square Thru 2',
      formation:Formation('Ocean Waves RH BGGB'),
      from:'Right-Hand Waves',difficulty: 2,
      paths:[
          LeadRight.changeBeats(3).scale(0.5,3.0) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          LeadLeft.changeBeats(3).skew(0.5,0.0) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          LeadLeft.changeBeats(3).skew(0.5,0.0) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          LeadRight.changeBeats(3).scale(0.5,3.0) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Square Thru 2',
      formation:Formation('Tidal Wave RH BGGB'),
      from:'Right-Hand Tidal Wave',difficulty: 2,
      paths:[
          LeadRight.changeBeats(2).scale(0.5,1.5) +
          ExtendLeft.changeBeats(2).scale(1.0,0.5),

          LeadLeft.changeBeats(2).scale(1.0,0.5).skew(0.5,0.0) +
          ExtendLeft.changeBeats(2).scale(1.0,0.5),

          LeadLeft.changeBeats(2).scale(1.0,0.5).skew(0.5,0.0) +
          ExtendLeft.changeBeats(2).scale(1.0,0.5),

          LeadRight.changeBeats(2).scale(0.5,1.5) +
          ExtendLeft.changeBeats(2).scale(1.0,0.5)
      ]),

    AnimatedCall('Square Thru 3',
      formation:Formation('Facing Couples Compact'),
      from:'Facing Couples',difficulty: 1,
      paths:[
          PullLeft.changeBeats(1.5).scale(1.5,0.5) +
          LeadRight.changeBeats(2).scale(0.5,1.5) +
          LeadRight.changeBeats(2).skew(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(1.5,0.5),

          PullLeft.changeBeats(1.5).scale(1.5,0.5) +
          LeadLeft.changeBeats(2).skew(0.5,-0.5) +
          LeadLeft.changeBeats(2).scale(0.5,1.5) +
          ExtendRight.changeBeats(2).scale(1.5,0.5)
      ]),

    AnimatedCall('Square Thru 3',
      formation:Formation('Wave RH'),
      from:'Right-Hand Wave',difficulty: 2,
      paths:[
          LeadRight.changeBeats(3).scale(0.5,3.0) +
          LeadRight.skew(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          LeadLeft.changeBeats(3).skew(0.5,0.0) +
          LeadLeft.scale(0.5,1.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Square Thru 3',
      formation:Formation('Eight Chain Thru'),
      from:'Eight Chain Thru',difficulty: 1,
      paths:[
          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5) +
          ExtendRight.scale(1.0,0.5),

          PullLeft.scale(1.0,0.5) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.scale(0.5,1.5) +
          ExtendRight.scale(1.0,0.5),

          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5) +
          ExtendRight.scale(1.0,0.5),

          PullLeft.scale(1.0,0.5) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.scale(0.5,1.5) +
          ExtendRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Square Thru 3',
      formation:Formation('Normal Lines'),
      from:'Lines',difficulty: 1,
      paths:[
          Forward +
          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          Forward +
          PullLeft.scale(1.0,0.5) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.scale(0.5,1.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          Forward +
          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          Forward +
          PullLeft.scale(1.0,0.5) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.scale(0.5,1.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Square Thru 3',
      formation:Formation('Ocean Waves RH BGGB'),
      from:'Right-Hand Waves',difficulty: 2,
      paths:[
          LeadRight.changeBeats(3).scale(0.5,3.0) +
          LeadRight.skew(0.5,0.5) +
          ExtendRight.scale(1.0,0.5),

          LeadLeft.changeBeats(3).skew(0.5,0.0) +
          LeadLeft.scale(0.5,1.5) +
          ExtendRight.scale(1.0,0.5),

          LeadLeft.changeBeats(3).skew(0.5,0.0) +
          LeadLeft.scale(0.5,1.5) +
          ExtendRight.scale(1.0,0.5),

          LeadRight.changeBeats(3).scale(0.5,3.0) +
          LeadRight.skew(0.5,0.5) +
          ExtendRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Square Thru 3',
      formation:Formation('Tidal Wave RH BGGB'),
      from:'Right-Hand Tidal Wave',difficulty: 2,
      paths:[
          LeadRight.changeBeats(2).scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5) +
          ExtendRight.scale(1.5,0.5),

          LeadLeft.changeBeats(2).scale(1.0,0.5).skew(0.5,0.0) +
          LeadLeft.scale(0.5,1.5) +
          ExtendRight.scale(1.5,0.5),

          LeadLeft.changeBeats(2).scale(1.0,0.5).skew(0.5,0.0) +
          LeadLeft.scale(0.5,1.5) +
          ExtendRight.scale(1.5,0.5),

          LeadRight.changeBeats(2).scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5) +
          ExtendRight.scale(1.5,0.5)
      ]),

    AnimatedCall('Square Thru 4',
      formation:Formation('Facing Couples Compact'),
      from:'Facing Couples',difficulty: 1,
      paths:[
          PullLeft.changeBeats(2).scale(1.5,0.5) +
          LeadRight.changeBeats(2).scale(0.5,1.5) +
          LeadRight.changeBeats(2).skew(0.5,0.5) +
          LeadRight.changeBeats(2).scale(0.5,1.5) +
          ExtendLeft.changeBeats(2).scale(1.5,0.5),

          PullLeft.changeBeats(2).scale(1.5,0.5) +
          LeadLeft.changeBeats(2).skew(0.5,-0.5) +
          LeadLeft.changeBeats(2).scale(0.5,1.5) +
          LeadLeft.changeBeats(2).skew(0.5,-0.5) +
          ExtendLeft.changeBeats(2).scale(1.5,0.5)
      ]),

    AnimatedCall('Square Thru 4',
      formation:Formation('Wave RH'),
      from:'Right-Hand Wave',difficulty: 2,
      paths:[
          LeadRight.changeBeats(3).scale(0.5,3.0) +
          LeadRight.skew(0.5,0.5) +
          LeadRight.scale(0.5,1.5) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          LeadLeft.changeBeats(3).skew(0.5,0.0) +
          LeadLeft.scale(0.5,1.5) +
          LeadLeft.skew(0.5,-0.5) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Square Thru 4',
      formation:Formation('Eight Chain Thru'),
      from:'Eight Chain Thru',difficulty: 1,
      paths:[
          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5) +
          LeadRight.scale(0.5,1.5) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          PullLeft.scale(1.0,0.5) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.scale(0.5,1.5) +
          LeadLeft.skew(0.5,-0.5) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5) +
          LeadRight.scale(0.5,1.5) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          PullLeft.scale(1.0,0.5) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.scale(0.5,1.5) +
          LeadLeft.skew(0.5,-0.5) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Square Thru 4',
      formation:Formation('Normal Lines'),
      from:'Lines',difficulty: 1,
      paths:[
          Forward +
          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5) +
          LeadRight.scale(0.5,1.5) +
          ExtendLeft.scale(1.0,0.5),

          Forward +
          PullLeft.scale(1.0,0.5) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.scale(0.5,1.5) +
          LeadLeft.skew(0.5,-0.5) +
          ExtendLeft.scale(1.0,0.5),

          Forward +
          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5) +
          LeadRight.scale(0.5,1.5) +
          ExtendLeft.scale(1.0,0.5),

          Forward +
          PullLeft.scale(1.0,0.5) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.scale(0.5,1.5) +
          LeadLeft.skew(0.5,-0.5) +
          ExtendLeft.scale(1.0,0.5)
      ]),

    AnimatedCall('Square Thru 4',
      formation:Formation('Ocean Waves RH BGGB'),
      from:'Right-Hand Waves',difficulty: 2,
      paths:[
          LeadRight.changeBeats(3).scale(0.5,3.0) +
          LeadRight.skew(0.5,0.5) +
          LeadRight.scale(0.5,1.5) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          LeadLeft.changeBeats(3).skew(0.5,0.0) +
          LeadLeft.scale(0.5,1.5) +
          LeadLeft.skew(0.5,-0.5) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          LeadLeft.changeBeats(3).skew(0.5,0.0) +
          LeadLeft.scale(0.5,1.5) +
          LeadLeft.skew(0.5,-0.5) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          LeadRight.changeBeats(3).scale(0.5,3.0) +
          LeadRight.skew(0.5,0.5) +
          LeadRight.scale(0.5,1.5) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Square Thru 4',
      formation:Formation('Tidal Wave RH BGGB'),
      from:'Right-Hand Tidal Wave',difficulty: 2,
      paths:[
          LeadRight.changeBeats(2).scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5) +
          LeadRight.scale(0.5,1.5) +
          ExtendLeft.scale(1.0,0.5),

          LeadLeft.changeBeats(2).scale(1.0,0.5).skew(0.5,0.0) +
          LeadLeft.scale(0.5,1.5) +
          LeadLeft.skew(0.5,-0.5) +
          ExtendLeft.scale(1.0,0.5),

          LeadLeft.changeBeats(2).scale(1.0,0.5).skew(0.5,0.0) +
          LeadLeft.scale(0.5,1.5) +
          LeadLeft.skew(0.5,-0.5) +
          ExtendLeft.scale(1.0,0.5),

          LeadRight.changeBeats(2).scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5) +
          LeadRight.scale(0.5,1.5) +
          ExtendLeft.scale(1.0,0.5)
      ]),

    AnimatedCall('Left Square Thru 4',
      formation:Formation('Facing Couples Compact'),
      from:'Facing Couples',difficulty: 1,noDisplay: true,
      paths:[
          Forward.scale(0.5,1.0) +
          PullRight.scale(1.0,0.5) +
          LeadRight.skew(0.5,0.5) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(1.5,0.5),

          Forward.scale(0.5,1.0) +
          PullRight.scale(1.0,0.5) +
          LeadLeft.scale(0.5,1.5) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.scale(0.5,1.5) +
          ExtendRight.changeBeats(2).scale(1.5,0.5)
      ]),

    AnimatedCall('Left Square Thru 4',
      formation:Formation('Wave LH'),
      from:'Left-Hand Wave',difficulty: 2,noDisplay: true,
      paths:[
          LeadLeft.changeBeats(3).scale(0.5,3.0) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.scale(0.5,1.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          LeadRight.changeBeats(3).skew(0.5,0.0) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Left Square Thru 4',
      formation:Formation('Eight Chain Thru'),
      from:'Eight Chain Thru',difficulty: 1,noDisplay: true,
      paths:[
          PullRight.scale(1.0,0.5) +
          LeadRight.skew(0.5,0.5) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          PullRight.scale(1.0,0.5) +
          LeadLeft.scale(0.5,1.5) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.scale(0.5,1.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          PullRight.scale(1.0,0.5) +
          LeadRight.skew(0.5,0.5) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          PullRight.scale(1.0,0.5) +
          LeadLeft.scale(0.5,1.5) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.scale(0.5,1.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Left Square Thru 4',
      formation:Formation('Normal Lines'),
      from:'Lines',difficulty: 2,noDisplay: true,
      paths:[
          Forward +
          PullRight.scale(1.0,0.5) +
          LeadRight.skew(0.5,0.5) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5) +
          ExtendRight.scale(1.0,0.5),

          Forward +
          PullRight.scale(1.0,0.5) +
          LeadLeft.scale(0.5,1.5) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.scale(0.5,1.5) +
          ExtendRight.scale(1.0,0.5),

          Forward +
          PullRight.scale(1.0,0.5) +
          LeadRight.skew(0.5,0.5) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5) +
          ExtendRight.scale(1.0,0.5),

          Forward +
          PullRight.scale(1.0,0.5) +
          LeadLeft.scale(0.5,1.5) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.scale(0.5,1.5) +
          ExtendRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Left Square Thru 3 1/2',
      formation:Formation('Facing Couples Compact'),
      from:'Facing Couples',difficulty: 1,noDisplay: true,
      paths:[
          Forward.scale(0.5,1.0) +
          PullRight.scale(1.0,0.5) +
          LeadRight.skew(0.5,0.5) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.scale(3.0,1.0).skew(0.0,0.5),

          Forward.scale(0.5,1.0) +
          PullRight.scale(1.0,0.5) +
          LeadLeft.scale(0.5,1.5) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.scale(1.0,1.5)
      ]),

    AnimatedCall('Left Square Thru 3 1/2',
      formation:Formation('Wave LH'),
      from:'Left-Hand Wave',difficulty: 2,noDisplay: true,
      paths:[
          LeadLeft.changeBeats(3).scale(0.5,3.0) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.scale(3.0,1.5),

          LeadRight.changeBeats(3).skew(0.5,0.0) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.skew(0.0,0.5)
      ]),

    AnimatedCall('Left Square Thru 3 1/2',
      formation:Formation('Eight Chain Thru'),
      from:'Eight Chain Thru',difficulty: 1,noDisplay: true,
      paths:[
          PullRight.scale(1.0,0.5) +
          LeadRight.skew(0.5,0.5) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5),

          PullRight.scale(1.0,0.5) +
          LeadLeft.scale(0.5,1.5) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.scale(0.5,1.5),

          PullRight.scale(1.0,0.5) +
          LeadRight.skew(0.5,0.5) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5),

          PullRight.scale(1.0,0.5) +
          LeadLeft.scale(0.5,1.5) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.scale(0.5,1.5)
      ]),

    AnimatedCall('Left Square Thru 3 1/2',
      formation:Formation('Normal Lines'),
      from:'Lines',difficulty: 2,noDisplay: true,
      paths:[
          Forward +
          PullRight.scale(1.0,0.5) +
          LeadRight.skew(0.5,0.5) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.scale(3.0,1.0).skew(0.0,0.5),

          Forward +
          PullRight.scale(1.0,0.5) +
          LeadLeft.scale(0.5,1.5) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.scale(1.0,1.5),

          Forward +
          PullRight.scale(1.0,0.5) +
          LeadRight.skew(0.5,0.5) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.scale(3.0,1.0).skew(0.0,0.5),

          Forward +
          PullRight.scale(1.0,0.5) +
          LeadLeft.scale(0.5,1.5) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.scale(1.0,1.5)
      ]),

    AnimatedCall('Left Square Thru 3',
      formation:Formation('Facing Couples Compact'),
      from:'Facing Couples',difficulty: 1,noDisplay: true,
      paths:[
          Forward.scale(0.5,1.0) +
          PullRight.scale(1.0,0.5) +
          LeadRight.skew(0.5,0.5) +
          LeadRight.scale(0.5,1.5) +
          ExtendLeft.changeBeats(2).scale(1.5,0.5),

          Forward.scale(0.5,1.0) +
          PullRight.scale(1.0,0.5) +
          LeadLeft.scale(0.5,1.5) +
          LeadLeft.skew(0.5,-0.5) +
          ExtendLeft.changeBeats(2).scale(1.5,0.5)
      ]),

    AnimatedCall('Left Square Thru 3',
      formation:Formation('Wave LH'),
      from:'Left-Hand Wave',difficulty: 2,noDisplay: true,
      paths:[
          LeadLeft.changeBeats(3).scale(0.5,3.0) +
          LeadLeft.skew(0.5,-0.5) +
          ExtendLeft.changeBeats(2).scale(1.5,0.5),

          LeadRight.changeBeats(3).skew(0.5,0.0) +
          LeadRight.scale(0.5,1.5) +
          ExtendLeft.changeBeats(2).scale(1.5,0.5)
      ]),

    AnimatedCall('Left Square Thru 3',
      formation:Formation('Eight Chain Thru'),
      from:'Eight Chain Thru',difficulty: 1,noDisplay: true,
      paths:[
          PullRight.scale(1.0,0.5) +
          LeadRight.skew(0.5,0.5) +
          LeadRight.scale(0.5,1.5) +
          ExtendLeft.changeBeats(2).scale(1.0,0.5),

          PullRight.scale(1.0,0.5) +
          LeadLeft.scale(0.5,1.5) +
          LeadLeft.skew(0.5,-0.5) +
          ExtendLeft.changeBeats(2).scale(1.0,0.5),

          PullRight.scale(1.0,0.5) +
          LeadRight.skew(0.5,0.5) +
          LeadRight.scale(0.5,1.5) +
          ExtendLeft.changeBeats(2).scale(1.0,0.5),

          PullRight.scale(1.0,0.5) +
          LeadLeft.scale(0.5,1.5) +
          LeadLeft.skew(0.5,-0.5) +
          ExtendLeft.changeBeats(2).scale(1.0,0.5)
      ]),

    AnimatedCall('Left Square Thru 3',
      formation:Formation('Normal Lines'),
      from:'Lines',difficulty: 2,noDisplay: true,
      paths:[
          Forward +
          PullRight.scale(1.0,0.5) +
          LeadRight.skew(0.5,0.5) +
          LeadRight.scale(0.5,1.5) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          Forward +
          PullRight.scale(1.0,0.5) +
          LeadLeft.scale(0.5,1.5) +
          LeadLeft.skew(0.5,-0.5) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          Forward +
          PullRight.scale(1.0,0.5) +
          LeadRight.skew(0.5,0.5) +
          LeadRight.scale(0.5,1.5) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          Forward +
          PullRight.scale(1.0,0.5) +
          LeadLeft.scale(0.5,1.5) +
          LeadLeft.skew(0.5,-0.5) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Left Square Thru 2 1/2',
      formation:Formation('Facing Couples Compact'),
      from:'Facing Couples',difficulty: 1,noDisplay: true,
      paths:[
          Forward.scale(0.5,1.0) +
          PullRight.scale(1.0,0.5) +
          LeadRight.skew(0.5,0.5) +
          LeadRight.scale(3.0,1.5),

          Forward.scale(0.5,1.0) +
          PullRight.scale(1.0,0.5) +
          LeadLeft.scale(0.5,1.5) +
          LeadLeft.skew(0.0,-0.5)
      ]),

    AnimatedCall('Left Square Thru 2 1/2',
      formation:Formation('Wave LH'),
      from:'Left-Hand Wave',difficulty: 2,noDisplay: true,
      paths:[
          LeadLeft.changeBeats(3).scale(0.5,3.0) +
          LeadLeft.skew(0.0,-0.5),

          LeadRight.changeBeats(3).skew(0.5,0.0) +
          LeadRight.scale(3.0,1.5)
      ]),

    AnimatedCall('Left Square Thru 2 1/2',
      formation:Formation('Eight Chain Thru'),
      from:'Eight Chain Thru',difficulty: 1,noDisplay: true,
      paths:[
          PullRight.scale(1.0,0.5) +
          LeadRight.skew(0.5,0.5) +
          LeadRight.scale(3.0,1.5),

          PullRight.scale(1.0,0.5) +
          LeadLeft.scale(0.5,1.5) +
          LeadLeft.skew(0.0,-0.5),

          PullRight.scale(1.0,0.5) +
          LeadRight.skew(0.5,0.5) +
          LeadRight.scale(3.0,1.5),

          PullRight.scale(1.0,0.5) +
          LeadLeft.scale(0.5,1.5) +
          LeadLeft.skew(0.0,-0.5)
      ]),

    AnimatedCall('Left Square Thru 2 1/2',
      formation:Formation('Normal Lines'),
      from:'Lines',difficulty: 2,noDisplay: true,
      paths:[
          Forward +
          PullRight.scale(1.0,0.5) +
          LeadRight.skew(0.5,0.5) +
          LeadRight.scale(0.5,1.5),

          Forward +
          PullRight.scale(1.0,0.5) +
          LeadLeft.scale(0.5,1.5) +
          LeadLeft.skew(0.5,-0.5),

          Forward +
          PullRight.scale(1.0,0.5) +
          LeadRight.skew(0.5,0.5) +
          LeadRight.scale(0.5,1.5),

          Forward +
          PullRight.scale(1.0,0.5) +
          LeadLeft.scale(0.5,1.5) +
          LeadLeft.skew(0.5,-0.5)
      ]),

    AnimatedCall('Left Square Thru 2',
      formation:Formation('Facing Couples Compact'),
      from:'Facing Couples',difficulty: 1,noDisplay: true,
      paths:[
          Forward.scale(0.5,1.0) +
          PullRight.scale(1.0,0.5) +
          LeadRight.skew(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(1.5,0.5),

          Forward.scale(0.5,1.0) +
          PullRight.scale(1.0,0.5) +
          LeadLeft.scale(0.5,1.5) +
          ExtendRight.changeBeats(2).scale(1.5,0.5)
      ]),

    AnimatedCall('Left Square Thru 2',
      formation:Formation('Wave LH'),
      from:'Left-Hand Wave',difficulty: 2,noDisplay: true,
      paths:[
          LeadLeft.changeBeats(3).scale(0.5,3.0) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          LeadRight.changeBeats(3).skew(0.5,0.0) +
          ExtendRight.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Left Square Thru 2',
      formation:Formation('Eight Chain Thru'),
      from:'Eight Chain Thru',difficulty: 1,noDisplay: true,
      paths:[
          PullRight.scale(1.0,0.5) +
          LeadRight.skew(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          PullRight.scale(1.0,0.5) +
          LeadLeft.scale(0.5,1.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          PullRight.scale(1.0,0.5) +
          LeadRight.skew(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          PullRight.scale(1.0,0.5) +
          LeadLeft.scale(0.5,1.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Left Square Thru 2',
      formation:Formation('Normal Lines'),
      from:'Lines',difficulty: 2,noDisplay: true,
      paths:[
          Forward +
          PullRight.scale(1.0,0.5) +
          LeadRight.skew(0.5,0.5) +
          ExtendRight.scale(1.0,0.5),

          Forward +
          PullRight.scale(1.0,0.5) +
          LeadLeft.scale(0.5,1.5) +
          ExtendRight.scale(1.0,0.5),

          Forward +
          PullRight.scale(1.0,0.5) +
          LeadRight.skew(0.5,0.5) +
          ExtendRight.scale(1.0,0.5),

          Forward +
          PullRight.scale(1.0,0.5) +
          LeadLeft.scale(0.5,1.5) +
          ExtendRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Left Square Thru 1 1/2',
      formation:Formation('Facing Couples Compact'),
      from:'Facing Couples',difficulty: 1,noDisplay: true,
      paths:[
          Forward.scale(0.5,1.0) +
          PullRight.scale(1.0,0.5) +
          LeadRight.scale(3.0,1.0).skew(0.0,0.5),

          Forward.scale(0.5,1.0) +
          PullRight.scale(1.0,0.5) +
          LeadLeft.scale(1.0,1.5)
      ]),

    AnimatedCall('Left Square Thru 1 1/2',
      formation:Formation('Wave LH'),
      from:'Left-Hand Wave',difficulty: 2,noDisplay: true,
      paths:[
          LeadLeft.changeBeats(3).scale(1.0,3.0),

          LeadRight.changeBeats(3).scale(3.0,1.0)
      ]),

    AnimatedCall('Left Square Thru 1 1/2',
      formation:Formation('Eight Chain Thru'),
      from:'Eight Chain Thru',difficulty: 1,noDisplay: true,
      paths:[
          PullRight.scale(1.0,0.5) +
          LeadRight.skew(0.5,0.5),

          PullRight.scale(1.0,0.5) +
          LeadLeft.scale(0.5,1.5),

          PullRight.scale(1.0,0.5) +
          LeadRight.skew(0.5,0.5),

          PullRight.scale(1.0,0.5) +
          LeadLeft.scale(0.5,1.5)
      ]),

    AnimatedCall('Left Square Thru 1 1/2',
      formation:Formation('Normal Lines'),
      from:'Lines',difficulty: 2,noDisplay: true,
      paths:[
          Forward +
          PullRight.scale(1.0,0.5) +
          LeadRight.scale(3.0,1.0).skew(0.0,0.5),

          Forward +
          PullRight.scale(1.0,0.5) +
          LeadLeft.scale(1.0,1.5),

          Forward +
          PullRight.scale(1.0,0.5) +
          LeadRight.scale(3.0,1.0).skew(0.0,0.5),

          Forward +
          PullRight.scale(1.0,0.5) +
          LeadLeft.scale(1.0,1.5)
      ]),

    AnimatedCall('Heads Square Thru 2',
      formation:Formation('Static Square'),
      from:'Static Square',group:' ',difficulty: 1,notForSequencer: true,
      paths:[
          Forward_2 +
          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5) +
          ExtendLeft.scale(1.0,0.5),

          Forward_2 +
          PullLeft.scale(1.0,0.5) +
          LeadLeft.skew(0.5,-0.5) +
          ExtendLeft.scale(1.0,0.5),

          Path(),

          Path()
      ]),

    AnimatedCall('Heads Square Thru 3',
      formation:Formation('Static Square'),
      from:'Static Square',group:' ',difficulty: 1,notForSequencer: true,
      paths:[
          Forward_2 +
          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5) +
          ExtendRight.scale(1.0,0.5),

          Forward_2 +
          PullLeft.scale(1.0,0.5) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.scale(0.5,1.5) +
          ExtendRight.scale(1.0,0.5),

          Path(),

          Path()
      ]),

    AnimatedCall('Heads Square Thru 4',
      formation:Formation('Static Square'),
      from:'Static Square',group:' ',difficulty: 1,notForSequencer: true,
      paths:[
          Forward_2 +
          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5) +
          LeadRight.scale(0.5,1.5) +
          ExtendLeft.scale(1.0,0.5),

          Forward_2 +
          PullLeft.scale(1.0,0.5) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.scale(0.5,1.5) +
          LeadLeft.skew(0.5,-0.5) +
          ExtendLeft.scale(1.0,0.5),

          Path(),

          Path()
      ]),

    AnimatedCall('Heads Left Square Thru 4',
      formation:Formation('Static Square'),
      from:'Static Square',group:' ',difficulty: 1,notForSequencer: true,
      paths:[
          Forward_2 +
          PullRight.scale(1.0,0.5) +
          LeadRight.skew(0.5,0.5) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5) +
          ExtendRight.scale(1.0,0.5),

          Forward_2 +
          PullRight.scale(1.0,0.5) +
          LeadLeft.scale(0.5,1.5) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.scale(0.5,1.5) +
          ExtendRight.scale(1.0,0.5),

          Path(),

          Path()
      ]),

    AnimatedCall('Sides Square Thru 2',
      formation:Formation('Static Square'),
      from:'Static Square',group:' ',difficulty: 1,notForSequencer: true,noDisplay: true,
      paths:[
          Path(),

          Path(),

          Forward_2 +
          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5) +
          ExtendLeft.scale(1.0,0.5),

          Forward_2 +
          PullLeft.scale(1.0,0.5) +
          LeadLeft.skew(0.5,-0.5) +
          ExtendLeft.scale(1.0,0.5)
      ]),

    AnimatedCall('Sides Square Thru 3',
      formation:Formation('Static Square'),
      from:'Static Square',group:' ',difficulty: 1,notForSequencer: true,noDisplay: true,
      paths:[
          Path(),

          Path(),

          Forward_2 +
          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5) +
          ExtendRight.scale(1.0,0.5),

          Forward_2 +
          PullLeft.scale(1.0,0.5) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.scale(0.5,1.5) +
          ExtendRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Sides Square Thru 4',
      formation:Formation('Static Square'),
      from:'Static Square',group:' ',difficulty: 1,notForSequencer: true,noDisplay: true,
      paths:[
          Path(),

          Path(),

          Forward_2 +
          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5) +
          LeadRight.scale(0.5,1.5) +
          ExtendLeft.scale(1.0,0.5),

          Forward_2 +
          PullLeft.scale(1.0,0.5) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.scale(0.5,1.5) +
          LeadLeft.skew(0.5,-0.5) +
          ExtendLeft.scale(1.0,0.5)
      ]),

    AnimatedCall('Sides Left Square Thru 4',
      formation:Formation('Static Square'),
      from:'Static Square',group:' ',difficulty: 2,notForSequencer: true,noDisplay: true,
      paths:[
          Path(),

          Path(),

          Forward_2 +
          PullRight.scale(1.0,0.5) +
          LeadRight.skew(0.5,0.5) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5) +
          ExtendRight.scale(1.0,0.5),

          Forward_2 +
          PullRight.scale(1.0,0.5) +
          LeadLeft.scale(0.5,1.5) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.scale(0.5,1.5) +
          ExtendRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Square Thru 1 1/2',
      formation:Formation('Facing Couples Compact'),
      from:'Facing Couples',difficulty: 2,
      paths:[
          Forward.scale(0.5,1.0) +
          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5),

          Forward.scale(0.5,1.0) +
          PullLeft.scale(1.0,0.5) +
          LeadLeft.skew(0.5,-0.5)
      ]),

    AnimatedCall('Square Thru 1 1/2',
      formation:Formation('Wave RH'),
      from:'Right-Hand Wave',difficulty: 3,
      paths:[
          LeadRight.changeBeats(3).scale(0.5,3.0),

          LeadLeft.changeBeats(3).skew(0.5,0.0)
      ]),

    AnimatedCall('Square Thru 1 1/2',
      formation:Formation('Eight Chain Thru'),
      from:'Eight Chain Thru',difficulty: 2,
      paths:[
          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5),

          PullLeft.scale(1.0,0.5) +
          LeadLeft.skew(0.5,-0.5),

          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5),

          PullLeft.scale(1.0,0.5) +
          LeadLeft.skew(0.5,-0.5)
      ]),

    AnimatedCall('Square Thru 1 1/2',
      formation:Formation('Normal Lines'),
      from:'Lines',difficulty: 2,
      paths:[
          Forward +
          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5),

          Forward +
          PullLeft.scale(1.0,0.5) +
          LeadLeft.skew(0.5,-0.5),

          Forward +
          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5),

          Forward +
          PullLeft.scale(1.0,0.5) +
          LeadLeft.skew(0.5,-0.5)
      ]),

    AnimatedCall('Square Thru 1 1/2',
      formation:Formation('Ocean Waves RH BGGB'),
      from:'Right-Hand Waves',difficulty: 3,
      paths:[
          LeadRight.changeBeats(3).scale(0.5,3.0),

          LeadLeft.changeBeats(3).skew(0.5,0.0),

          LeadLeft.changeBeats(3).skew(0.5,0.0),

          LeadRight.changeBeats(3).scale(0.5,3.0)
      ]),

    AnimatedCall('Square Thru 1 1/2',
      formation:Formation('Tidal Wave RH BGGB'),
      from:'Right-Hand Tidal Wave',difficulty: 3,
      paths:[
          LeadRight.changeBeats(2).scale(0.5,1.5),

          LeadLeft.changeBeats(2).scale(1.0,0.5).skew(0.5,0.0),

          LeadLeft.changeBeats(2).scale(1.0,0.5).skew(0.5,0.0),

          LeadRight.changeBeats(2).scale(0.5,1.5)
      ]),

    AnimatedCall('Square Thru 2 1/2',
      formation:Formation('Facing Couples Compact'),
      from:'Facing Couples',difficulty: 2,
      paths:[
          Forward.scale(0.5,1.0) +
          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5),

          Forward.scale(0.5,1.0) +
          PullLeft.scale(1.0,0.5) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.scale(0.5,1.5)
      ]),

    AnimatedCall('Square Thru 2 1/2',
      formation:Formation('Wave RH'),
      from:'Right-Hand Wave',difficulty: 3,
      paths:[
          LeadRight.changeBeats(3).scale(0.5,3.0) +
          LeadRight.skew(0.5,0.5),

          LeadLeft.changeBeats(3).skew(0.5,0.0) +
          LeadLeft.scale(0.5,1.5)
      ]),

    AnimatedCall('Square Thru 2 1/2',
      formation:Formation('Eight Chain Thru'),
      from:'Eight Chain Thru',difficulty: 2,
      paths:[
          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5),

          PullLeft.scale(1.0,0.5) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.scale(0.5,1.5),

          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5),

          PullLeft.scale(1.0,0.5) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.scale(0.5,1.5)
      ]),

    AnimatedCall('Square Thru 2 1/2',
      formation:Formation('Normal Lines'),
      from:'Lines',difficulty: 2,
      paths:[
          Forward +
          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5),

          Forward +
          PullLeft.scale(1.0,0.5) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.scale(0.5,1.5),

          Forward +
          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5),

          Forward +
          PullLeft.scale(1.0,0.5) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.scale(0.5,1.5)
      ]),

    AnimatedCall('Square Thru 2 1/2',
      formation:Formation('Ocean Waves RH BGGB'),
      from:'Right-Hand Waves',difficulty: 3,
      paths:[
          LeadRight.changeBeats(3).scale(0.5,3.0) +
          LeadRight.skew(0.5,0.5),

          LeadLeft.changeBeats(3).skew(0.5,0.0) +
          LeadLeft.scale(0.5,1.5),

          LeadLeft.changeBeats(3).skew(0.5,0.0) +
          LeadLeft.scale(0.5,1.5),

          LeadRight.changeBeats(3).scale(0.5,3.0) +
          LeadRight.skew(0.5,0.5)
      ]),

    AnimatedCall('Square Thru 2 1/2',
      formation:Formation('Tidal Wave RH BGGB'),
      from:'Right-Hand Tidal Wave',difficulty: 3,
      paths:[
          LeadRight.changeBeats(2).scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5),

          LeadLeft.changeBeats(2).scale(1.0,0.5).skew(0.5,0.0) +
          LeadLeft.scale(0.5,1.5),

          LeadLeft.changeBeats(2).scale(1.0,0.5).skew(0.5,0.0) +
          LeadLeft.scale(0.5,1.5),

          LeadRight.changeBeats(2).scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5)
      ]),

    AnimatedCall('Square Thru 3 1/2',
      formation:Formation('Facing Couples Compact'),
      from:'Facing Couples',difficulty: 2,
      paths:[
          Forward.scale(0.5,1.0) +
          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5) +
          LeadRight.scale(0.5,1.5),

          Forward.scale(0.5,1.0) +
          PullLeft.scale(1.0,0.5) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.scale(0.5,1.5) +
          LeadLeft.skew(0.5,-0.5)
      ]),

    AnimatedCall('Square Thru 3 1/2',
      formation:Formation('Wave RH'),
      from:'Right-Hand Wave',difficulty: 3,
      paths:[
          LeadRight.changeBeats(3).scale(0.5,3.0) +
          LeadRight.skew(0.5,0.5) +
          LeadRight.scale(0.5,1.5),

          LeadLeft.changeBeats(3).skew(0.5,0.0) +
          LeadLeft.scale(0.5,1.5) +
          LeadLeft.skew(0.5,-0.5)
      ]),

    AnimatedCall('Square Thru 3 1/2',
      formation:Formation('Eight Chain Thru'),
      from:'Eight Chain Thru',difficulty: 2,
      paths:[
          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5) +
          LeadRight.scale(0.5,1.5),

          PullLeft.scale(1.0,0.5) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.scale(0.5,1.5) +
          LeadLeft.skew(0.5,-0.5),

          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5) +
          LeadRight.scale(0.5,1.5),

          PullLeft.scale(1.0,0.5) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.scale(0.5,1.5) +
          LeadLeft.skew(0.5,-0.5)
      ]),

    AnimatedCall('Square Thru 3 1/2',
      formation:Formation('Normal Lines'),
      from:'Lines',difficulty: 2,
      paths:[
          Forward +
          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5) +
          LeadRight.scale(0.5,1.5),

          Forward +
          PullLeft.scale(1.0,0.5) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.scale(0.5,1.5) +
          LeadLeft.skew(0.5,-0.5),

          Forward +
          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5) +
          LeadRight.scale(0.5,1.5),

          Forward +
          PullLeft.scale(1.0,0.5) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.scale(0.5,1.5) +
          LeadLeft.skew(0.5,-0.5)
      ]),

    AnimatedCall('Square Thru 3 1/2',
      formation:Formation('Ocean Waves RH BGGB'),
      from:'Right-Hand Waves',difficulty: 3,
      paths:[
          LeadRight.changeBeats(3).scale(0.5,3.0) +
          LeadRight.skew(0.5,0.5) +
          LeadRight.scale(0.5,1.5),

          LeadLeft.changeBeats(3).skew(0.5,0.0) +
          LeadLeft.scale(0.5,1.5) +
          LeadLeft.skew(0.5,-0.5),

          LeadLeft.changeBeats(3).skew(0.5,0.0) +
          LeadLeft.scale(0.5,1.5) +
          LeadLeft.skew(0.5,-0.5),

          LeadRight.changeBeats(3).scale(0.5,3.0) +
          LeadRight.skew(0.5,0.5) +
          LeadRight.scale(0.5,1.5)
      ]),

    AnimatedCall('Square Thru 3 1/2',
      formation:Formation('Tidal Wave RH BGGB'),
      from:'Right-Hand Tidal Wave',difficulty: 3,
      paths:[
          LeadRight.changeBeats(2).scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5) +
          LeadRight.scale(0.5,1.5),

          LeadLeft.changeBeats(2).scale(1.0,0.5).skew(0.5,0.0) +
          LeadLeft.scale(0.5,1.5) +
          LeadLeft.skew(0.5,-0.5),

          LeadLeft.changeBeats(2).scale(1.0,0.5).skew(0.5,0.0) +
          LeadLeft.scale(0.5,1.5) +
          LeadLeft.skew(0.5,-0.5),

          LeadRight.changeBeats(2).scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5) +
          LeadRight.scale(0.5,1.5)
      ]),

    AnimatedCall('Square Thru, on the Third Hand Spin the Top',
      formation:Formation('Normal Lines'),
      group:'   ',parts:'5;3',difficulty: 2,
      taminator: '''
      Spin the Top is in the Mainstream program.
    ''',
      paths:[
          Forward +
          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5) +
          SwingRight.scale(0.5,0.5) +
          SwingLeft.scale(0.5,0.5) +
          HingeLeft.scale(1.0,0.5),

          Forward +
          PullLeft.scale(1.0,0.5) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.scale(0.5,1.5) +
          SwingRight.scale(0.5,0.5) +
          LeadRight.changeBeats(4.5).scale(3.0,1.5),

          Forward +
          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5) +
          SwingRight.scale(0.5,0.5) +
          SwingLeft.scale(0.5,0.5) +
          HingeLeft.scale(1.0,0.5),

          Forward +
          PullLeft.scale(1.0,0.5) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.scale(0.5,1.5) +
          SwingRight.scale(0.5,0.5) +
          LeadRight.changeBeats(4.5).scale(3.0,1.5)
      ]),

    AnimatedCall('Square Thru, on the Third Hand Eight Chain 5',
      formation:Formation('Eight Chain Thru'),
      group:'   ',difficulty: 2,
      taminator: '''
      Eight Chain 5 is in the Mainstream program.
    ''',
      paths:[
          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5) +
          ExtendRight.scale(1.0,0.5) +
          BeauWheel.changeBeats(2.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          PullRight.changeBeats(1.25).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.25).scale(1.0,0.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5),

          PullLeft.scale(1.0,0.5) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.scale(0.5,1.5) +
          ExtendRight.scale(1.0,0.5) +
          BelleWheel.changeBeats(2.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          PullRight.changeBeats(1.25).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.25).scale(1.0,0.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5),

          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5) +
          ExtendRight.scale(1.0,0.5) +
          PullRight.changeBeats(1.25).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.25).scale(1.0,0.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          BeauWheel.changeBeats(2.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5),

          PullLeft.scale(1.0,0.5) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.scale(0.5,1.5) +
          ExtendRight.scale(1.0,0.5) +
          PullRight.changeBeats(1.25).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.25).scale(1.0,0.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          BelleWheel.changeBeats(2.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5)
      ]),

    AnimatedCall('Square Thru, on the Third Hand Box the Gnat and Right and Left Grand',
      formation:Formation('Eight Chain Thru'),
      group:'   ',parts:'4;3',difficulty: 2,
      paths:[
          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5) +
          UmTurnRight.changehands(Hands.GRIPRIGHT).skew(1.0,-0.5) +
          Forward.changehands(Hands.GRIPRIGHT) +
          Forward.changeBeats(.5).scale(0.5,1.0) +
          ExtendRight.changeBeats(2.5).changehands(Hands.LEFT).scale(1.5,2.75) +
          LeadLeft_12.changeBeats(3).changehands(Hands.RIGHT).scale(2.0,2.0).skew(0.16,1.58) +
          LeadLeft_12.changeBeats(3).changehands(Hands.LEFT).scale(3.0,3.0).skew(0.52,-1.2) +
          LeadLeft_12.changeBeats(2),

          PullLeft.scale(1.0,0.5) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.scale(0.5,1.5) +
          UmTurnLeft.changehands(Hands.GRIPRIGHT).skew(1.0,-0.5) +
          ExtendLeft.changehands(Hands.GRIPRIGHT) +
          ExtendLeft.changeBeats(3).changehands(Hands.LEFT).scale(2.0,0.25) +
          LeadRight_12.changeBeats(3).changehands(Hands.RIGHT).scale(3.0,3.0).skew(0.52,1.3) +
          LeadRight_12.changeBeats(3).changehands(Hands.LEFT).scale(2.0,2.0).skew(0.16,-1.67) +
          LeadRight_12.changeBeats(2).skew(1.0,0.5),

          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5) +
          UmTurnRight.changehands(Hands.GRIPRIGHT).skew(1.0,-0.5) +
          Forward.changehands(Hands.GRIPRIGHT) +
          LeadLeft.changeBeats(3).changehands(Hands.LEFT).scale(1.75,1.0) +
          LeadLeft_12.changeBeats(3).changehands(Hands.RIGHT).scale(2.0,2.0).skew(0.16,1.58) +
          LeadLeft_12.changeBeats(3).changehands(Hands.LEFT).scale(3.0,3.0).skew(0.52,-1.2) +
          LeadLeft_12.changeBeats(2),

          PullLeft.scale(1.0,0.5) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.scale(0.5,1.5) +
          UmTurnLeft.changehands(Hands.GRIPRIGHT).skew(1.0,-0.5) +
          ExtendLeft.changehands(Hands.GRIPRIGHT) +
          LeadRight.changeBeats(3).changehands(Hands.LEFT).scale(0.25,2.0) +
          LeadRight_12.changeBeats(3).changehands(Hands.RIGHT).scale(3.0,3.0).skew(0.52,1.3) +
          LeadRight_12.changeBeats(3).changehands(Hands.LEFT).scale(2.0,2.0).skew(0.16,-1.67) +
          LeadRight_12.changeBeats(2).skew(1.0,0.5)
      ]),

    AnimatedCall('Square Thru, on the Fourth Hand Left Swing Thru',
      formation:Formation('Normal Lines'),
      group:'   ',difficulty: 2,
      taminator: '''
      Swing Thru is in Basic 2.
    ''',
      paths:[
          Forward +
          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5) +
          LeadRight.scale(0.5,1.5) +
          SwingLeft.scale(0.6,1.0),

          Forward +
          PullLeft.scale(1.0,0.5) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.scale(0.5,1.5) +
          LeadLeft.skew(0.5,-0.5) +
          SwingLeft.scale(0.6,0.4) +
          SwingRight.scale(0.7,0.7),

          Forward +
          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5) +
          LeadRight.scale(0.5,1.5) +
          SwingLeft.scale(0.6,1.0),

          Forward +
          PullLeft.scale(1.0,0.5) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.scale(0.5,1.5) +
          LeadLeft.skew(0.5,-0.5) +
          SwingLeft.scale(0.6,0.4) +
          SwingRight.scale(0.7,0.7)
      ]),

    AnimatedCall('Square Thru, on the Fourth Hand Left Allemande',
      formation:Formation('Normal Lines'),
      group:'   ',parts:'6.5',difficulty: 2,
      paths:[
          Forward +
          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5) +
          LeadRight.scale(0.5,1.5) +
          SwingLeft.scale(0.5,0.5) +
          Forward.changeBeats(2),

          Forward +
          PullLeft.scale(1.0,0.5) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.scale(0.5,1.5) +
          LeadLeft.skew(0.5,-0.5) +
          SwingLeft.scale(0.5,0.5) +
          EighthRight.changeBeats(2).skew(1.5,0.75),

          Forward +
          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5) +
          LeadRight.scale(0.5,1.5) +
          SwingLeft.scale(0.5,0.5) +
          EighthLeft.changeBeats(2).skew(1.5,0.25),

          Forward +
          PullLeft.scale(1.0,0.5) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.scale(0.5,1.5) +
          LeadLeft.skew(0.5,-0.5) +
          SwingLeft.scale(0.5,0.5) +
          ExtendLeft.changeBeats(2).scale(1.0,1.0)
      ]),

    AnimatedCall('Square Thru, on the Third Hand Touch 1/4',
      formation:Formation('Facing Couples Compact'),
      group:'   ',difficulty: 2,
      taminator: '''
      Touch a Quarter is in Basic 2.
    ''',
      paths:[
          Forward.scale(0.5,1.0) +
          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5) +
          QuarterRight.changehands(Hands.RIGHT).skew(1.0,0.0),

          Forward.scale(0.5,1.0) +
          PullLeft.scale(1.0,0.5) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.scale(0.5,1.5) +
          HingeRight
      ]),

    AnimatedCall('Square Thru, on the Fourth Hand Left Touch 1/4',
      formation:Formation('Facing Couples Compact'),
      group:'   ',difficulty: 2,
      taminator: '''
      Touch a Quarter is in Basic 2.
    ''',
      paths:[
          Forward.scale(0.5,1.0) +
          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5) +
          LeadRight.scale(0.5,1.5) +
          HingeLeft,

          Forward.scale(0.5,1.0) +
          PullLeft.scale(1.0,0.5) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.scale(0.5,1.5) +
          LeadLeft.skew(0.5,-0.5) +
          QuarterLeft.changehands(Hands.LEFT).skew(1.0,0.0)
      ]),
  ];

