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

  final List<AnimatedCall> ZipCode = [

    AnimatedCall('Zip Code 6',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:1,y:3,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:3,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:1,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:270),
  ]),
      from:'Double Pass Thru',fractions:'5;2;4;2;4',
      paths:[
          Forward_2.changehands(Hands.RIGHT),

          Forward_2.changehands(Hands.LEFT),

          RunLeft.skew(-1.0,0.0) +
          LeadLeft.changeBeats(2).scale(1.0,2.0) +
          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          LeadLeft.changeBeats(4).scale(2.0,2.0) +
          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          LeadLeft.changeBeats(4).scale(2.0,2.0) +
          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5),

          RunRight.skew(-1.0,0.0) +
          LeadRight.changeBeats(2).scale(1.0,2.0) +
          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          LeadRight.changeBeats(4).scale(2.0,2.0) +
          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          LeadRight.changeBeats(4).scale(2.0,2.0) +
          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5)
      ]),
  ];

