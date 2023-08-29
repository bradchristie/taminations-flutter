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

  final List<AnimatedCall> SomethingNew = [

    AnimatedCall('Something New',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:-1,angle:180),
  ]),
      from:'Right-Hand Columns',
      paths:[
          RunRight,

          Forward +
          UmTurnRight.changeBeats(2).skew(1.0,0.0),

          UmTurnRight.changeBeats(3).skew(1.0,0.0),

          ExtendLeft.changeBeats(3).scale(3.0,2.0)
      ]),
  ];

