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

  final List<AnimatedCall> SwitchTheLine = [

    AnimatedCall('Switch the Line',
      formation:Formation('Wave RH'),
      from:'Right-Hand Wave',
      taminator: '''Same as Switch the Wave (A-2)''',
      paths:[
          RunRight.changeBeats(6).scale(1.0,2.0),

          RunRight
      ]),

    AnimatedCall('Switch the Line',
      formation:Formation('Compact Wave RH'),
      from:'Compact Right-Hand Wave',noDisplay: true,
      paths:[
          RunRight.changeBeats(6),

          RunRight.changeBeats(6).scale(0.5,0.5)
      ]),

    AnimatedCall('Switch the Line',
      formation:Formation('Wave LH'),
      from:'Left-Hand Wave',
      taminator: '''Same as Switch the Wave (A-2)''',
      paths:[
          RunLeft.changeBeats(6).scale(1.0,2.0),

          RunLeft
      ]),

    AnimatedCall('Switch the Line',
      formation:Formation('Compact Wave LH'),
      from:'Compact Left-Hand Wave',noDisplay: true,
      paths:[
          RunLeft.changeBeats(6),

          RunLeft.changeBeats(6).scale(0.5,0.5)
      ]),

    AnimatedCall('Switch the Line',
      formation:Formation('Two-Faced Line RH'),
      from:'Right-Hand Two-Faced Line',
      paths:[
          RunRight.changeBeats(4).scale(1.0,2.0),

          FlipLeft
      ]),

    AnimatedCall('Switch the Line',
      formation:Formation('Compact Two-Faced Line RH'),
      from:'Compact Right-Hand Two-Faced Line',noDisplay: true,
      paths:[
          RunRight.changeBeats(4),

          FlipLeft.scale(1.0,0.5)
      ]),

    AnimatedCall('Switch the Line',
      formation:Formation('Two-Faced Line LH'),
      from:'Left-Hand Two-Faced Line',
      paths:[
          FlipRight,

          RunLeft.changeBeats(4).scale(1.0,2.0)
      ]),

    AnimatedCall('Switch the Line',
      formation:Formation('Compact Two-Faced Line LH'),
      from:'Compact Left-Hand Two-Faced Line',noDisplay: true,
      paths:[
          FlipRight.scale(1.0,0.5),

          RunLeft.changeBeats(4)
      ]),

    AnimatedCall('Switch the Line',
      formation:Formation('Inverted Lines Ends Facing Out'),
      from:'Inverted Lines',
      paths:[
          FlipLeft.changeBeats(4).scale(1.0,2.0),

          RunLeft.changeBeats(4),

          RunRight.changeBeats(4),

          RunRight.changeBeats(4).scale(1.0,2.0)
      ]),

    AnimatedCall('Switch the Line',
      formation:Formation('Lines Facing Out'),
      from:'Lines Facing Out',
      paths:[
          RunLeft.changeBeats(4).scale(1.0,2.0),

          FlipRight,

          FlipLeft,

          RunRight.changeBeats(4).scale(2.0,2.0)
      ]),

    AnimatedCall('Switch the Line',
      formation:Formation('Two-Faced Lines RH'),
      from:'Right-Hand Two-Faced Lines',
      paths:[
          RunRight.changeBeats(4).scale(1.0,2.0),

          FlipLeft,

          FlipLeft,

          RunRight.changeBeats(4).scale(1.0,2.0)
      ]),

    AnimatedCall('Switch the Line',
      formation:Formation('Two-Faced Lines LH'),
      from:'Left-Hand Two-Faced Lines',
      paths:[
          RunLeft.changeBeats(4).scale(1.0,2.0),

          FlipRight,

          FlipRight,

          RunLeft.changeBeats(4).scale(1.0,2.0)
      ]),

    AnimatedCall('Switch the Line',
      formation:Formation('Ocean Waves RH GBBG'),
      from:'Right-Hand Waves',
      paths:[
          RunRight.changeBeats(6).scale(1.0,2.0),

          RunRight,

          RunRight,

          RunRight.changeBeats(6).scale(1.0,2.0)
      ]),

    AnimatedCall('Switch the Line',
      formation:Formation('Ocean Waves LH GBBG'),
      from:'Left-Hand Waves',
      paths:[
          RunLeft.changeBeats(6).scale(1.0,2.0),

          RunLeft,

          RunLeft,

          RunLeft.changeBeats(6).scale(1.0,2.0)
      ]),

    AnimatedCall('All 8 Switch the Line',
      formation:Formation('Thar RH Boys'),
      from:'Thar',
      paths:[
          RunLeft,

          RunLeft.changeBeats(6).scale(1.5,2.0),

          RunLeft,

          RunLeft.changeBeats(6).scale(1.5,2.0)
      ]),

    AnimatedCall('All 8 Switch the Line',
      formation:Formation('Thar LH Boys'),
      from:'Wrong Way Thar',
      paths:[
          RunRight,

          RunRight.changeBeats(6).scale(1.5,2.0),

          RunRight,

          RunRight.changeBeats(6).scale(1.5,2.0)
      ]),

    AnimatedCall('All 8 Switch the Line',
      formation:Formation('Star Promenade'),
      from:'Star Promenade',
      paths:[
          FlipRight,

          RunLeft.changeBeats(6).scale(1.5,2.0),

          FlipRight,

          RunLeft.changeBeats(6).scale(1.5,2.0)
      ]),

    AnimatedCall('All 8 Switch the Line',
      formation:Formation('Reverse Star Promenade'),
      from:'Reverse Star Promenade',
      paths:[
          RunRight.changeBeats(6).scale(1.5,2.0),

          FlipLeft,

          RunRight.changeBeats(6).scale(1.5,2.0),

          FlipLeft
      ]),

    AnimatedCall('As Couples Switch the Line',
      formation:Formation('Tidal Line RH'),
      from:'Tidal Line',
      paths:[
          RunRight.changeBeats(4).scale(3.5,2.5),

          RunRight.changeBeats(4).scale(2.5,1.5),

          RunLeft.scale(0.5,0.5),

          RunLeft.scale(1.5,1.5)
      ]),
  ];

