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

  final List<AnimatedCall> PassTheAxle = [

    AnimatedCall('Pass the Axle',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:1,y:3,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:3,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:1,angle:90),
  ]),
      from:'Eight Chain Thru',parts:'2;4;3',
      paths:[
          ExtendLeft.scale(1.0,0.5) +
          Forward_3.changeBeats(4) +
          ExtendRight.scale(1.0,0.5) +
          SwingLeft,

          ExtendLeft.scale(1.0,0.5) +
          Forward_3.changeBeats(4) +
          ExtendRight.scale(1.0,0.5) +
          SwingRight,

          PassThru +
          RunRight.changeBeats(4).scale(1.0,2.0).skew(-1.0,0.0) +
          SwingRight +
          FlipLeft,

          PassThru +
          RunLeft.changeBeats(4).scale(2.0,2.0).skew(-1.0,0.0) +
          SwingLeft +
          RunRight
      ]),

    AnimatedCall('The Axle',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:3,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:3,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:1,angle:270),
  ]),
      from:'Trade By',parts:'4;3',
      paths:[
          RunLeft.changeBeats(4).scale(2.0,2.0).skew(-1.0,0.0) +
          SwingLeft +
          RunRight,

          RunRight.changeBeats(4).scale(1.0,2.0).skew(-1.0,0.0) +
          SwingRight +
          FlipLeft,

          ExtendLeft.changeBeats(1.5).scale(1.0,0.5) +
          Forward +
          ExtendRight.changeBeats(1.5).scale(1.0,0.5) +
          SwingRight,

          ExtendLeft.changeBeats(1.5).scale(1.0,0.5) +
          Forward +
          ExtendRight.changeBeats(1.5).scale(1.0,0.5) +
          SwingLeft
      ]),

    AnimatedCall('The Axle',
      formation:Formation('Completed Double Pass Thru'),
      from:'Completed Double Pass Thru',parts:'4;3',
      paths:[
          RunLeft.changeBeats(4).scale(2.0,2.0).skew(-1.0,0.0) +
          SwingLeft +
          RunRight,

          RunRight.changeBeats(4).scale(1.0,2.0).skew(-1.0,0.0) +
          SwingRight +
          FlipLeft,

          Forward.changeBeats(4) +
          SwingRight,

          Forward.changeBeats(4) +
          SwingLeft
      ]),
  ];

