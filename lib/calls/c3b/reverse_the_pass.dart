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

  final List<AnimatedCall> ReverseThePass = [ 

    AnimatedCall('Reverse the Pass',
      formation:Formations.CompletedDoublePassThru,
      from:'Completed Double Pass Thru',parts:'3;3',
      paths:[
          FlipLeft +
          ExtendLeft.changeBeats(1.5).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.0,0.5) +
          Stand.changeBeats(3).changehands(1),

          RunRight +
          ExtendLeft.changeBeats(1.5).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.0,0.5) +
          Stand.changeBeats(3).changehands(2),

          Stand.changeBeats(3).changehands(1) +
          ExtendLeft.changeBeats(1.5).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.0,0.5) +
          FlipLeft,

          Stand.changeBeats(3).changehands(2) +
          ExtendLeft.changeBeats(1.5).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.0,0.5) +
          RunRight
      ]),

    AnimatedCall('Reverse the Pass',
      formation:Formations.TwomFacedLinesRH,
      from:'Right-Hand Two-Faced Lines',parts:'3;4',
      paths:[
          Stand.changeBeats(3).changehands(2) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5) +
          RunRight,

          Stand.changeBeats(3).changehands(1) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5) +
          FlipLeft,

          FlipLeft +
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5) +
          Stand.changeBeats(3).changehands(1),

          RunRight +
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5) +
          Stand.changeBeats(3).changehands(2)
      ]),
  ];

