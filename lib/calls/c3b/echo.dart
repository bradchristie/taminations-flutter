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

  final List<AnimatedCall> Echo = [

    AnimatedCall('Echo As Couples 1/2 Tag',
      formation:Formation('Tidal Line RH'),
      group:'Echo',fractions:'3',
      paths:[
          LeadRight.changeBeats(3).changehands(Hands.RIGHT).scale(3.0,1.5) +
          LeadRight.changeBeats(3),

          LeadRight.changeBeats(3).changehands(Hands.LEFT).scale(1.0,0.5) +
          LeadRight.changeBeats(3).scale(1.0,3.0),

          LeadRight.changeBeats(3).changehands(Hands.RIGHT).scale(3.0,3.5) +
          LeadRight.changeBeats(3),

          LeadRight.changeBeats(3).changehands(Hands.LEFT).scale(1.0,2.5) +
          LeadRight.changeBeats(3).scale(1.0,3.0)
      ]),

    AnimatedCall('Echo Concentric Recycle',
      formation:Formation('Double Pass Thru'),
      group:'Echo',fractions:'4',
      paths:[
          UmTurnRight.changeBeats(4).skew(3.0,1.5) +
          RunRight.changeBeats(2).scale(0.5,0.5).skew(-0.5,0.0) +
          UmTurnRight.changeBeats(2).skew(1.5,-0.5),

      Path.fromMovement(Movement.fromData(beats: 4, hands: Hands.NONE, cx1: -1, cy1: 2, cx2: 3, cy2: 4.5, x2: 3, y2: 4.5, cx3: 1, cx4: 2, cy4: 2, x4: 3, y4: 2  )) +
          RunRight.changeBeats(4).skew(2.0,-0.5),

          UmTurnRight.changeBeats(4).skew(1.0,-0.5) +
          RunRight.changeBeats(4).skew(2.0,-0.5),

      Path.fromMovement(Movement.fromData(beats: 4, hands: Hands.NONE, cx1: -1, cy1: 2, cx2: 1, cy2: 2.5, x2: 1, y2: 2.5, cx3: 1, cx4: 2, cy4: 2, x4: 3, y4: 2  )) +
          RunRight.changeBeats(2).scale(0.5,0.5).skew(-0.5,0.0) +
          UmTurnRight.changeBeats(2).skew(1.5,-0.5)
      ]),

    AnimatedCall('Echo Six-Two Acey Deucey',
      formation:Formation('Diamonds RH Girl Points'),
      group:'Echo',fractions:'3',
      paths:[
          LeadRight.changeBeats(3).scale(3.0,1.0) +
          Forward_4.changeBeats(5),

          Forward_4.changeBeats(3) +
          RunRight.changeBeats(5).scale(2.5,3.0),

          SwingLeft +
          SwingRight.changeBeats(5),

          LeadRight.changeBeats(3).scale(1.0,3.0) +
          SwingRight.changeBeats(5)
      ]),

    AnimatedCall('Echo Split Circulate',
      formation:Formation('Ocean Waves RH BGBG'),
      group:'Echo',fractions:'3',
      paths:[
          Forward_4.changeBeats(3) +
          RunRight.changeBeats(4).scale(2.5,3.0),

          RunRight +
          Forward_4,

          Forward_4.changeBeats(3) +
          RunLeft.changeBeats(4),

          RunRight +
          Forward_4
      ]),

    AnimatedCall('Echo Stretch Partner Trade',
      formation:Formation('Lines Facing Out'),
      group:'Echo',fractions:'4',
      paths:[
          FlipLeft.changeBeats(4).scale(1.0,2.0) +
          RunRight,

          RunRight.changeBeats(4) +
          RunRight,

          FlipLeft.changeBeats(4) +
          FlipLeft,

          RunRight.changeBeats(4).scale(1.0,2.0) +
          FlipLeft
      ]),

    AnimatedCall('Echo Tandem Cross Roll',
      formation:Formation('Two-Faced Lines RH'),
      group:'Echo',fractions:'9',
      paths:[
          Forward_4.changeBeats(5) +
          RunRight.changeBeats(4) +
          RunLeft.changeBeats(4).scale(1.5,2.0),

          Forward_4 +
          RunRight.changeBeats(5).scale(2.0,2.0) +
          FlipRight.changeBeats(4),

          RunRight.changeBeats(5).scale(2.0,2.0) +
          Forward_4 +
          FlipRight.changeBeats(4),

          RunRight.changeBeats(5).scale(0.5,0.5) +
          ExtendLeft.changeBeats(4).scale(4.0,1.0) +
          RunLeft.changeBeats(4).scale(1.5,2.0)
      ]),
  ];

