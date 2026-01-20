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

  AnimatedCall('Heads Half Sashay; All Circle Left; 4 Boys Spin the Top',
      formation:Formation('Static Square'),
      from:'Static Square',group:' ',parts: '3;3',
      paths:[
        BackSashayRight +
            EighthLeft.changeBeats(1).changehands(Hands.GRIPBOTH).skew(0.59,0.0) +
            cl +
            cl +
            Forward.changehands(Hands.RIGHT).scale(0.41,1.0) +
            ExtendLeft.changeBeats(2).scale(2,0.5) +
            SwingRight.scale(.5,.5) +
            SwingLeft.scale(.5,.5) +
            HingeLeft.scale(1,.5),

        SashayLeft +
            Forward.changehands(Hands.BOTH).scale(0.59,0.59) +
            cl +
            cl +
            EighthRight.changeBeats(1).changehands(Hands.LEFT).skew(-0.417,0.417),

        Stand.changeBeats(3) +
        Forward.changehands(Hands.BOTH).scale(0.59,1.0) +
            cl +
            cl +
            EighthRight.changeBeats(1).changehands(Hands.LEFT)
                .skew(0.29,-0.29) +
            ExtendLeft.changeBeats(2).scale(2,0.5) +
            SwingRight.scale(.5,.5) +
            LeadRight.changeBeats(4.5).scale(3, 1.5),


        Stand.changeBeats(3) +
        EighthLeft.changeBeats(1).changehands(Hands.GRIPBOTH).skew(0.5,0.0) +
            cl +
            cl +
            Back.changehands(Hands.RIGHT).scale(0.59,1.0),
      ]),

];