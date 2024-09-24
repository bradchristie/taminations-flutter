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

  final List<AnimatedCall> Dosado = [

    AnimatedCall('Dosado',
      formation:Formation('Facing Couples Compact'),
      from:'Facing Couples',difficulty: 1,
      paths:[
          ExtendLeft.changeBeats(1.5).scale(1.5,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.0,0.5) +
          RetreatRight.changeBeats(1.5).scale(1.0,0.5) +
          RetreatLeft.changeBeats(1.5).scale(1.5,0.5),

          ExtendLeft.changeBeats(1.5).scale(1.5,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.0,0.5) +
          RetreatRight.changeBeats(1.5).scale(1.0,0.5) +
          RetreatLeft.changeBeats(1.5).scale(1.5,0.5)
      ]),

    AnimatedCall('Dosado',
      formation:Formation('Normal Lines'),
      from:'Normal Lines',difficulty: 2,
      paths:[
          ExtendLeft.changeBeats(1.5).scale(2.0,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.0,0.5) +
          RetreatRight.changeBeats(1.5).scale(1.0,0.5) +
          RetreatLeft.changeBeats(1.5).scale(2.0,0.5),

          ExtendLeft.changeBeats(1.5).scale(2.0,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.0,0.5) +
          RetreatRight.changeBeats(1.5).scale(1.0,0.5) +
          RetreatLeft.changeBeats(1.5).scale(2.0,0.5),

          ExtendLeft.changeBeats(1.5).scale(2.0,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.0,0.5) +
          RetreatRight.changeBeats(1.5).scale(1.0,0.5) +
          RetreatLeft.changeBeats(1.5).scale(2.0,0.5),

          ExtendLeft.changeBeats(1.5).scale(2.0,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.0,0.5) +
          RetreatRight.changeBeats(1.5).scale(1.0,0.5) +
          RetreatLeft.changeBeats(1.5).scale(2.0,0.5)
      ]),

    AnimatedCall('Dosado',
      formation:Formation('Eight Chain Thru'),
      from:'Eight Chain Thru',difficulty: 1,
      paths:[
          ExtendLeft.changeBeats(1.5).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.0,0.5) +
          RetreatRight.changeBeats(1.5).scale(1.0,0.5) +
          RetreatLeft.changeBeats(1.5).scale(1.0,0.5),

          ExtendLeft.changeBeats(1.5).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.0,0.5) +
          RetreatRight.changeBeats(1.5).scale(1.0,0.5) +
          RetreatLeft.changeBeats(1.5).scale(1.0,0.5),

          ExtendLeft.changeBeats(1.5).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.0,0.5) +
          RetreatRight.changeBeats(1.5).scale(1.0,0.5) +
          RetreatLeft.changeBeats(1.5).scale(1.0,0.5),

          ExtendLeft.changeBeats(1.5).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.0,0.5) +
          RetreatRight.changeBeats(1.5).scale(1.0,0.5) +
          RetreatLeft.changeBeats(1.5).scale(1.0,0.5)
      ]),

    AnimatedCall('Dosado to a Wave',
      formation:Formation('Facing Couples Compact'),
      from:'Facing Couples',difficulty: 2,
      paths:[
          ExtendLeft.changeBeats(1.5).scale(1.5,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.0,0.5) +
          RetreatRight.changeBeats(1.5).scale(1.0,0.5) +
          RetreatLeft.changeBeats(1.5).scale(1.0,0.5) +
          ExtendLeft.changeBeats(2).changeBeats(1.5).scale(1.0,2.0),

          ExtendLeft.changeBeats(1.5).scale(1.5,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.0,0.5) +
          RetreatRight.changeBeats(1.5).scale(1.0,0.5) +
          RetreatLeft.changeBeats(1.5).scale(1.0,0.5) +
          Forward.changeBeats(2)
      ]),

    AnimatedCall('Dosado to a Wave',
      formation:Formation('Normal Lines'),
      from:'Normal Lines',difficulty: 3,
      paths:[
          ExtendLeft.changeBeats(1.5).scale(2.0,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.0,0.5) +
          RetreatRight.changeBeats(1.5).scale(1.0,0.5) +
          RetreatLeft.changeBeats(1.5).scale(1.0,0.5) +
          ExtendLeft.changeBeats(2).changeBeats(1.5).scale(1.0,0.5),

          ExtendLeft.changeBeats(1.5).scale(2.0,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.0,0.5) +
          RetreatRight.changeBeats(1.5).scale(1.0,0.5) +
          RetreatLeft.changeBeats(1.5).scale(1.0,0.5) +
          ExtendLeft.changeBeats(2).changeBeats(1.5).scale(1.0,0.5),

          ExtendLeft.changeBeats(1.5).scale(2.0,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.0,0.5) +
          RetreatRight.changeBeats(1.5).scale(1.0,0.5) +
          RetreatLeft.changeBeats(1.5).scale(1.0,0.5) +
          ExtendLeft.changeBeats(2).changeBeats(1.5).scale(1.0,0.5),

          ExtendLeft.changeBeats(1.5).scale(2.0,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.0,0.5) +
          RetreatRight.changeBeats(1.5).scale(1.0,0.5) +
          RetreatLeft.changeBeats(1.5).scale(1.0,0.5) +
          ExtendLeft.changeBeats(2).changeBeats(1.5).scale(1.0,0.5)
      ]),

    AnimatedCall('Dosado to a Wave',
      formation:Formation('Eight Chain Thru'),
      from:'Eight Chain Thru',difficulty: 2,
      paths:[
          ExtendLeft.changeBeats(1.5).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.0,0.5) +
          RetreatRight.changeBeats(1.5).scale(1.0,0.5) +
          RetreatLeft.changeBeats(1.5).scale(1.0,0.5) +
          ExtendLeft.changeBeats(2).changeBeats(1.5).scale(1.0,2.0),

          ExtendLeft.changeBeats(1.5).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.0,0.5) +
          RetreatRight.changeBeats(1.5).scale(1.0,0.5) +
          RetreatLeft.changeBeats(1.5).scale(1.0,0.5) +
          Forward.changeBeats(2),

          ExtendLeft.changeBeats(1.5).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.0,0.5) +
          RetreatRight.changeBeats(1.5).scale(1.0,0.5) +
          RetreatLeft.changeBeats(1.5).scale(1.0,0.5) +
          ExtendLeft.changeBeats(2).changeBeats(1.5).scale(1.0,2.0),

          ExtendLeft.changeBeats(1.5).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.0,0.5) +
          RetreatRight.changeBeats(1.5).scale(1.0,0.5) +
          RetreatLeft.changeBeats(1.5).scale(1.0,0.5) +
          Forward.changeBeats(2)
      ]),
  ];

