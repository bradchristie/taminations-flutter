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

  final List<AnimatedCall> ChainTheSquare = [

    AnimatedCall('Chain the Square',
      formation:Formation('Eight Chain Thru'),
      from:'Eight Chain Thru',
      paths:[
          PullLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          UmTurnLeft.changeBeats(2).changehands(Hands.GRIPLEFT).skew(1.0,1.25) +
          UmTurnLeft.changeBeats(2).changehands(Hands.GRIPLEFT).skew(-1.0,-1.25),

          PullLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          RunLeft.changeBeats(4).changehands(Hands.GRIPLEFT).skew(-2.0,-1.5),

          PullLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          BeauWheel +
          ExtendLeft.changeBeats(2).changehands(Hands.GRIPLEFT).scale(1.0,2.0),

          PullLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          BelleWheel +
          ExtendLeft.changeBeats(2).changehands(Hands.GRIPRIGHT).scale(1.0,2.0)
      ]),

    AnimatedCall('Chain the Square',
        formation:Formation('Ocean Waves RH BGGB'),
        from:'Right-Hand Waves',
        paths:[
              ExtendRight.scale(1.0,2) +
              ExtendRight.scale(1.0,0.5) +
              UmTurnLeft.changeBeats(2).changehands(Hands.GRIPLEFT).skew(1.0,1.25) +
              UmTurnLeft.changeBeats(2).changehands(Hands.GRIPLEFT).skew(-1.0,-1.25),

          ExtendRight.scale(1.0,2) +
              BelleWheel +
              ExtendLeft.changeBeats(2).changehands(Hands.GRIPRIGHT).scale(1.0,2.0),

          Forward +
              ExtendRight.scale(1.0,0.5) +
              RunLeft.changeBeats(4).changehands(Hands.GRIPLEFT).skew(-2.0,-1.5),

          Forward +
              BeauWheel +
              ExtendLeft.changeBeats(2).changehands(Hands.GRIPLEFT).scale(1.0,2.0),
        ]),

    AnimatedCall('Left Chain the Square',
        formation:Formation('Eight Chain Thru'),
        from:'Eight Chain Thru',
        paths:[
          PullRight.scale(1.0,0.5) +
              ExtendLeft.scale(1.0,0.5) +
              ExtendLeft.scale(1.0,0.5) +
              RunRight.changeBeats(4).changehands(Hands.GRIPRIGHT).skew(-2.0,1.5),

          PullRight.scale(1.0,0.5) +
              ExtendLeft.scale(1.0,0.5) +
              ExtendLeft.scale(1.0,0.5) +
              UmTurnRight.changeBeats(2).changehands(Hands.GRIPRIGHT).skew(1.0,-1.25) +
              UmTurnRight.changeBeats(2).changehands(Hands.GRIPRIGHT).skew(-1.0,1.25),

          PullRight.scale(1.0,0.5) +
              ExtendLeft.scale(1.0,0.5) +
              BeauReverseWheel +
              ExtendRight.changeBeats(2).changehands(Hands.GRIPRIGHT).scale(1.0,2.0),

          PullRight.scale(1.0,0.5) +
              ExtendLeft.scale(1.0,0.5) +
              BelleReverseWheel +
              ExtendRight.changeBeats(2).changehands(Hands.GRIPLEFT).scale(1.0,2.0)
        ]),

    AnimatedCall('Left Chain the Square',
        formation:Formation('Ocean Waves LH BGGB'),
        from:'Left-Hand Waves',
        paths:[
          ExtendLeft.scale(1.0,2) +
              BelleReverseWheel +
              ExtendRight.changeBeats(2).changehands(Hands.GRIPLEFT).scale(1.0,2.0),

          Forward +
              ExtendLeft.scale(1.0,0.5) +
              RunRight.changeBeats(4).changehands(Hands.GRIPRIGHT).skew(-2.0,1.5),

          Forward +
              BeauReverseWheel +
              ExtendRight.changeBeats(2).changehands(Hands.GRIPRIGHT).scale(1.0,2.0),

          ExtendLeft.scale(1.0,2) +
              ExtendLeft.scale(1.0,0.5) +
              UmTurnRight.changeBeats(2).changehands(Hands.GRIPRIGHT).skew(1.0,-1.25) +
              UmTurnRight.changeBeats(2).changehands(Hands.GRIPRIGHT).skew(-1.0,1.25),

        ]),

  ];

