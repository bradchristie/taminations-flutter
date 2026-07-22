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

  final List<AnimatedCall> Swing = [

    AnimatedCall('Swing Your Partner',
      formation:Formation('Facing Couples'),
      from:'Facing Couples',
      paths:[
          LeadRight.scale(0.75,0.5) +
          QuarterRight.skew(0.75,0.25) +
          QuarterRight.skew(0.75,0.25) +
          QuarterRight.skew(0.75,0.25) +
          DodgeLeft.changehands(Hands.RIGHT).scale(1.0,0.375),

          QuarterLeft.skew(0.25,0.5) +
          QuarterRight.skew(0.75,0.25) +
          QuarterRight.skew(0.75,0.25) +
          QuarterRight.skew(0.75,0.25) +
          UmTurnRight.changehands(Hands.LEFT).skew(1.0,0.75)
      ]),

    AnimatedCall('Swing Your Corner',
      formation:Formation('Facing Couples'),
      from:'Facing Couples',
      paths:[
          ExtendLeft.scale(1.5,0.25) +
          QuarterRight.skew(0.75,0.25) +
          QuarterRight.skew(0.75,0.25) +
          QuarterRight.skew(0.75,0.25) +
          QuarterRight.skew(0.75,0.25) +
          QuarterRight.skew(0.75,0.25) +
          DodgeLeft.changehands(Hands.RIGHT).scale(1.0,0.375),

          ExtendLeft.scale(1.5,0.25) +
          QuarterRight.skew(0.75,0.25) +
          QuarterRight.skew(0.75,0.25) +
          QuarterRight.skew(0.75,0.25) +
          QuarterRight.skew(0.75,0.25) +
          QuarterRight.skew(0.75,0.25) +
          UmTurnRight.changehands(Hands.LEFT).skew(1.0,0.75)
      ]),
  ];

