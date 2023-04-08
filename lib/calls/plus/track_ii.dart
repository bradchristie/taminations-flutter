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

  final List<AnimatedCall> TrackIi = [ 

    AnimatedCall('Track 2',
      formation:Formations.CompletedDoublePassThru,
      from:'Completed Double Pass Thru',group:' ',difficulty: 1,
      paths:[
          RunLeft.changeBeats(2).scale(0.5,0.5) +
          ExtendRight.changeBeats(4).scale(5.0,1.0),

          RunRight.changeBeats(5).scale(2.0,2.0) +
          Forward_5.changeBeats(3),

          Forward_2.changeBeats(2) +
          RunLeft.changeBeats(4).skew(-1.0,0.0),

          Forward_2.changeBeats(1.5) +
          RunRight.changeBeats(4.5).scale(2.0,2.0) +
          Forward
      ]),

    AnimatedCall('Left Track 2',
      formation:Formations.CompletedDoublePassThru,
      from:'Completed Double Pass Thru',group:' ',difficulty: 3,
      paths:[
          RunLeft.changeBeats(5).scale(2.0,2.0) +
          Forward_5.changeBeats(3),

          RunRight.changeBeats(2).scale(0.5,0.5) +
          ExtendLeft.changeBeats(4).scale(5.0,1.0),

          Forward_2.changeBeats(1.5) +
          RunLeft.changeBeats(4.5).scale(2.0,2.0) +
          Forward,

          Forward_2.changeBeats(2) +
          RunRight.changeBeats(4).skew(-1.0,0.0)
      ]),
  ];

