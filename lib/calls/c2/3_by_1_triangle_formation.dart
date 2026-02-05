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

  final List<AnimatedCall> Q3By1TriangleFormation = [

    AnimatedCall('3 by 1 Triangle Circulate',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:-3,y:1,angle:180),
        Dancer.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:0),
        Dancer.fromData(gender:Gender.BOY,x:0,y:-3,angle:180),
        Dancer.fromData(gender:Gender.GIRL,x:0,y:-1,angle:0),
  ]),
      from:'Right-Hand Wave Between Mini-Waves',
      paths:[
          FlipRight.changeBeats(5).skew(-3.0,0.0),

          Forward_3.changeBeats(5),

          RunRight.changeBeats(5).skew(3.0,0.0),

          Forward_3.changeBeats(5)
      ]),

    AnimatedCall('3 by 1 Triangle Circulate',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:180),
        Dancer.fromData(gender:Gender.BOY,x:0,y:-3,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:0,y:-1,angle:180),
  ]),
      from:'Left-Hand Wave Between Mini-Waves',
      paths:[
          Forward_3.changeBeats(5),

          FlipLeft.changeBeats(5).skew(-3.0,0.0),

          RunLeft.changeBeats(5).skew(3.0,0.0),

          Forward_3.changeBeats(5)
      ]),

    AnimatedCall('3 by 1 Triangle Circulate',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:180),
        Dancer.fromData(gender:Gender.BOY,x:0,y:-3,angle:180),
        Dancer.fromData(gender:Gender.GIRL,x:0,y:-1,angle:0),
  ]),
      from:'Right-Hand Wave Between Mini-Waves, Facing Triangles',
      paths:[
          ExtendLeft.changeBeats(1.5).scale(1.5,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.5,0.5),

          FlipLeft.changeBeats(5).skew(-3.0,0.0),

          Forward_2 +
          RunRight.changeBeats(3).skew(1.0,0.0),

          ExtendLeft.changeBeats(1.5).scale(1.5,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.5,0.5)
      ]),

    AnimatedCall('3 by 1 Triangle Circulate',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.GIRL,x:-3,y:3,angle:0),
        Dancer.fromData(gender:Gender.BOY,x:-3,y:-3,angle:180),
        Dancer.fromData(gender:Gender.BOY,x:0,y:1,angle:180),
        Dancer.fromData(gender:Gender.GIRL,x:0,y:-3,angle:180),
  ]),
      from:'"H" formation',
      paths:[
          Forward_3.changeBeats(6),

          RunRight.changeBeats(6).skew(-3.0,0.0),

          RunRight.changeBeats(6).skew(3.0,0.0),

          Forward_3.changeBeats(6)
      ]),

    AnimatedCall('3 by 1 Interlocked Triangle Circulate',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:180),
        Dancer.fromData(gender:Gender.BOY,x:0,y:-1,angle:180),
        Dancer.fromData(gender:Gender.GIRL,x:0,y:-3,angle:180),
  ]),
      from:'Interlocked 3 by 1 Triangles',
      paths:[
          Forward_3.changeBeats(6),

          RunRight.changeBeats(6).scale(1.0,2.0).skew(-3.0,0.0),

          Forward_3.changeBeats(6),

          RunRight.changeBeats(6).scale(2.0,2.0).skew(3.0,0.0)
      ]),

    AnimatedCall('3 by 1 Interlocked Triangle Circulate',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.GIRL,x:-3,y:3,angle:0),
        Dancer.fromData(gender:Gender.BOY,x:-3,y:-3,angle:180),
        Dancer.fromData(gender:Gender.BOY,x:0,y:-1,angle:180),
        Dancer.fromData(gender:Gender.GIRL,x:0,y:-3,angle:180),
  ]),
      from:'"H" formation',
      paths:[
          Forward_3.changeBeats(6),

          RunRight.changeBeats(6).scale(1.0,2.0).skew(-3.0,0.0),

          RunRight.changeBeats(6).scale(1.0,2.0).skew(3.0,0.0),

          Forward_3.changeBeats(6)
      ]),
  ];

