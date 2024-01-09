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

  final List<AnimatedCall> ReverseCutTheGalaxy = [

    AnimatedCall('Reverse Cut the Galaxy',
      formation:Formation('Galaxy RH GP'),
      from:'Right-Hand Galaxy',
      paths:[
          SwingRight.changeBeats(4).changehands(Hands.GRIPRIGHT).scale(0.5,1.0) +
          DodgeLeft.skew(-0.5,0.0),

          Stand.changeBeats(4) +
          LeadRight.changeBeats(3).scale(1.0,1.5),

          SwingRight.changeBeats(4).changehands(Hands.GRIPRIGHT).scale(0.5,1.0) +
          DodgeLeft.skew(0.5,0.0),

          Stand.changeBeats(4) +
          ExtendRight.changeBeats(3).scale(1.5,2.0)
      ]),

    AnimatedCall('Reverse Cut the Galaxy',
      formation:Formation('Galaxy LH GP'),
      from:'Left-Hand Galaxy',
      paths:[
          SwingLeft.changeBeats(4).changehands(Hands.GRIPLEFT).scale(0.5,1.0) +
          DodgeRight.skew(0.5,0.0),

          Stand.changeBeats(4) +
          LeadLeft.changeBeats(3).scale(1.0,1.5),

          SwingLeft.changeBeats(4).changehands(Hands.GRIPLEFT).scale(0.5,1.0) +
          DodgeRight.skew(-0.5,0.0),

          Stand.changeBeats(4) +
          ExtendLeft.changeBeats(3).scale(1.5,2.0)
      ]),

    AnimatedCall('Reverse Cut the Galaxy',
      formation:Formation('Galaxy Facing RH Box'),
      from:'Facing Galaxy, Right-Hand Box',
      paths:[
          SwingRight.changeBeats(4).changehands(Hands.GRIPRIGHT).scale(0.5,1.0) +
          DodgeLeft.skew(-0.5,0.0),

          Stand.changeBeats(4) +
          LeadLeft.changeBeats(3).scale(1.0,1.5),

          SwingRight.changeBeats(4).changehands(Hands.GRIPRIGHT).scale(0.5,1.0) +
          DodgeLeft.skew(0.5,0.0),

          Stand.changeBeats(4) +
          ExtendLeft.changeBeats(3).scale(1.5,2.0)
      ]),

    AnimatedCall('Reverse Cut the Galaxy',
      formation:Formation('Galaxy Facing LH Box'),
      from:'Facing Galaxy, Left-Hand Box',
      paths:[
          SwingLeft.changeBeats(4).changehands(Hands.GRIPLEFT).scale(0.5,1.0) +
          DodgeRight.skew(0.5,0.0),

          Stand.changeBeats(4) +
          LeadRight.changeBeats(3).scale(1.0,1.5),

          SwingLeft.changeBeats(4).changehands(Hands.GRIPLEFT).scale(0.5,1.0) +
          DodgeRight.skew(-0.5,0.0),

          Stand.changeBeats(4) +
          ExtendRight.changeBeats(3).scale(1.5,2.0)
      ]),

    AnimatedCall('Reverse Cut the Galaxy',
      formation:Formation('Galaxy 5'),
      from:'Galaxy 5',
      paths:[
          RunRight.changeBeats(4) +
          DodgeLeft.skew(-0.5,0.0),

          Stand.changeBeats(4) +
          LeadRight.changeBeats(3).scale(1.0,1.5),

          FlipLeft.changeBeats(4).scale(0.5,1.0) +
          DodgeRight.skew(-0.5,0.0),

          Stand.changeBeats(4) +
          ExtendRight.changeBeats(3).scale(1.5,2.0)
      ]),

    AnimatedCall('Reverse Cut the Galaxy',
      formation:Formation('Galaxy 6'),
      from:'Galaxy 6',
      paths:[
          FlipLeft.changeBeats(4).scale(0.5,1.0) +
          DodgeRight.skew(0.5,0.0),

          Stand.changeBeats(4) +
          LeadRight.changeBeats(3).scale(1.0,1.5),

          RunRight.changeBeats(4).scale(0.5,1.0) +
          DodgeLeft.skew(0.5,0.0),

          Stand.changeBeats(4) +
          ExtendRight.changeBeats(3).scale(1.5,2.0)
      ]),

    AnimatedCall('Reverse Cut the Galaxy',
      formation:Formation('Galaxy 7'),
      from:'Galaxy 7',
      paths:[
          RunRight.changeBeats(4) +
          DodgeLeft.skew(-0.5,0.0),

          Stand.changeBeats(4) +
          LeadLeft.changeBeats(3).scale(1.0,1.5),

          FlipLeft.changeBeats(4).scale(0.5,1.0) +
          DodgeRight.skew(-0.5,0.0),

          Stand.changeBeats(4) +
          ExtendLeft.changeBeats(3).scale(1.5,2.0)
      ]),

    AnimatedCall('Reverse Cut the Galaxy',
      formation:Formation('Galaxy 8'),
      from:'Galaxy 8',
      paths:[
          FlipLeft.changeBeats(4).scale(0.5,1.0) +
          DodgeRight.skew(0.5,0.0),

          Stand.changeBeats(4) +
          LeadLeft.changeBeats(3).scale(1.0,1.5),

          RunRight.changeBeats(4).scale(0.5,1.0) +
          DodgeLeft.skew(0.5,0.0),

          Stand.changeBeats(4) +
          ExtendLeft.changeBeats(3).scale(1.5,2.0)
      ]),

    AnimatedCall('Reverse Flip the Galaxy',
      formation:Formation('Galaxy RH GP'),
      from:'Right-Hand Galaxy',
      paths:[
          FlipLeft.changeBeats(4).skew(0.5,0.0),

          LeadRight.changeBeats(4).scale(1.0,1.5),

          FlipLeft.changeBeats(4).skew(-0.5,0.0),

          ExtendRight.changeBeats(4).scale(1.5,2.0)
      ]),

    AnimatedCall('Reverse Flip the Galaxy',
      formation:Formation('Galaxy LH GP'),
      from:'Left-Hand Galaxy',
      paths:[
          FlipRight.changeBeats(4).skew(-0.5,0.0),

          LeadLeft.changeBeats(4).scale(1.0,1.5),

          FlipRight.changeBeats(4).skew(0.5,0.0),

          ExtendLeft.changeBeats(4).scale(1.5,2.0)
      ]),

    AnimatedCall('Reverse Flip the Galaxy',
      formation:Formation('Galaxy Facing RH Box'),
      from:'Facing Galaxy, Right-Hand Box',
      paths:[
          FlipLeft.changeBeats(4).skew(0.5,0.0),

          LeadLeft.changeBeats(4).scale(1.0,1.5),

          FlipLeft.changeBeats(4).skew(-0.5,0.0),

          ExtendLeft.changeBeats(4).scale(1.5,2.0)
      ]),

    AnimatedCall('Reverse Flip the Galaxy',
      formation:Formation('Galaxy Facing LH Box'),
      from:'Facing Galaxy, Left-Hand Box',
      paths:[
          FlipRight.changeBeats(4).skew(-0.5,0.0),

          LeadRight.changeBeats(4).scale(1.0,1.5),

          FlipRight.changeBeats(4).skew(0.5,0.0),

          ExtendRight.changeBeats(4).scale(1.5,2.0)
      ]),

    AnimatedCall('Reverse Flip the Galaxy',
      formation:Formation('Galaxy 5'),
      from:'Galaxy 5',
      paths:[
          FlipLeft.changeBeats(4).skew(0.5,0.0),

          LeadRight.changeBeats(4).scale(1.0,1.5),

          FlipRight.changeBeats(4).skew(0.5,0.0),

          ExtendRight.changeBeats(4).scale(1.5,2.0)
      ]),

    AnimatedCall('Reverse Flip the Galaxy',
      formation:Formation('Galaxy 6'),
      from:'Galaxy 6',
      paths:[
          FlipRight.changeBeats(4).skew(-0.5,0.0),

          LeadRight.changeBeats(4).scale(1.0,1.5),

          FlipLeft.changeBeats(4).skew(-0.5,0.0),

          ExtendRight.changeBeats(4).scale(1.5,2.0)
      ]),

    AnimatedCall('Reverse Flip the Galaxy',
      formation:Formation('Galaxy 7'),
      from:'Galaxy 7',
      paths:[
          FlipLeft.changeBeats(4).skew(0.5,0.0),

          LeadLeft.changeBeats(4).scale(1.0,1.5),

          FlipRight.changeBeats(4).skew(0.5,0.0),

          ExtendLeft.changeBeats(4).scale(1.5,2.0)
      ]),

    AnimatedCall('Reverse Flip the Galaxy',
      formation:Formation('Galaxy 8'),
      from:'Galaxy 8',
      paths:[
          FlipRight.changeBeats(4).skew(-0.5,0.0),

          LeadLeft.changeBeats(4).scale(1.0,1.5),

          FlipLeft.changeBeats(4).skew(-0.5,0.0),

          ExtendLeft.changeBeats(4).scale(1.5,2.0)
      ]),
  ];

