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

  final List<AnimatedCall> BoxTheGnat = [

    AnimatedCall('Box the Gnat',
      formation:Formation('Facing Couples Compact'),
      from:'Facing Couples',isGenderSpecific:true,
      difficulty: 1,
      taminator: 'Handholds are not shown properly due to limitations in the program',
      paths:[
      Path.fromMovement(Movement.fromData(beats: 4, hands: Hands.GRIPLEFT, cx1: 1, cy1: 1, cx2: 2, cy2: 1, x2: 2.5, y2: 0, cx3: 1.3, cx4: 1.3, cy4: -2, x4: 0, y4: -2  )),

      Path.fromMovement(Movement.fromData(beats: 4, hands: Hands.GRIPRIGHT, cx1: 1, cy1: .1, cx2: 2, cy2: .1, x2: 2.5, y2: 0, cx3: 1.3, cx4: 1.3, cy4: 2, x4: 0, y4: 2  ))
      ]),

    AnimatedCall('Box the Gnat',
        formation:Formation('Wave RH'),
        from:'Right-Hand Wave',isGenderSpecific:true,
        difficulty: 2,
        taminator: 'This is an application of the Ocean Wave Rule',
      paths:[
          UmTurnRight.changehands(Hands.GRIPRIGHT).skew(1.0,-2.0),

          UmTurnLeft.changehands(Hands.GRIPRIGHT).skew(1.0,0.0)
      ]),

    AnimatedCall('Left Box the Gnat',
        formation:Formation('Facing Couples Compact'),
        from:'Facing Couples',isGenderSpecific:true,
        difficulty: 2,
        taminator: 'Can be called at Mainstream and Plus',
        paths:[
          Path.fromMovement(Movement.fromData(beats: 4, hands: Hands.GRIPLEFT, cx1: 1, cy1: 1, cx2: 2, cy2: 1, x2: 2.5, y2: 0, cx3: 1.3, cx4: 1.3, cy4: -2, x4: 0, y4: -2  ).reflect()),

          Path.fromMovement(Movement.fromData(beats: 4, hands: Hands.GRIPRIGHT, cx1: 1, cy1: .1, cx2: 2, cy2: .1, x2: 2.5, y2: 0, cx3: 1.3, cx4: 1.3, cy4: 2, x4: 0, y4: 2  ).reflect())
        ]),

  ];

