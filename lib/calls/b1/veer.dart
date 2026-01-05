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

  final List<AnimatedCall> Veer = [

    AnimatedCall('Veer Left',
      formation:Formation('Facing Couples Compact'),
      from:'Facing Couples',difficulty: 1,
      paths:[
          ExtendLeft.changeBeats(2).changehands(Hands.RIGHT).scale(1.5,2.0),

          ExtendLeft.changeBeats(2).changehands(Hands.LEFT).scale(1.5,2.0)
      ]),

    AnimatedCall('Veer Left',
      formation:Formation('Two-Faced Line LH'),
      from:'Left-Hand Two-Faced Line',difficulty: 1,
      paths:[
          ExtendLeft.changeBeats(2).changehands(Hands.RIGHT).scale(2.0,2.0),

          ExtendLeft.changeBeats(2).changehands(Hands.LEFT).scale(2.0,2.0)
      ]),

    AnimatedCall('Veer Left',
      formation:Formation('Eight Chain Thru'),
      from:'Eight Chain Thru',difficulty: 1,
      paths:[
          ExtendLeft.changeBeats(2).changehands(Hands.GRIPRIGHT).scale(1.0,2.0),

          ExtendLeft.changeBeats(2).changehands(Hands.GRIPLEFT).scale(1.0,2.0),

          ExtendLeft.changeBeats(2).changehands(Hands.GRIPRIGHT).scale(1.0,2.0),

          ExtendLeft.changeBeats(2).changehands(Hands.GRIPLEFT).scale(1.0,2.0)
      ]),

    AnimatedCall('Veer Left',
      formation:Formation('Two-Faced Lines LH'),
      from:'Two-Faced Lines',difficulty: 1,
      paths:[
          ExtendLeft.changeBeats(2).changehands(Hands.GRIPLEFT).scale(1.0,2.0),

          ExtendLeft.changeBeats(2).changehands(Hands.GRIPRIGHT).scale(1.0,2.0),

          ExtendLeft.changeBeats(2).changehands(Hands.GRIPRIGHT).scale(1.0,2.0),

          ExtendLeft.changeBeats(2).changehands(Hands.GRIPLEFT).scale(1.0,2.0)
      ]),

    AnimatedCall('Veer Left',
      formation:Formation('Two-Faced Tidal Line LH'),
      from:'Two-Faced Tidal Line',difficulty: 2,
      paths:[
          ExtendLeft.changeBeats(2).changehands(Hands.GRIPLEFT).scale(2.0,0.5),

          ExtendLeft.changeBeats(2).changehands(Hands.GRIPRIGHT).scale(2.0,1.5),

          ExtendLeft.changeBeats(2).changehands(Hands.GRIPRIGHT).scale(2.0,1.5),

          ExtendLeft.changeBeats(2).changehands(Hands.GRIPLEFT).scale(2.0,0.5)
      ]),

    AnimatedCall('Veer Left',
      formation:Formation('Normal Lines'),
      from:'Normal Lines',difficulty: 2,
      paths:[
          ExtendLeft.changeBeats(2).changehands(Hands.RIGHT).scale(2.0,0.5),

          ExtendLeft.changeBeats(2).changehands(Hands.LEFT).scale(2.0,1.5),

          ExtendLeft.changeBeats(2).changehands(Hands.RIGHT).scale(2.0,0.5),

          ExtendLeft.changeBeats(2).changehands(Hands.LEFT).scale(2.0,1.5)
      ]),

    AnimatedCall('Veer Right',
      formation:Formation('Facing Couples Compact'),
      from:'Facing Couples',difficulty: 1,
      paths:[
          ExtendRight.changeBeats(2).changehands(Hands.RIGHT).scale(1.5,2.0),

          ExtendRight.changeBeats(2).changehands(Hands.LEFT).scale(1.5,2.0)
      ]),

    AnimatedCall('Veer Right',
      formation:Formation('Two-Faced Line RH'),
      from:'Right-Hand Two-Faced Line',difficulty: 1,
      paths:[
          ExtendRight.changeBeats(2).changehands(Hands.RIGHT).scale(2.0,2.0),

          ExtendRight.changeBeats(2).changehands(Hands.LEFT).scale(2.0,2.0)
      ]),

    AnimatedCall('Veer Right',
      formation:Formation('Eight Chain Thru'),
      from:'Eight Chain Thru',difficulty: 1,
      paths:[
          ExtendRight.changeBeats(2).changehands(Hands.GRIPRIGHT).scale(1.0,2.0),

          ExtendRight.changeBeats(2).changehands(Hands.GRIPLEFT).scale(1.0,2.0),

          ExtendRight.changeBeats(2).changehands(Hands.GRIPRIGHT).scale(1.0,2.0),

          ExtendRight.changeBeats(2).changehands(Hands.GRIPLEFT).scale(1.0,2.0)
      ]),

    AnimatedCall('Veer Right',
      formation:Formation('Two-Faced Lines RH'),
      from:'Two-Faced Lines',difficulty: 1,
      paths:[
          ExtendRight.changeBeats(2).changehands(Hands.GRIPRIGHT).scale(1.0,2.0),

          ExtendRight.changeBeats(2).changehands(Hands.GRIPLEFT).scale(1.0,2.0),

          ExtendRight.changeBeats(2).changehands(Hands.GRIPLEFT).scale(1.0,2.0),

          ExtendRight.changeBeats(2).changehands(Hands.GRIPRIGHT).scale(1.0,2.0)
      ]),

    AnimatedCall('Veer Right',
      formation:Formation('Two-Faced Tidal Line RH'),
      from:'Tidal Two-Faced Line',difficulty: 2,
      paths:[
          ExtendRight.changeBeats(2).changehands(Hands.GRIPRIGHT).scale(2.0,0.5),

          ExtendRight.changeBeats(2).changehands(Hands.GRIPLEFT).scale(2.0,1.5),

          ExtendRight.changeBeats(2).changehands(Hands.GRIPLEFT).scale(2.0,1.5),

          ExtendRight.changeBeats(2).changehands(Hands.GRIPRIGHT).scale(2.0,0.5)
      ]),

    AnimatedCall('Veer Right',
      formation:Formation('Normal Lines'),
      from:'Normal Lines',difficulty: 2,
      paths:[
          ExtendRight.changeBeats(2).changehands(Hands.RIGHT).scale(2.0,1.5),

          ExtendRight.changeBeats(2).changehands(Hands.LEFT).scale(2.0,0.5),

          ExtendRight.changeBeats(2).changehands(Hands.RIGHT).scale(2.0,1.5),

          ExtendRight.changeBeats(2).changehands(Hands.LEFT).scale(2.0,0.5)
      ]),
  ];

