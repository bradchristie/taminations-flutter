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

  final List<AnimatedCall> PassThru = [

    AnimatedCall('Pass Thru',
      formation:Formation('Facing Couples Compact'),
      from:'Facing Couples',difficulty: 1,notForSequencer: true,
      paths:[
          ExtendLeft.scale(1.5,0.5) +
          ExtendRight.scale(1.5,0.5),

          ExtendLeft.scale(1.5,0.5) +
          ExtendRight.scale(1.5,0.5)
      ]),

    AnimatedCall('Pass Thru',
      formation:Formation('Normal Lines'),
      from:'Lines',difficulty: 1,
      paths:[
          ExtendLeft.scale(2.0,0.5) +
          ExtendRight.scale(2.0,0.5),

          ExtendLeft.scale(2.0,0.5) +
          ExtendRight.scale(2.0,0.5),

          ExtendLeft.scale(2.0,0.5) +
          ExtendRight.scale(2.0,0.5),

          ExtendLeft.scale(2.0,0.5) +
          ExtendRight.scale(2.0,0.5)
      ]),

    AnimatedCall('Pass Thru',
      formation:Formation('Eight Chain Thru'),
      from:'Eight Chain Thru',difficulty: 1,
      paths:[
          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5),

          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5),

          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5),

          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Pass Thru',
      formation:Formation('Ocean Waves RH BGGB'),
      from:'Ocean Waves',difficulty: 2,
      taminator: '''
      Note that the new centers end facing each other, and do not form a wave.
    ''',
      paths:[
          ExtendRight.changeBeats(2).scale(1.0,2.0),

          Forward.changeBeats(2),

          Forward.changeBeats(2),

          ExtendRight.changeBeats(2).scale(1.0,2.0)
      ]),
  ];

