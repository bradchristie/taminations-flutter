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

  final List<AnimatedCall> VerticalAnything = [

    AnimatedCall('Vertical Dixie Style to a Wave',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.GIRL,x:1,y:2,angle:90),
        Dancer.fromData(gender:Gender.BOY,x:-1,y:2,angle:90),
  ]),
      group:'Vertical',
      paths:[
          FlipLeft.skew(-1.0,-1.0) +
          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,1.0) +
          HingeLeft.scale(1.0,0.5),

          UmTurnRight.skew(1.0,-1.0) +
          Stand.changeBeats(2) +
          ExtendRight.scale(1.0,0.5) +
          HingeLeft.scale(1.0,0.5)
      ]),

    AnimatedCall('Vertical Grand Chain Eight',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.GIRL,x:3,y:2,angle:90),
        Dancer.fromData(gender:Gender.BOY,x:1,y:2,angle:90),
        Dancer.fromData(gender:Gender.GIRL,x:-1,y:2,angle:90),
        Dancer.fromData(gender:Gender.BOY,x:-3,y:2,angle:90),
  ]),
      group:'Vertical',
      paths:[
          FlipLeft.skew(-1.0,-1.0) +
          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,1.5) +
          HingeLeft +
          UmTurnLeft,

          UmTurnRight.skew(1.0,-1.0) +
          Stand.changeBeats(2) +
          ExtendRight +
          HingeLeft +
          UmTurnLeft,

          FlipLeft.skew(-1.0,-1.0) +
          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,1.5) +
          HingeLeft,

          UmTurnRight.skew(1.0,-1.0) +
          Stand.changeBeats(2) +
          ExtendRight +
          HingeLeft
      ]),
  ];

