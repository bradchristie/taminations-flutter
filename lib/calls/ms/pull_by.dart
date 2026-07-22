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

  final List<AnimatedCall> PullBy = [

    AnimatedCall('Right Pull By',
      formation:Formation('Facing Couples Compact'),
      group:' ',
      difficulty: 1,
      paths:[
          PullLeft.changeBeats(2).scale(1.5,0.5) +
          ExtendRight.changeBeats(2).scale(1.5,0.5),

          PullLeft.changeBeats(2).scale(1.5,0.5) +
          ExtendRight.changeBeats(2).scale(1.5,0.5)
      ]),

    AnimatedCall('Left Pull By',
      formation:Formation('Facing Couples Compact'),
      group:' ',
      difficulty: 2,
      notForSequencer: true,
      paths:[
          PullRight.changeBeats(2).scale(1.5,0.5) +
          ExtendLeft.changeBeats(2).scale(1.5,0.5),

          PullRight.changeBeats(2).scale(1.5,0.5) +
          ExtendLeft.changeBeats(2).scale(1.5,0.5)
      ]),

    AnimatedCall('Pull By',
        formation:Formation('Wave RH'),
        from:'Right-Hand Wave',difficulty: 2,
        paths:[
          ExtendRight.changeBeats(2).scale(1.5,2.0),

          Forward.changeBeats(2).scale(1.5,1.0),

        ]),

    AnimatedCall('Pull By',
        formation:Formation('Wave LH'),
        from:'Left-Hand Wave',difficulty: 2,
        paths:[
          ExtendLeft.changeBeats(2).scale(1.5,2.0),

          Forward.changeBeats(2).scale(1.5,1.0),

        ]),

  ];

