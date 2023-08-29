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

  final List<AnimatedCall> InterlockedTriangleFormation = [

    AnimatedCall('Inside Interlocked Triangle Circulate',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:3,y:2,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:2,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-3,angle:180),
  ]),
      group:' ',
      paths:[
          Stand.changeBeats(1.5) +
          LeadRight.changeBeats(4).scale(3.0,3.0),

          FlipRight.changeBeats(5).scale(1.0,3.0),

          LeadRight.changeBeats(4).scale(3.0,3.0),

          Path()
      ]),

    AnimatedCall('Outside Interlocked Triangle Circulate',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:3,y:2,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:2,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-3,angle:180),
  ]),
      group:' ',
      paths:[
          LeadRight.changeBeats(6).scale(5.0,3.0),

          RunRight.changeBeats(6).scale(1.0,3.0),

          Path(),

          LeadRight.changeBeats(6).scale(3.0,5.0)
      ]),

    AnimatedCall('Inpoint Interlocked Triangle Circulate',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:3,y:2,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:2,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-3,angle:180),
  ]),
      group:' ',
      taminator: '''Turn on the Paths button to see the triangles
    ''',
      paths:[
          LeadRight.changeBeats(4).scale(3.0,3.0),

          Path(),

          RunRight.changeBeats(4).scale(1.0,2.0),

          LeadRight.changeBeats(4).scale(3.0,1.0)
      ]),

    AnimatedCall('Outpoint Interlocked Triangle Circulate',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:3,y:2,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:2,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-3,angle:180),
  ]),
      group:' ',
      paths:[
          Path(),

          LeadRight.changeBeats(4).scale(1.0,3.0),

          LeadRight.changeBeats(4).scale(3.0,3.0),

          RunRight.changeBeats(4).scale(1.0,2.0)
      ]),
  ];

