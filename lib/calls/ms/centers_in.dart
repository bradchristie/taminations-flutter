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

  final List<AnimatedCall> CentersIn = [

    AnimatedCall('Centers In',
      formation:Formation('Completed Double Pass Thru'),
      from:'Completed Double Pass Thru',difficulty: 1,
      paths:[
          DodgeRight.changeBeats(2).skew(-1.0,0.0),

          DodgeLeft.changeBeats(2).skew(-1.0,0.0),

          Forward.changeBeats(2).changehands(Hands.LEFT),

          Forward.changeBeats(2).changehands(Hands.RIGHT)
      ]),

    AnimatedCall('Centers In',
      formation:Formation('Eight Chain Thru'),
      from:'Eight Chain Thru',difficulty: 2,
      paths:[
          DodgeLeft.changeBeats(2).skew(1.0,0.0),

          DodgeRight.changeBeats(2).skew(1.0,0.0),

          Forward.changeBeats(2).changehands(Hands.RIGHT),

          Forward.changeBeats(2).changehands(Hands.LEFT)
      ]),

    AnimatedCall('Centers In',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.GIRL,x:-3,y:1,angle:0),
        Dancer.fromData(gender:Gender.BOY,x:-3,y:-1,angle:180),
        Dancer.fromData(gender:Gender.GIRL,x:-1,y:1,angle:180),
        Dancer.fromData(gender:Gender.BOY,x:-1,y:-1,angle:180),
  ]),
      from:'Outer Right-Hand Mini-Wave',noDisplay: true,
      paths:[
          DodgeLeft.changeBeats(2).skew(1.0,0.0),

          DodgeLeft.changeBeats(2).skew(-1.0,0.0),

          Forward.changeBeats(2).changehands(Hands.RIGHT),

          Forward.changeBeats(2).changehands(Hands.LEFT)
      ]),

    AnimatedCall('Centers In',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.GIRL,x:-3,y:1,angle:180),
        Dancer.fromData(gender:Gender.BOY,x:-3,y:-1,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:-1,y:1,angle:180),
        Dancer.fromData(gender:Gender.BOY,x:-1,y:-1,angle:180),
  ]),
      from:'Outer Left-Hand Mini-Wave',noDisplay: true,
      paths:[
          DodgeRight.changeBeats(2).skew(-1.0,0.0),

          DodgeRight.changeBeats(2).skew(1.0,0.0),

          Forward.changeBeats(2).changehands(Hands.RIGHT),

          Forward.changeBeats(2).changehands(Hands.LEFT)
      ]),
  ];

