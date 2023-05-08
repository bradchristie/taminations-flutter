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

  final List<AnimatedCall> BellesAndBeaus = [

    AnimatedCall('Belles Walk, Beaus Dodge',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-3,angle:0),
  ]),
      group:' ',
      paths:[
          DodgeRight,

          DodgeRight,

          Forward_4,

          Forward_4
      ]),

    AnimatedCall('Beaus Trade',
      formation:Formation('Inverted Lines Ends Facing Out'),
      from:'Inverted Lines',group:' ',
      paths:[
          Path(),

          Path(),

          SwingRight,

          SwingRight
      ]),

    AnimatedCall('Belles Trade',
      formation:Formation('Inverted Lines Ends Facing Out'),
      from:'Inverted Lines',group:' ',
      paths:[
          SwingLeft,

          SwingLeft,

          Path(),

          Path()
      ]),

    AnimatedCall('Beaus Walk, Belles Dodge',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:3,y:-1,angle:180),
  ]),
      group:' ',
      paths:[
          DodgeLeft,

          Forward_2.changeBeats(3),

          Forward_2.changeBeats(3),

          Forward_2.changeBeats(3)
      ]),

    AnimatedCall('Belles Cross',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-3,angle:180),
  ]),
      group:' ',
      paths:[
          Stand.changeBeats(3).changehands(0),

          ExtendRight.changeBeats(2).changehands(1).scale(3.0,2.0) +
          Forward,

          Stand.changeBeats(3).changehands(2),

          Stand.changeBeats(3).changehands(2)
      ]),
  ];

