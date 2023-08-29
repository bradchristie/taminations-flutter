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
  ];

