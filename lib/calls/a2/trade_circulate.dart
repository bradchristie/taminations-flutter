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

  final List<AnimatedCall> TradeCirculate = [

    AnimatedCall('Trade Circulate',
      formation:Formation('Ocean Waves RH BGBG'),
      from:'Right-Hand Waves',
      paths:[
          Forward +
          ExtendRight.changeBeats(3).scale(3.0,2.0),

          RunLeft.changeBeats(4).scale(0.5,2.0),

          Forward +
          ExtendRight.changeBeats(3).scale(3.0,2.0),

          RunRight.changeBeats(4).scale(1.5,2.0)
      ]),

    AnimatedCall('Trade Circulate',
      formation:Formation('Ocean Waves LH BGBG'),
      from:'Left-Hand Waves',
      paths:[
          RunLeft.changeBeats(6).scale(0.5,2.0),

          ExtendLeft.changeBeats(4).scale(2.5,2.0) +
          Forward.changeBeats(2).scale(1.5,1.0),

          RunRight.changeBeats(6).scale(1.5,2.0),

          ExtendLeft.changeBeats(4).scale(2.5,2.0) +
          Forward.changeBeats(2).scale(1.5,1.0)
      ]),

    AnimatedCall('Trade Circulate',
      formation:Formation('Two-Faced Lines RH'),
      from:'Right-Hand Two-Faced Lines',
      paths:[
      Path.fromMovement(Movement.fromData(beats: 4, hands: Hands.NONE, cx1: 1.5, cy1: 0, cx2: 3.5, cy2: -4, x2: 4, y2: -4, cx3: 1, cx4: 1, cy4: -0.4, x4: 2, y4: -0.4  )),

      Path.fromMovement(Movement.fromData(beats: 4, hands: Hands.NONE, cx1: 1.5, cy1: 0, cx2: 3.5, cy2: -4, x2: 4, y2: -4, cx3: 1, cx4: 1, cy4: -0.4, x4: 2, y4: -0.4  )),

          FlipLeft,

          RunRight
      ]),

    AnimatedCall('Trade Circulate',
      formation:Formation('Two-Faced Lines LH'),
      from:'Left-Hand Two-Faced Lines',
      paths:[
          FlipLeft,

          RunRight,

      Path.fromMovement(Movement.fromData(beats: 4, hands: Hands.NONE, cx1: 1.5, cy1: 0, cx2: 1.5, cy2: 4, x2: 4, y2: 4, cx3: 1, cx4: 1, cy4: 0.4, x4: 2, y4: 0.4  )),

      Path.fromMovement(Movement.fromData(beats: 4, hands: Hands.NONE, cx1: 1.5, cy1: 0, cx2: 1.5, cy2: 4, x2: 4, y2: 4, cx3: 1, cx4: 1, cy4: 0.4, x4: 2, y4: 0.4  ))
      ]),
  ];

