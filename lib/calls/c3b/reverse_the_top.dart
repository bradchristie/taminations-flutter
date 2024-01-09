/*

  Taminations Square Dance Animations
  Copyright (C) 2024 Brad Christie

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

  final List<AnimatedCall> ReverseTheTop = [

    AnimatedCall('Reverse the Top',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:1,y:2,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:2,angle:270),
  ]),
      from:'Facing Couples',parts:'6.5',
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,2.0) +
          LeadRight.changeBeats(4.5).scale(3.0,3.0) +
          SwingRight,

          Forward_2 +
          CastLeft +
          SwingRight
      ]),

    AnimatedCall('Reverse the Top',
      formation:Formation('Wave RH'),
      from:'Right-Hand Wave',parts:'4.5',
      paths:[
          LeadRight.changeBeats(4.5).scale(3.0,3.0) +
          SwingRight,

          CastLeft +
          SwingRight
      ]),

    AnimatedCall('Reverse the Top',
      formation:Formation('Wave LH'),
      from:'Left-Hand Wave',parts:'4.5',
      paths:[
          LeadLeft.changeBeats(4.5).scale(3.0,3.0) +
          SwingLeft,

          CastRight +
          SwingLeft
      ]),
  ];

