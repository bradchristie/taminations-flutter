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

  final List<AnimatedCall> ExchangeTheBox = [

    AnimatedCall('Exchange the Box',
      formation:Formation('Ocean Waves RH GBGB'),
      from:'Right-Hand Waves',parts:'4;4;4',
      paths:[
          Forward_4 +
          RunRight.changeBeats(4) +
          ExtendLeft.changeBeats(4).scale(4.0,1.0) +
          RunLeft.changeBeats(4).scale(1.0,1.5),

          RunRight.changeBeats(4) +
          Forward_4 +
          RunRight.changeBeats(4) +
          Forward +
          ExtendLeft.changeBeats(3).scale(3.0,2.0),

          ExtendLeft.changeBeats(4).scale(4.0,1.0) +
          RunLeft.changeBeats(4).scale(2.0,2.0) +
          ExtendLeft.changeBeats(4).scale(4.0,1.0) +
          RunLeft.changeBeats(4),

          RunRight.changeBeats(4) +
          ExtendLeft.changeBeats(4).scale(4.0,1.0) +
          RunLeft.changeBeats(4).scale(2.0,1.5) +
          Forward_4
      ]),

    AnimatedCall('Exchange the Box',
      formation:Formation('Ocean Waves LH BGBG'),
      from:'Left-Hand Waves',parts:'4;4;4',
      paths:[
          RunLeft.changeBeats(4) +
          ExtendRight.changeBeats(4).scale(4.0,1.0) +
          RunRight.changeBeats(4).scale(2.0,1.5) +
          Forward_4,

          ExtendRight.changeBeats(4).scale(4.0,1.0) +
          RunRight.changeBeats(4).scale(2.0,2.0) +
          ExtendRight.changeBeats(4).scale(4.0,1.0) +
          RunRight.changeBeats(4),

          RunLeft.changeBeats(4) +
          Forward_4 +
          RunLeft.changeBeats(4) +
          Forward +
          ExtendRight.changeBeats(3).scale(3.0,2.0),

          Forward_4 +
          RunLeft.changeBeats(4) +
          ExtendRight.changeBeats(4).scale(4.0,1.0) +
          RunRight.changeBeats(4).scale(1.0,1.5)
      ]),

    AnimatedCall('Exchange the Box',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:-1,angle:180),
  ]),
      from:'Right-Hand Columns',parts:'3;3;3',
      paths:[
          RunRight +
          Forward_2.changeBeats(3) +
          ExtendRight.changeBeats(2).scale(1.0,3.0) +
          Forward +
          ExtendLeft.changeBeats(3).scale(2.0,1.0),

          Forward_2.changeBeats(3) +
          RunRight +
          Forward_2.changeBeats(3) +
          ExtendRight.changeBeats(2).scale(1.0,2.0) +
          Forward,

          ExtendRight.changeBeats(2).scale(1.0,3.0) +
          Forward +
          Forward_2.changeBeats(3) +
          RunLeft.scale(1.0,1.5) +
          Forward_2.changeBeats(3),

          Forward_2.changeBeats(3) +
          ExtendRight.changeBeats(2).scale(1.0,3.0) +
          Forward +
          Forward_2.changeBeats(3) +
          RunLeft.scale(1.0,1.5)
      ]),

    AnimatedCall('Exchange the Box',
      formation:Formation('Column LH GBGB'),
      from:'Left-Hand Columns',parts:'3;3;3',
      paths:[
          Forward_2.changeBeats(3) +
          ExtendLeft.changeBeats(2).scale(1.0,3.0) +
          Forward +
          Forward_2.changeBeats(3) +
          RunRight.scale(1.0,1.5),

          ExtendLeft.changeBeats(2).scale(1.0,3.0) +
          Forward +
          Forward_2.changeBeats(3) +
          RunRight.scale(1.0,1.5) +
          Forward_2.changeBeats(3),

          Forward_2.changeBeats(3) +
          RunLeft +
          Forward_2.changeBeats(3) +
          ExtendLeft.changeBeats(2).scale(1.0,2.0) +
          Forward,

          RunLeft +
          Forward_2.changeBeats(3) +
          ExtendLeft.changeBeats(2).scale(1.0,3.0) +
          Forward +
          ExtendRight.changeBeats(3).scale(2.0,1.0)
      ]),

    AnimatedCall('Exchange the Box',
      formation:Formation('Two-Faced Lines RH'),
      from:'Right-Hand Two-Faced Lines',parts:'4;4;4',
      paths:[
          ExtendLeft.changeBeats(4).scale(4.0,1.0) +
          FlipRight.changeBeats(4).scale(1.0,1.5) +
          Forward +
          ExtendLeft.changeBeats(3).scale(3.0,2.0) +
          FlipLeft.changeBeats(4),

          Forward +
          ExtendRight.changeBeats(3).scale(3.0,2.0) +
          RunRight.changeBeats(4).scale(1.0,1.5) +
          Forward_4 +
          RunRight.changeBeats(4).scale(1.0,1.5),

          FlipLeft.changeBeats(4) +
          Forward_4 +
          RunLeft.changeBeats(4) +
          Forward +
          ExtendRight.changeBeats(3).scale(3.0,2.0),

          RunRight.changeBeats(4) +
          ExtendLeft.changeBeats(4).scale(4.0,1.0) +
          RunLeft.changeBeats(4).scale(1.0,1.5) +
          Forward_4
      ]),

    AnimatedCall('Exchange the Inside Triangles',
      formation:Formation('Diamonds RH PTP Girl Points'),
      from:'Point-to-Point Diamonds',parts:'5;5',
      paths:[
          LeadRight.changeBeats(5).scale(2.0,1.0) +
          LeadLeft.changeBeats(5).scale(1.0,4.0) +
          FlipLeft.changeBeats(5),

          LeadLeft.changeBeats(5).scale(2.0,4.0) +
          FlipLeft.changeBeats(5).scale(1.0,1.5) +
          LeadLeft.changeBeats(5).scale(2.0,1.0),

          FlipRight.changeBeats(5) +
          LeadRight.changeBeats(5).scale(2.0,1.0) +
          LeadLeft.changeBeats(5).scale(1.0,4.0),

          Path()
      ]),
  ];

