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

  final List<AnimatedCall> CrossRoll = [

    AnimatedCall('Cross Roll',
      formation:Formation('Wave RH'),
      from:'Right-Hand Wave',
      paths:[
          FlipRight,

          RunLeft.changeBeats(4).scale(1.0,2.0)
      ]),

    AnimatedCall('Cross Roll',
      formation:Formation('Compact Wave RH'),
      from:'Compact Right-Hand Wave',noDisplay: true,
      paths:[
          FlipRight.scale(1.0,0.5),

          RunLeft.changeBeats(4)
      ]),

    AnimatedCall('Cross Roll',
      formation:Formation('Wave LH'),
      from:'Left-Hand Wave',
      paths:[
          FlipLeft,

          RunRight.changeBeats(4).scale(1.0,2.0)
      ]),

    AnimatedCall('Cross Roll',
      formation:Formation('Compact Wave LH'),
      from:'Compact Left-Hand Wave',noDisplay: true,
      paths:[
          FlipLeft.scale(1.0,0.5),

          RunRight.changeBeats(4)
      ]),

    AnimatedCall('Cross Roll',
      formation:Formation('Two-Faced Line RH'),
      from:'Right-Hand Two-Faced Line',
      paths:[
          FlipRight,

          RunRight.changeBeats(4).scale(1.0,2.0)
      ]),

    AnimatedCall('Cross Roll',
      formation:Formation('Compact Two-Faced Line RH'),
      from:'Compact Right-Hand Two-Faced Line',noDisplay: true,
      paths:[
          FlipRight.scale(1.0,0.5),

          RunRight.changeBeats(4)
      ]),

    AnimatedCall('Cross Roll',
      formation:Formation('Two-Faced Line LH'),
      from:'Left-Hand Two-Faced Line',
      paths:[
          RunLeft.changeBeats(4).scale(1.0,2.0),

          FlipLeft
      ]),

    AnimatedCall('Cross Roll',
      formation:Formation('Compact Two-Faced Line LH'),
      from:'Compact Left-Hand Two-Faced Line',noDisplay: true,
      paths:[
          RunLeft.changeBeats(4),

          FlipLeft.scale(1.0,0.5)
      ]),

    AnimatedCall('Cross Roll',
      formation:Formation('Ocean Waves RH BGBG'),
      from:'Right-Hand Waves',
      paths:[
          FlipRight,

          RunLeft.changeBeats(4).scale(1.0,2.0),

          RunLeft.changeBeats(4).scale(1.0,2.0),

          FlipRight
      ]),

    AnimatedCall('Cross Roll',
      formation:Formation('Ocean Waves LH BGBG'),
      from:'Left-Hand Waves',
      paths:[
          FlipLeft,

          RunRight.changeBeats(4).scale(1.0,2.0),

          RunRight.changeBeats(4).scale(1.0,2.0),

          FlipLeft
      ]),

    AnimatedCall('Cross Roll',
      formation:Formation('Two-Faced Lines RH'),
      from:'Right-Hand Two-Faced Lines',
      paths:[
          FlipRight,

          RunRight.changeBeats(4).scale(1.0,2.0),

          RunRight.changeBeats(4).scale(1.0,2.0),

          FlipRight
      ]),

    AnimatedCall('Cross Roll',
      formation:Formation('Two-Faced Lines LH'),
      from:'Left-Hand Two-Faced Lines',
      paths:[
          FlipLeft,

          RunLeft.changeBeats(4).scale(1.0,2.0),

          RunLeft.changeBeats(4).scale(1.0,2.0),

          FlipLeft
      ]),

    AnimatedCall('Cross Roll',
      formation:Formation('Inverted Lines Ends Facing In'),
      from:'Inverted Lines, Ends Facing In',
      paths:[
          FlipRight,

          RunLeft.changeBeats(4).scale(2.0,2.0),

          RunRight.changeBeats(4).scale(1.0,2.0),

          FlipLeft
      ]),

    AnimatedCall('Cross Roll',
      formation:Formation('Inverted Lines Ends Facing Out'),
      from:'Inverted Lines, Ends Facing Out',
      paths:[
          FlipLeft,

          RunRight.changeBeats(4).scale(1.0,2.0),

          RunLeft.changeBeats(4).scale(2.0,2.0),

          FlipRight
      ]),

    AnimatedCall('Cross Roll',
      formation:Formation('Normal Lines'),
      from:'Normal Lines',
      paths:[
          FlipRight,

          RunRight.changeBeats(4).scale(1.0,2.0),

          RunLeft.changeBeats(4).scale(2.0,2.0),

          FlipLeft
      ]),

    AnimatedCall('Cross Roll',
      formation:Formation('Lines Facing Out'),
      from:'Lines Facing Out',
      paths:[
          FlipLeft,

          RunLeft.changeBeats(4).scale(2.0,2.0),

          RunRight.changeBeats(4).scale(1.0,2.0),

          FlipRight
      ]),

    AnimatedCall('Cross Roll',
      formation:Formation('3 and 1 Lines #1'),
      from:'3 and 1 Lines #1',
      paths:[
          FlipLeft,

          RunRight.changeBeats(4).scale(1.0,2.0),

          RunLeft.changeBeats(4).scale(2.0,2.0),

          FlipLeft
      ]),

    AnimatedCall('Cross Roll',
      formation:Formation('3 and 1 Lines #2'),
      from:'3 and 1 Lines #2',
      paths:[
          FlipRight,

          RunLeft.changeBeats(4).scale(1.0,2.0),

          RunLeft.changeBeats(4).scale(1.0,2.0),

          FlipLeft
      ]),

    AnimatedCall('Cross Roll',
      formation:Formation('3 and 1 Lines #3'),
      from:'3 and 1 Lines #3',
      paths:[
          FlipRight,

          RunRight.changeBeats(4).scale(1.0,2.0),

          RunRight.changeBeats(4).scale(1.0,2.0),

          FlipLeft
      ]),

    AnimatedCall('Cross Roll',
      formation:Formation('3 and 1 Lines #4'),
      from:'3 and 1 Lines #4',
      paths:[
          FlipRight,

          RunRight.changeBeats(4).scale(1.0,2.0),

          RunLeft.changeBeats(4).scale(2.0,2.0),

          FlipRight
      ]),

    AnimatedCall('Cross Roll',
      formation:Formation('3 and 1 Lines #5'),
      from:'3 and 1 Lines #5',
      paths:[
          FlipRight,

          RunLeft.changeBeats(4).scale(2.0,2.0),

          RunRight.changeBeats(4).scale(1.0,2.0),

          FlipRight
      ]),

    AnimatedCall('Cross Roll',
      formation:Formation('3 and 1 Lines #6'),
      from:'3 and 1 Lines #6',
      paths:[
          FlipLeft,

          RunRight.changeBeats(4).scale(1.0,2.0),

          RunRight.changeBeats(4).scale(1.0,2.0),

          FlipRight
      ]),

    AnimatedCall('Cross Roll',
      formation:Formation('3 and 1 Lines #7'),
      from:'3 and 1 Lines #7',
      paths:[
          FlipLeft,

          RunLeft.changeBeats(4).scale(1.0,2.0),

          RunLeft.changeBeats(4).scale(1.0,2.0),

          FlipRight
      ]),

    AnimatedCall('Cross Roll',
      formation:Formation('3 and 1 Lines #8'),
      from:'3 and 1 Lines #8',
      paths:[
          FlipLeft,

          RunLeft.changeBeats(4).scale(2.0,2.0),

          RunRight.changeBeats(4).scale(1.0,2.0),

          FlipLeft
      ]),

    AnimatedCall('Cross Roll',
      formation:Formation('Tidal Line RH'),
      from:'Tidal Line',
      paths:[
          FlipRight.scale(1.0,0.5),

          RunRight.changeBeats(4),

          RunLeft.changeBeats(4).scale(2.0,1.0),

          FlipLeft.scale(1.0,0.5)
      ]),

    AnimatedCall('Cross Roll',
      formation:Formation('Tidal Line LH'),
      from:'Tidal Line LH',noDisplay: true,
      paths:[
          RunLeft.changeBeats(4),

          FlipLeft.scale(1.0,0.5),

          FlipRight.scale(1.0,0.5),

          RunRight.changeBeats(4).scale(2.0,1.0)
      ]),

    AnimatedCall('Cross Roll',
      formation:Formation('Two-Faced Tidal Line RH'),
      from:'Two-Faced Tidal Line',
      paths:[
          FlipRight.scale(1.0,0.5),

          RunRight.changeBeats(4),

          RunRight.changeBeats(4),

          FlipRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Cross Roll',
      formation:Formation('Two-Faced Tidal Line LH'),
      from:'Two-Faced Tidal Line LH',noDisplay: true,
      paths:[
          FlipLeft.scale(1.0,0.5),

          RunLeft.changeBeats(4),

          RunLeft.changeBeats(4),

          FlipLeft.scale(1.0,0.5)
      ]),

    AnimatedCall('Cross Roll',
      formation:Formation('Tidal Inverted Line RH'),
      from:'Tidal Inverted Line RH',noDisplay: true,
      paths:[
          FlipRight.scale(1.0,0.5),

          RunLeft.changeBeats(4).scale(2.0,1.0),

          RunRight.changeBeats(4),

          FlipLeft.scale(1.0,0.5)
      ]),

    AnimatedCall('Cross Roll',
      formation:Formation('Tidal Inverted Line LH'),
      from:'Tidal Inverted Line LH',noDisplay: true,
      paths:[
          FlipLeft.scale(1.0,0.5),

          RunRight.changeBeats(4),

          RunLeft.changeBeats(4).scale(2.0,1.0),

          FlipRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Cross Roll',
      formation:Formation('Tidal Wave RH BGGB'),
      from:'Right-Hand Tidal Wave',
      paths:[
          FlipRight.scale(1.0,0.5),

          RunLeft.changeBeats(4),

          RunLeft.changeBeats(4),

          FlipRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Cross Roll',
      formation:Formation('Tidal Wave LH BGGB'),
      from:'Left-Hand Tidal Wave',
      paths:[
          FlipLeft.scale(1.0,0.5),

          RunRight.changeBeats(4),

          RunRight.changeBeats(4),

          FlipLeft.scale(1.0,0.5)
      ]),

    AnimatedCall('Cross Roll',
      formation:Formation('Tidal 3 and 1 Line #1'),
      from:'Tidal 3 and 1 Line #1',noDisplay: true,
      paths:[
          FlipRight.scale(1.0,0.5),

          RunRight.changeBeats(4),

          RunLeft.changeBeats(4).scale(2.0,1.0),

          FlipRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Cross Roll',
      formation:Formation('Tidal 3 and 1 Line #2'),
      from:'Tidal 3 and 1 Line #2',noDisplay: true,
      paths:[
          FlipRight.scale(1.0,0.5),

          RunRight.changeBeats(4),

          RunRight.changeBeats(4),

          FlipLeft.scale(1.0,0.5)
      ]),

    AnimatedCall('Cross Roll',
      formation:Formation('Tidal 3 and 1 Line #3'),
      from:'Tidal 3 and 1 Line #3',noDisplay: true,
      paths:[
          FlipRight.scale(1.0,0.5),

          RunLeft.changeBeats(4),

          RunLeft.changeBeats(4),

          FlipLeft.scale(1.0,0.5)
      ]),

    AnimatedCall('Cross Roll',
      formation:Formation('Tidal 3 and 1 Line #4'),
      from:'Tidal 3 and 1 Line #4',noDisplay: true,
      paths:[
          FlipLeft.scale(1.0,0.5),

          RunRight.changeBeats(4),

          RunLeft.changeBeats(4).scale(2.0,1.0),

          FlipLeft.scale(1.0,0.5)
      ]),

    AnimatedCall('Cross Roll',
      formation:Formation('Tidal 3 and 1 Line #5'),
      from:'Tidal 3 and 1 Line #5',noDisplay: true,
      paths:[
          FlipLeft.scale(1.0,0.5),

          RunLeft.changeBeats(4).scale(2.0,1.0),

          RunRight.changeBeats(4),

          FlipLeft.scale(1.0,0.5)
      ]),

    AnimatedCall('Cross Roll',
      formation:Formation('Tidal 3 and 1 Line #6'),
      from:'Tidal 3 and 1 Line #6',noDisplay: true,
      paths:[
          FlipLeft.scale(1.0,0.5),

          RunLeft.changeBeats(4),

          RunLeft.changeBeats(4),

          FlipRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Cross Roll',
      formation:Formation('Tidal 3 and 1 Line #7'),
      from:'Tidal 3 and 1 Line #7',noDisplay: true,
      paths:[
          FlipLeft.scale(1.0,0.5),

          RunRight.changeBeats(4),

          RunRight.changeBeats(4),

          FlipRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Cross Roll',
      formation:Formation('Tidal 3 and 1 Line #8'),
      from:'Tidal 3 and 1 Line #8',noDisplay: true,
      paths:[
          FlipRight.scale(1.0,0.5),

          RunLeft.changeBeats(4).scale(2.0,1.0),

          RunRight.changeBeats(4),

          FlipRight.scale(1.0,0.5)
      ]),

    AnimatedCall('All Eight Cross Roll',
      formation:Formation('Thar LH Boys'),
      group:' ',
      paths:[
          HingeLeft +
          Forward_2 +
          LeadLeft,

          FlipRight.changeBeats(5),

          HingeLeft +
          Forward_2 +
          LeadLeft,

          FlipRight.changeBeats(5)
      ]),

    AnimatedCall('All Eight Cross Roll',
      formation:Formation('Thar RH Boys'),
      group:' ',noDisplay: true,
      paths:[
          HingeRight +
          Forward_2 +
          LeadRight,

          FlipLeft.changeBeats(5),

          HingeRight +
          Forward_2 +
          LeadRight,

          FlipLeft.changeBeats(5)
      ]),

    AnimatedCall('As Couples Cross Roll',
      formation:Formation('Tidal Line RH'),
      group:' ',
      paths:[
          RunRight.changeBeats(5).scale(1.5,1.5),

          RunRight.changeBeats(5).scale(0.5,0.5),

          RunRight.changeBeats(5).scale(2.5,2.5),

          RunRight.changeBeats(5).scale(1.5,1.5)
      ]),

    AnimatedCall('Concentric Cross Roll',
      formation:Formation('Two-Faced Tidal Line RH'),
      group:' ',
      paths:[
          FlipRight.scale(1.0,0.5),

          RunRight.changeBeats(5).scale(2.0,3.0),

          FlipLeft.scale(1.0,0.5),

          RunLeft
      ]),

    AnimatedCall('Tandem Cross Roll',
      formation:Formation('Two-Faced Lines RH'),
      group:' ',
      paths:[
          Forward_4 +
          RunRight,

          Forward_4 +
          RunRight.changeBeats(5).scale(2.0,2.0),

          RunRight.changeBeats(5).scale(2.0,2.0) +
          Forward_4,

          RunRight.scale(0.5,0.5) +
          ExtendLeft.changeBeats(4).scale(4.0,1.0)
      ]),
  ];

