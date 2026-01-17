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

final List<AnimatedCall> CircleRule = [

  AnimatedCall('Circle Left 1/4',
      formation:Formation('Static Square'),
      from:'Static Square',group:' ',
      paths:[
        Forward.changehands(Hands.BOTH).scale(0.59,0.59) +
            cl +
            cl +
            Back.changehands(Hands.RIGHT).scale(0.59,0.59),

        EighthLeft.changeBeats(1).changehands(Hands.GRIPBOTH).skew(0.59,0.0) +
            cl +
            cl +
            EighthRight.changeBeats(1).changehands(Hands.LEFT).skew(-0.417,0.417),

        Forward.changehands(Hands.BOTH).scale(0.59,1.0) +
            cl +
            cl +
            Back.changehands(Hands.RIGHT).scale(0.59,1.0),

        EighthLeft.changeBeats(1).changehands(Hands.GRIPBOTH).skew(0.5,0.0) +
            cl +
            cl +
            EighthRight.changeBeats(1).changehands(Hands.LEFT).skew(-0.417,0.417)
      ]),

];