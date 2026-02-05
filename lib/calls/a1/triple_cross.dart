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

  final List<AnimatedCall> TripleCross = [

    AnimatedCall('Triple Cross',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.GIRL,x:-1,y:3,angle:90),
        Dancer.fromData(gender:Gender.BOY,x:-1,y:1,angle:90),
        Dancer.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:90),
        Dancer.fromData(gender:Gender.BOY,x:-1,y:-3,angle:90),
  ]),
      from:'Right-Hand Columns',
      paths:[
          Stand.changeBeats(2).changehands(0),

          CrossRight,

          CrossRight,

          CrossRight
      ]),

    AnimatedCall('Triple Cross',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.GIRL,x:-1,y:3,angle:270),
        Dancer.fromData(gender:Gender.BOY,x:-1,y:1,angle:270),
        Dancer.fromData(gender:Gender.BOY,x:-1,y:-1,angle:270),
        Dancer.fromData(gender:Gender.GIRL,x:-1,y:-3,angle:270),
  ]),
      from:'Left-Hand Columns',
      paths:[
          CrossLeft,

          CrossLeft,

          CrossLeft,

          Stand.changeBeats(2).changehands(0)
      ]),

    AnimatedCall('Triple Cross',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.GIRL,x:-1,y:3,angle:270),
        Dancer.fromData(gender:Gender.BOY,x:-1,y:1,angle:90),
        Dancer.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:90),
        Dancer.fromData(gender:Gender.BOY,x:-1,y:-3,angle:90),
  ]),
      from:'Right-Hand Box between Couples',
      paths:[
          Stand.changeBeats(2).changehands(0),

          CrossRight,

          CrossRight,

          CrossRight
      ]),

    AnimatedCall('Triple Cross',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.GIRL,x:-1,y:3,angle:270),
        Dancer.fromData(gender:Gender.BOY,x:-1,y:1,angle:270),
        Dancer.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:270),
        Dancer.fromData(gender:Gender.BOY,x:-1,y:-3,angle:90),
  ]),
      from:'Left-Hand Box between Couples',
      paths:[
          CrossLeft,

          CrossLeft,

          CrossLeft,

          Stand.changeBeats(2).changehands(0)
      ]),

    AnimatedCall('Double Cross',
      formation:Formation('Quarter Tag'),
      from:'Quarter Tag',
      paths:[
          Stand.changeBeats(3).changehands(0),

          CrossLeft.changeBeats(3).scale(1.5,1.0),

          Stand.changeBeats(3).changehands(0),

          CrossLeft.changeBeats(3).scale(1.5,1.0)
      ]),

    AnimatedCall('Double Cross',
      formation:Formation('Quarter Tag LH'),
      from:'Left-Hand Quarter Tag',
      paths:[
          CrossRight.changeBeats(3).scale(1.5,1.0),

          Stand.changeBeats(3).changehands(0),

          Stand.changeBeats(3).changehands(0),

          CrossRight.changeBeats(3).scale(1.5,1.0)
      ]),

    AnimatedCall('Double Cross',
      formation:Formation('Quarter Lines RH'),
      from:'Quarter Lines',noDisplay: true,
      paths:[
          CrossRight.changeBeats(3).scale(1.5,1.0),

          Stand.changeBeats(3).changehands(0),

          CrossRight.changeBeats(3).scale(1.5,1.0),

          Stand.changeBeats(3).changehands(0)
      ]),

    AnimatedCall('Double Cross',
      formation:Formation('Quarter Lines LH'),
      from:'Quarter Lines LH',noDisplay: true,
      paths:[
          Stand.changeBeats(3).changehands(0),

          CrossLeft.changeBeats(3).scale(1.5,1.0),

          CrossLeft.changeBeats(3).scale(1.5,1.0),

          Stand.changeBeats(3).changehands(0)
      ]),
  ];

