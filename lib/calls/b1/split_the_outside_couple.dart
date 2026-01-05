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

  final List<AnimatedCall> SplitTheOutsideCouple = [

    AnimatedCall('Centers Split the Outside Couple',
      formation:Formation('Eight Chain Thru'),
      group:' ',actives:'Centers', notForSequencer: true,
      paths:[
          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5),

          ExtendRight.scale(1.0,0.5) +
          ExtendLeft.scale(1.0,0.5),

          ExtendRight.scale(1.0,0.5) +
          ExtendLeft.scale(1.0,0.5),

          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Centers Split the Outside Couple, Separate, Go Around One to a Line',
      formation:Formation('Eight Chain Thru'),
      from:'Pass Thru',group:' ',actives:'Centers',
      paths:[
          DodgeLeft.changeBeats(1).scale(0.25,0.25).skew(0.5,0.0) +
          DodgeRight.changeBeats(1).scale(0.25,0.25).skew(0.5,0.0),

          DodgeRight.changeBeats(1).scale(0.25,0.25).skew(0.5,0.0) +
          DodgeLeft.changeBeats(1).scale(0.25,0.25).skew(0.5,0.0),

          ExtendRight.skew(0.5,0.5) +
          RunLeft.skew(-0.5,0.5),

          ExtendLeft.skew(0.5,-0.5) +
          RunRight.skew(-0.5,-0.5)
      ]),

    AnimatedCall('Centers Split 2,'
        ' Go Around One and Come Into the Middle',
        formation:Formation('Eight Chain Thru'),
        from:'Pass Thru',group:' ',actives:'Centers',
        paths:[
          DodgeLeft.changeBeats(1).scale(0.25,0.25).skew(0.5,0.0) +
              DodgeRight.changeBeats(1).scale(0.25,0.25).skew(0.5,0.0) +
              Stand.changeBeats(2) +
              Back.changehands(Hands.RIGHT),

          DodgeRight.changeBeats(1).scale(0.25,0.25).skew(0.5,0.0) +
              DodgeLeft.changeBeats(1).scale(0.25,0.25).skew(0.5,0.0) +
              Stand.changeBeats(2) +
              Back.changehands(Hands.LEFT),

          ExtendRight.skew(0.5,0.5) +
              RunLeft.skew(-0.5,0.5) +
              LeadLeft.scale(1, 2).changeBeats(2),

          ExtendLeft.skew(0.5,-0.5) +
              RunRight.skew(-0.5,-0.5) +
              LeadRight.scale(1, 2).changeBeats(2),
        ]),

    AnimatedCall('Around One and Come Into the Middle',
        formation:Formation('Trade By'),
        from:'Trade By',group:' ',actives:'Centers',
        paths:[
              RunRight.skew(-1,0) +
              LeadRight.scale(1, 2).changeBeats(2),

          RunLeft.skew(-1,0) +
              LeadLeft.scale(1, 2).changeBeats(2),

          Stand.changeBeats(2) +
              Back_2.changehands(Hands.LEFT),

          Stand.changeBeats(2) +
              Back_2.changehands(Hands.RIGHT),

        ]),
  ];

