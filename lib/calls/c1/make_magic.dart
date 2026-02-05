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

  final List<AnimatedCall> MakeMagic = [

    AnimatedCall('Make Magic',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:0),
        Dancer.fromData(gender:Gender.BOY,x:-1,y:1,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:180),
  ]),
      from:'Centers Right-Hand Box',
      paths:[
          Path(),

          PassThru.changeBeats(3),

          ExtendRight.changeBeats(2).scale(1.0,2.0) +
          Forward,

          PassThru.changeBeats(3)
      ]),

    AnimatedCall('Make Magic',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:1,y:3,angle:270),
        Dancer.fromData(gender:Gender.GIRL,x:-1,y:3,angle:270),
        Dancer.fromData(gender:Gender.BOY,x:1,y:1,angle:90),
        Dancer.fromData(gender:Gender.GIRL,x:-1,y:1,angle:270),
  ]),
      from:'Centers Left-Hand Box',
      paths:[
          PassThru.changeBeats(3),

          Path(),

          PassThru.changeBeats(3),

          ExtendLeft.changeBeats(2).scale(1.0,2.0) +
          Forward
      ]),
  ];

