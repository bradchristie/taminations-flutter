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

  final List<AnimatedCall> OpenUpTheColumn = [

    AnimatedCall('Open Up the Column',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:3,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:90),
  ]),
      from:'Right-Hand Columns',fractions:'3;4.5',
      paths:[
          RunRight.changeBeats(6).scale(2.0,2.0) +
          LeadRight.changeBeats(3.5).scale(2.0,1.0),

          Forward_2 +
          RunLeft.changeBeats(5).skew(1.0,0.0) +
          LeadLeft.changeBeats(2.5),

          Forward_3 +
          CastRight +
          Forward_2,

          Forward.changeBeats(3) +
          CastRight +
          Forward_2
      ]),

    AnimatedCall('Open Up the Column',
      formation:Formation('Column LH GBGB'),
      from:'Left-Hand Columns',fractions:'3;4.5',
      paths:[
          Forward.changeBeats(3) +
          CastLeft +
          Forward_2,

          Forward_3 +
          CastLeft +
          Forward_2,

          Forward_2 +
          RunRight.changeBeats(5).skew(1.0,0.0) +
          LeadRight.changeBeats(2.5),

          RunLeft.changeBeats(6).scale(2.0,2.0) +
          LeadLeft.changeBeats(3.5).scale(2.0,1.0)
      ]),

    AnimatedCall('2 By 1 Open Up the Column',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:1,y:2,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:0,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-2,angle:270),
  ]),
      from:'Columns of 3',
      paths:[
          Forward_2.changeBeats(3) +
          CastRight +
          ExtendRight_2.skew(0.0,1.0),

          Forward_2 +
          RunLeft.changeBeats(5).skew(1.0,0.0) +
          LeadLeft.changeBeats(2.5),

          RunRight.changeBeats(6).scale(1.0,1.5) +
          QuarterRight.changeBeats(3.5)
      ]),
  ];

