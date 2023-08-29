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

  final List<AnimatedCall> ForwardAndBack = [

    AnimatedCall('Forward and Back',
      formation:Formation('Facing Couples Compact'),
      from:'Facing Couples',
      paths:[
          Forward.changeBeats(2).changehands(Hands.RIGHT).scale(0.7,1.0) +
          Back.changeBeats(2).changehands(Hands.RIGHT).scale(0.7,1.0),

          Forward.changeBeats(2).changehands(Hands.LEFT).scale(0.7,1.0) +
          Back.changeBeats(2).changehands(Hands.LEFT).scale(0.7,1.0)
      ]),

    AnimatedCall('Forward and Back',
      formation:Formation('Normal Lines'),
      from:'Lines',
      paths:[
          Forward.changeBeats(2).changehands(Hands.RIGHT) +
          Back.changeBeats(2).changehands(Hands.RIGHT),

          Forward.changeBeats(2).changehands(Hands.BOTH) +
          Back.changeBeats(2).changehands(Hands.BOTH),

          Forward.changeBeats(2).changehands(Hands.BOTH) +
          Back.changeBeats(2).changehands(Hands.BOTH),

          Forward.changeBeats(2).changehands(Hands.LEFT) +
          Back.changeBeats(2).changehands(Hands.LEFT)
      ]),

    AnimatedCall('Heads Forward and Back',
      formation:Formation('Static Square'),
      from:'Static Square',group:' ',
      paths:[
          Forward_2.changeBeats(4).changehands(Hands.RIGHT) +
          Back_2.changeBeats(4).changehands(Hands.RIGHT),

          Forward_2.changeBeats(4).changehands(Hands.LEFT) +
          Back_2.changeBeats(4).changehands(Hands.LEFT),

          Path(),

          Path()
      ]),

    AnimatedCall('Sides Forward and Back',
      formation:Formation('Static Square'),
      from:'Static Square',noDisplay: true,
      paths:[
          Path(),

          Path(),

          Forward_2.changeBeats(4).changehands(Hands.RIGHT) +
          Back_2.changeBeats(4).changehands(Hands.RIGHT),

          Forward_2.changeBeats(4).changehands(Hands.LEFT) +
          Back_2.changeBeats(4).changehands(Hands.LEFT)
      ]),
  ];

