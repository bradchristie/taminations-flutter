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
import '../../formations.dart';
import '../../moves.dart';

  final List<AnimatedCall> ForwardAndBack = [

    AnimatedCall('Forward and Back',
      formation:Formations.FacingCouplesCompact,
      from:'Facing Couples',
      paths:[
          Forward.changeBeats(2).changehands(2).scale(0.7,1.0) +
          Back.changeBeats(2).changehands(2).scale(0.7,1.0),

          Forward.changeBeats(2).changehands(1).scale(0.7,1.0) +
          Back.changeBeats(2).changehands(1).scale(0.7,1.0)
      ]),

    AnimatedCall('Forward and Back',
      formation:Formations.NormalLines,
      from:'Lines',
      paths:[
          Forward.changeBeats(2).changehands(2) +
          Back.changeBeats(2).changehands(2),

          Forward.changeBeats(2).changehands(3) +
          Back.changeBeats(2).changehands(3),

          Forward.changeBeats(2).changehands(3) +
          Back.changeBeats(2).changehands(3),

          Forward.changeBeats(2).changehands(1) +
          Back.changeBeats(2).changehands(1)
      ]),

    AnimatedCall('Heads Forward and Back',
      formation:Formations.StaticSquare,
      from:'Static Square',group:' ',
      paths:[
          Forward_2.changeBeats(4).changehands(2) +
          Back_2.changeBeats(4).changehands(2),

          Forward_2.changeBeats(4).changehands(1) +
          Back_2.changeBeats(4).changehands(1),

          Path(),

          Path()
      ]),

    AnimatedCall('Sides Forward and Back',
      formation:Formations.StaticSquare,
      from:'Static Square',noDisplay: true,
      paths:[
          Path(),

          Path(),

          Forward_2.changeBeats(4).changehands(2) +
          Back_2.changeBeats(4).changehands(2),

          Forward_2.changeBeats(4).changehands(1) +
          Back_2.changeBeats(4).changehands(1)
      ]),
  ];

