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

import '../../common_dart.dart';
import '../../formation.dart';
import '../../formations.dart';
import '../../moves.dart';
import '../../animated_call.dart';

  final List<AnimatedCall> PassToTheCenter = [ 

    AnimatedCall('Pass to the Center',
      formation:Formations.PassThru,
      from:'Eight Chain Thru',parts:'2',difficulty: 1,
      paths:[
          PassThru,

          PassThru,

          PassThru +
          RunRight,

          PassThru +
          FlipLeft
      ]),

    AnimatedCall('Pass to the Center',
      formation:Formations.OceanWavesRHBGGB,
      from:'Right-Hand Waves',difficulty: 3,
      paths:[
          ExtendRight.changeBeats(2).scale(1.0,2.0),

          LeadLeft +
          QuarterLeft.skew(1.0,0.0),

          Forward,

          LeadRight.changeBeats(2).scale(2.0,2.0) +
          LeadRight.scale(2.0,1.0)
      ]),
  ];

