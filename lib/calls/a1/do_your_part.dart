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
import '../../formation.dart';
import '../../moves.dart';

  final List<AnimatedCall> DoYourPart = [

    AnimatedCall('Ends Hourglass Circulate',
      formation:Formation('3 and 1 Lines #1'),
      group:' ',
      paths:[
          LeadLeft.changeBeats(3).scale(2.0,3.0),

          Path(),

          Path(),

          ExtendLeft.changeBeats(3).scale(2.0,2.0)
      ]),

    AnimatedCall('Boys Chase Right, Girls Circulate',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-3,angle:180),
  ]),
      group:' ',
      paths:[
          UmTurnRight.changeBeats(1.5).skew(-1.0,0.0) +
          Forward_2 +
          RunRight.changeBeats(2.5).skew(1.0,0.0),

          RunRight.changeBeats(6).changehands(1),

          RunRight.changeBeats(2.5) +
          Forward_4.changeBeats(3.5),

          RunRight.changeBeats(6).changehands(2).scale(3.0,3.0)
      ]),
  ];

