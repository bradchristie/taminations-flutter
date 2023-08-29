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

  final List<AnimatedCall> TradeBy = [

    AnimatedCall('Trade By',
      formation:Formation('Trade By'),
      from:'Trade By',difficulty: 1,
      paths:[
          FlipLeft.changeBeats(4),

          RunRight.changeBeats(4),

          ExtendLeft.changeBeats(2).scale(1.0,0.5) +
          ExtendRight.changeBeats(2).scale(1.0,0.5),

          ExtendLeft.changeBeats(2).scale(1.0,0.5) +
          ExtendRight.changeBeats(2).scale(1.0,0.5)
      ]),

    AnimatedCall('Trade By',
      formation:Formation('3/4 Tag'),
      from:'3/4 Tag',difficulty: 2,
      paths:[
          FlipLeft.changeBeats(4),

          RunRight.changeBeats(4),

          ExtendRight.changeBeats(4).scale(1.0,2.0),

          Forward.changeBeats(4)
      ]),

    AnimatedCall('Trade By',
      formation:Formation('T-Bone LUUR'),
      from:'T-Bones',difficulty: 2,
      paths:[
          RunRight.changeBeats(4),

          FlipLeft.changeBeats(4),

          ExtendLeft.changeBeats(2).scale(1.0,0.5) +
          ExtendRight.changeBeats(2).scale(1.0,0.5),

          ExtendLeft.changeBeats(2).scale(1.0,0.5) +
          ExtendRight.changeBeats(2).scale(1.0,0.5)
      ]),
  ];

