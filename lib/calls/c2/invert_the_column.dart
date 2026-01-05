/*

  Taminations Square Dance Animations
  Copyright (C) 2026 Brad Christie

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

  final List<AnimatedCall> InvertTheColumn = [

    AnimatedCall('Invert the Column',
      formation:Formation('Column RH GBGB'),
      from:'Right-Hand Columns',fractions:'5;3;3',
      paths:[
          RunLeft.skew(-1.0,0.0) +
          Forward_2 +
          Forward.changeBeats(3) +
          Forward.changeBeats(3) +
          ExtendLeft.changeBeats(3).scale(1.0,2.0),

          Forward.changeBeats(5) +
          RunLeft.skew(-1.0,0.0) +
          Forward.changeBeats(3) +
          ExtendLeft.changeBeats(3).scale(1.0,2.0),

          Forward.changeBeats(5) +
          Forward.changeBeats(3) +
          RunLeft.skew(1.0,0.0) +
          ExtendLeft.changeBeats(3).scale(1.0,2.0),

          Forward.changeBeats(5) +
          Forward.changeBeats(3) +
          Forward.changeBeats(3) +
          UmTurnLeft.changeBeats(3).skew(3.0,0.0)
      ]),

    AnimatedCall('Invert the Column',
      formation:Formation('Column LH GBGB'),
      from:'Left-Hand Columns',fractions:'5;3;3',
      paths:[
          Forward.changeBeats(5) +
          Forward.changeBeats(3) +
          Forward.changeBeats(3) +
          UmTurnRight.changeBeats(3).skew(3.0,0.0),

          Forward.changeBeats(5) +
          Forward.changeBeats(3) +
          RunRight.skew(1.0,0.0) +
          ExtendRight.changeBeats(3).scale(1.0,2.0),

          Forward.changeBeats(5) +
          RunRight.skew(-1.0,0.0) +
          Forward.changeBeats(3) +
          ExtendRight.changeBeats(3).scale(1.0,2.0),

          RunRight.skew(-1.0,0.0) +
          Forward_2 +
          Forward.changeBeats(3) +
          Forward.changeBeats(3) +
          ExtendRight.changeBeats(3).scale(1.0,2.0)
      ]),

    AnimatedCall('Columns of 3 Invert the Column',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:2,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-4,y:0,angle:90),
  ]),
      group:' ',fractions:'4;3',
      taminator: '''
      From this formation Invert the Column 1/3 forms a Galaxy,
      Invert the Column 2/3 forms an Hourglass.
    ''',
      paths:[
          Forward.changeBeats(4) +
          Forward.changeBeats(3) +
          UmTurnLeft.changeBeats(3).skew(2.0,0.0),

          Forward.changeBeats(4) +
          RunLeft +
          ExtendLeft.changeBeats(3).scale(1.0,2.0),

          RunLeft.skew(-1.0,0.0) +
          Forward +
          Forward.changeBeats(3) +
          ExtendLeft.changeBeats(3).scale(1.0,2.0),

          Path()
      ]),

    AnimatedCall('Magic Column Invert the Column',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:1,angle:0),
  ]),
      group:' ',fractions:'5;3;4',
      paths:[
          Forward.changeBeats(5) +
          ExtendRight.changeBeats(3).scale(1.0,2.0) +
          Forward.changeBeats(4) +
          RunLeft.skew(3.0,0.0),

          Forward.changeBeats(5) +
          Forward.changeBeats(3) +
          RunLeft.changeBeats(4).scale(1.0,2.0).skew(1.0,0.0) +
          ExtendLeft.changeBeats(3).scale(1.0,2.0),

          ExtendLeft.changeBeats(5).scale(1.0,2.0) +
          RunLeft.skew(-1.0,0.0) +
          Forward.changeBeats(4) +
          ExtendLeft.changeBeats(3).scale(1.0,2.0),

          RunLeft.skew(-1.0,0.0) +
          Forward_2 +
          Forward.changeBeats(3) +
          Forward.changeBeats(4) +
          ExtendLeft.changeBeats(3).scale(1.0,2.0)
      ]),

    AnimatedCall('Magic Column Invert the Column',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:1,angle:180),
  ]),
      group:' ',fractions:'5;3;4',noDisplay: true,
      paths:[
          RunRight.skew(-1.0,0.0) +
          Forward_2 +
          Forward.changeBeats(3) +
          Forward.changeBeats(4) +
          ExtendRight.changeBeats(3).scale(1.0,2.0),

          ExtendRight.changeBeats(5).scale(1.0,2.0) +
          RunRight.skew(-1.0,0.0) +
          Forward.changeBeats(4) +
          ExtendRight.changeBeats(3).scale(1.0,2.0),

          Forward.changeBeats(5) +
          Forward.changeBeats(3) +
          RunRight.changeBeats(4).scale(1.0,2.0).skew(1.0,0.0) +
          ExtendRight.changeBeats(3).scale(1.0,2.0),

          Forward.changeBeats(5) +
          ExtendLeft.changeBeats(3).scale(1.0,2.0) +
          Forward.changeBeats(4) +
          RunRight.skew(3.0,0.0)
      ]),

    AnimatedCall('Cross Invert the Column 1/4',
      formation:Formation('Column RH GBGB'),
      from:'Right-Hand Columns',
      paths:[
          RunRight.changeBeats(4).scale(1.0,2.0).skew(-1.0,0.0) +
          Forward_2,

          Forward,

          Forward,

          Forward
      ]),

    AnimatedCall('Cross Invert the Column 1/4',
      formation:Formation('Column LH GBGB'),
      from:'Left-Hand Columns',
      paths:[
          Forward,

          Forward,

          Forward,

          RunLeft.changeBeats(4).scale(1.0,2.0).skew(-1.0,0.0) +
          Forward_2
      ]),

    AnimatedCall('Cross Invert the Column 1/2',
      formation:Formation('Column RH GBGB'),
      from:'Right-Hand Columns',
      paths:[
          RunRight.changeBeats(4).scale(1.0,2.0).skew(-2.0,0.0) +
          Forward_3,

          Forward +
          RunRight.changeBeats(4).scale(1.0,2.0),

          Forward_3,

          Forward
      ]),

    AnimatedCall('Cross Invert the Column 1/2',
      formation:Formation('Column LH GBGB'),
      from:'Left-Hand Columns',
      paths:[
          Forward,

          Forward_3,

          Forward +
          RunLeft.changeBeats(4).scale(1.0,2.0),

          RunLeft.changeBeats(4).scale(1.0,2.0).skew(-2.0,0.0) +
          Forward_3
      ]),

    AnimatedCall('Cross Invert the Column 3/4',
      formation:Formation('Column RH GBGB'),
      from:'Right-Hand Columns',
      paths:[
          RunRight.changeBeats(4).scale(1.0,2.0).skew(-2.0,0.0) +
          Forward_4,

          Forward +
          RunRight.changeBeats(5).scale(1.0,2.0).skew(-1.0,0.0) +
          Forward,

          Forward_4 +
          RunRight.changeBeats(4).scale(1.0,2.0),

          Forward_3
      ]),

    AnimatedCall('Cross Invert the Column 3/4',
      formation:Formation('Column LH GBGB'),
      from:'Left-Hand Columns',
      paths:[
          Forward_3,

          Forward_4 +
          RunLeft.changeBeats(4).scale(1.0,2.0),

          Forward +
          RunLeft.changeBeats(5).scale(1.0,2.0).skew(-1.0,0.0) +
          Forward,

          RunLeft.changeBeats(4).scale(1.0,2.0).skew(-2.0,0.0) +
          Forward_4
      ]),

    AnimatedCall('Cross Invert the Column',
      formation:Formation('Column RH GBGB'),
      from:'Right-Hand Columns',
      paths:[
          RunRight +
          Forward_6,

          Forward_2 +
          RunRight +
          Forward_4,

          Forward_4 +
          RunRight +
          Forward_2,

          Forward_6 +
          RunRight
      ]),

    AnimatedCall('Cross Invert the Column',
      formation:Formation('Column LH GBGB'),
      from:'Left-Hand Columns',
      paths:[
          Forward_6 +
          RunLeft,

          Forward_4 +
          RunLeft +
          Forward_2,

          Forward_2 +
          RunLeft +
          Forward_4,

          RunLeft +
          Forward_6
      ]),
  ];

