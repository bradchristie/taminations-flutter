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

  final List<AnimatedCall> GrandFollowYourNeighbor = [

    AnimatedCall('Grand Follow Your Neighbor',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-3,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:-1,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:1,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:3,angle:270),
  ]),
      from:'Right-Hand Columns',
      paths:[
          LeadRight.changeBeats(2).scale(2.0,1.0) +
          RunRight.scale(1.0,0.75),

          Forward +
          HingeRight.scale(0.5,1.0) +
          HingeRight.scale(0.5,0.5) +
          HingeRight.scale(0.5,0.5),

          Forward +
          HingeRight.scale(0.5,1.0) +
          HingeRight.scale(0.5,0.5) +
          HingeRight.scale(0.5,0.5),

          Forward +
          HingeRight.scale(0.5,1.0) +
          HingeRight.scale(0.5,0.5) +
          HingeRight.scale(0.5,0.5)
      ]),

    AnimatedCall('Grand Follow Your Neighbor',
      formation:Formation('Column LH GBGB'),
      from:'Left-Hand Columns',
      paths:[
          Forward +
          HingeLeft.scale(0.5,1.0) +
          HingeLeft.scale(0.5,0.5) +
          HingeLeft.scale(0.5,0.5),

          Forward +
          HingeLeft.scale(0.5,1.0) +
          HingeLeft.scale(0.5,0.5) +
          HingeLeft.scale(0.5,0.5),

          Forward +
          HingeLeft.scale(0.5,1.0) +
          HingeLeft.scale(0.5,0.5) +
          HingeLeft.scale(0.5,0.5),

          LeadLeft.changeBeats(2).scale(2.0,1.0) +
          RunLeft.scale(1.0,0.75)
      ]),

    AnimatedCall('Grand Follow Your Neighbor',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-2,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:0,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:2,angle:270),
  ]),
      from:'Right-Hand Columns of 6',
      paths:[
          LeadRight.changeBeats(2.5).scale(2.0,1.0) +
          RunRight.scale(1.0,0.75),

          Forward +
          HingeRight.scale(0.5,1.0) +
          HingeRight.scale(0.5,0.5) +
          HingeRight.scale(0.5,0.5),

          Forward +
          HingeRight.scale(0.5,1.0) +
          HingeRight.scale(0.5,0.5) +
          HingeRight.scale(0.5,0.5)
      ]),

    AnimatedCall('Grand Follow Your Neighbor',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-2,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:0,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:2,angle:90),
  ]),
      from:'Left-Hand Columns of 6',
      paths:[
          Forward +
          HingeLeft.scale(0.5,1.0) +
          HingeLeft.scale(0.5,0.5) +
          HingeLeft.scale(0.5,0.5),

          Forward +
          HingeLeft.scale(0.5,1.0) +
          HingeLeft.scale(0.5,0.5) +
          HingeLeft.scale(0.5,0.5),

          LeadLeft.changeBeats(2.5).scale(2.0,1.0) +
          RunLeft.scale(1.0,0.75)
      ]),

    AnimatedCall('Grand Follow Your Neighbor and Spread',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-3,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:-1,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:1,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:3,angle:270),
  ]),
      from:'Right-Hand Columns',
      paths:[
          LeadRight.changeBeats(2).scale(2.0,1.0) +
          RunRight.scale(1.0,1.25),

          Forward +
          HingeRight.scale(0.5,1.0) +
          HingeRight.scale(0.5,0.5) +
          HingeRight.scale(1.5,0.5),

          Forward +
          HingeRight.scale(0.5,1.0) +
          HingeRight.scale(0.5,0.5) +
          HingeRight.scale(1.5,0.5),

          Forward +
          HingeRight.scale(0.5,1.0) +
          HingeRight.scale(0.5,0.5) +
          HingeRight.scale(1.5,0.5)
      ]),
  ];

