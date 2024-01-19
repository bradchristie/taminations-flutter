/*

  Taminations Square Dance Animations
  Copyright (C) 2024 Brad Christie

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

  final List<AnimatedCall> Substitute = [

    AnimatedCall('Substitute',
      formation:Formation('Double Pass Thru'),
      from:'Double Pass Thru',
      paths:[
          ExtendRight.changehands(Hands.GRIPRIGHT).scale(1.0,0.5) +
          ExtendLeft.changehands(Hands.GRIPRIGHT).scale(1.0,0.5),

          ExtendLeft.changehands(Hands.GRIPLEFT).scale(1.0,0.5) +
          ExtendRight.changehands(Hands.GRIPLEFT).scale(1.0,0.5),

          Back.changehands(Hands.GRIPRIGHT).skew(0.0,0.5) +
          Back.changehands(Hands.GRIPRIGHT).skew(0.0,-0.5),

          Back.changehands(Hands.GRIPLEFT).skew(0.0,-0.5) +
          Back.changehands(Hands.GRIPLEFT).skew(0.0,0.5)
      ]),

    AnimatedCall('Substitute',
      formation:Formation('Two-Faced Lines RH'),
      from:'Right-Hand Two-Faced Lines',
      paths:[
          ExtendRight.changeBeats(1.5).changehands(Hands.RIGHT).scale(2.0,0.5) +
          ExtendLeft.changeBeats(1.5).changehands(Hands.RIGHT).scale(2.0,0.5),

          ExtendLeft.changeBeats(1.5).changehands(Hands.LEFT).scale(2.0,0.5) +
          ExtendRight.changeBeats(1.5).changehands(Hands.LEFT).scale(2.0,0.5),

          RetreatRight.changeBeats(1.5).changehands(Hands.GRIPLEFT).scale(2.0,0.5) +
          RetreatLeft.changeBeats(1.5).changehands(Hands.GRIPLEFT).scale(2.0,0.5),

          RetreatLeft.changeBeats(1.5).changehands(Hands.GRIPRIGHT).scale(2.0,0.5) +
          RetreatRight.changeBeats(1.5).changehands(Hands.GRIPRIGHT).scale(2.0,0.5)
      ]),

    AnimatedCall('Substitute',
      formation:Formation('Two-Faced Lines LH'),
      from:'Left-Hand Two-Faced Lines',
      paths:[
          RetreatRight.changeBeats(1.5).changehands(Hands.GRIPLEFT).scale(2.0,0.5) +
          RetreatLeft.changeBeats(1.5).changehands(Hands.GRIPLEFT).scale(2.0,0.5),

          RetreatLeft.changeBeats(1.5).changehands(Hands.GRIPRIGHT).scale(2.0,0.5) +
          RetreatRight.changeBeats(1.5).changehands(Hands.GRIPRIGHT).scale(2.0,0.5),

          ExtendRight.changeBeats(1.5).changehands(Hands.RIGHT).scale(2.0,0.5) +
          ExtendLeft.changeBeats(1.5).changehands(Hands.RIGHT).scale(2.0,0.5),

          ExtendLeft.changeBeats(1.5).changehands(Hands.LEFT).scale(2.0,0.5) +
          ExtendRight.changeBeats(1.5).changehands(Hands.LEFT).scale(2.0,0.5)
      ]),

    AnimatedCall('Centers Substitute',
        formation: Formation('Trade By'),
        from: 'Trade By',
        paths: [
          RetreatLeft.changehands(Hands.GRIPLEFT).scale(1.0,0.5) +
              RetreatRight.changehands(Hands.GRIPLEFT).scale(1.0,0.5),

          RetreatRight.changehands(Hands.GRIPRIGHT).scale(1.0,0.5) +
              RetreatLeft.changehands(Hands.GRIPRIGHT).scale(1.0,0.5),

          RetreatRight.changehands(Hands.GRIPLEFT).scale(1.0,0.5) +
              RetreatLeft.changehands(Hands.GRIPLEFT).scale(1.0,0.5),

          RetreatLeft.changehands(Hands.GRIPRIGHT).scale(1.0,0.5) +
              RetreatRight.changehands(Hands.GRIPRIGHT).scale(1.0,0.5),
        ]),

    AnimatedCall('Centers Substitute',
      formation:Formation('Galaxy RH GP'),
      from:'Galaxy',
      paths:[
          ExtendLeft.changeBeats(1.5).changehands(Hands.GRIPRIGHT).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.5).changehands(Hands.GRIPRIGHT).scale(1.0,0.5),

          DodgeRight,

          RetreatLeft.changeBeats(1.5).changehands(Hands.GRIPRIGHT).scale(1.0,0.5) +
          RetreatRight.changeBeats(1.5).changehands(Hands.GRIPRIGHT).scale(1.0,0.5),

          Path()
      ]),

    AnimatedCall('Heads Touch 1/4 and Substitute',
        group: ' ',
        formation: Formation('Static Square'),
        paths: [
          ExtendLeft.changeBeats(3).scale(3, 0.5) +
              HingeRight.scale(1, 0.5) +
          RetreatLeft.changehands(Hands.GRIPRIGHT).scale(1.0,0.5) +
              RetreatRight.changehands(Hands.GRIPRIGHT).scale(1.0,0.5),

          ExtendLeft.changeBeats(3).scale(3, 0.5) +
              HingeRight.scale(1, 0.5) +
              ExtendLeft.changehands(Hands.GRIPRIGHT).scale(1.0,0.5) +
              ExtendRight.changehands(Hands.GRIPRIGHT).scale(1.0,0.5),

          Stand.changeBeats(4.5) +
              ExtendRight.changehands(Hands.GRIPRIGHT).scale(1.0,0.5) +
              ExtendLeft.changehands(Hands.GRIPRIGHT).scale(1.0,0.5),

          Stand.changeBeats(4.5) +
              ExtendLeft.changehands(Hands.GRIPLEFT).scale(1.0,0.5) +
              ExtendRight.changehands(Hands.GRIPLEFT).scale(1.0,0.5),

        ])
  ];

