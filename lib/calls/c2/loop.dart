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

  final List<AnimatedCall> Loop = [

    AnimatedCall('End Girls Right Loop 3',
      formation:Formation('Ocean Waves RH BGBG'),
      from:'Waves',group:' ',isGenderSpecific:true,
      paths:[
          Path(),

          Path(),

          Path(),

          RunRight.changeBeats(6).scale(1.5,4.0)
      ]),

    AnimatedCall('Boys In Loop 2',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:-3,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:180),
  ]),
      from:'Blocks',group:' ',isGenderSpecific:true,
      paths:[
          Path(),

          RunRight.changeBeats(6).scale(1.0,3.0),

          RunLeft.changeBeats(6).scale(1.0,3.0),

          Path()
      ]),
  ];

