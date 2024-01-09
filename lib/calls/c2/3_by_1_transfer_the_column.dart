/*

  Taminations Square Dance Animations
  Copyright (C) 2024 Brad Christie

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

  final List<AnimatedCall> Q3By1TransferTheColumn = [

    AnimatedCall('3 by 1 Transfer the Column',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:3,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:90),
  ]),
      from:'Right-Hand Columns',
      paths:[
          RunRight.changeBeats(3).scale(1.0,2.0) +
          Forward_4 +
          LeadRight.changeBeats(2.5).scale(2.0,1.0),

          Forward_2 +
          RunRight.changeBeats(3).scale(1.0,2.0) +
          LeadRight.changeBeats(4.5).scale(4.0,1.0),

          Forward_2 +
          Forward_2 +
          RunRight.changeBeats(4).scale(1.0,2.0).skew(1.0,0.0) +
          LeadRight,

          Forward_2 +
          Forward +
          CastRight +
          Forward_2
      ]),

    AnimatedCall('3 by 1 Transfer the Column',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:-1,angle:0),
  ]),
      from:'Left-Hand Columns',
      paths:[
          RunLeft.changeBeats(3).scale(1.0,2.0) +
          Forward_4 +
          LeadLeft.changeBeats(2.5).scale(2.0,1.0),

          Forward_2 +
          Forward_2 +
          RunLeft.changeBeats(4).scale(1.0,2.0).skew(1.0,0.0) +
          LeadLeft,

          Forward_2 +
          RunLeft.changeBeats(3).scale(1.0,2.0) +
          LeadLeft.changeBeats(4.5).scale(4.0,1.0),

          Forward_2 +
          Forward +
          CastLeft +
          Forward_2
      ]),

    AnimatedCall('Magic 3 by 1 Transfer the Column',
      formation:Formation('Magic Column RH'),
      from:'Magic Columns, Right-Hand Centers',
      paths:[
          Forward.changeBeats(2) +
          ExtendLeft.changeBeats(2).scale(1.0,2.0) +
          Forward.changeBeats(2) +
          CastRight +
          Forward_2,

          ExtendRight.changeBeats(2).scale(1.0,2.0) +
          Forward.changeBeats(2) +
          RunLeft.changeBeats(6).scale(1.0,2.0) +
          Forward.changeBeats(2) +
          LeadLeft,

          Forward_2.changeBeats(4) +
          ExtendRight.changeBeats(3).scale(2.0,2.0) +
          RunLeft.changeBeats(6).scale(1.0,2.0).skew(1.0,0.0) +
          LeadLeft,

          RunLeft.changeBeats(6).scale(1.0,2.0) +
          Forward_5 +
          LeadLeft
      ]),

    AnimatedCall('Magic 3 by 1 Transfer the Column',
      formation:Formation('Magic Column LH'),
      from:'Magic Columns, Left-Hand Centers',
      paths:[
          RunRight.changeBeats(6).scale(1.0,2.0) +
          Forward_5 +
          LeadRight,

          Forward_2.changeBeats(4) +
          ExtendLeft.changeBeats(3).scale(2.0,2.0) +
          RunRight.changeBeats(6).scale(1.0,2.0).skew(1.0,0.0) +
          LeadRight,

          ExtendLeft.changeBeats(2).scale(1.0,2.0) +
          Forward.changeBeats(2) +
          RunRight.changeBeats(6).scale(1.0,2.0) +
          Forward.changeBeats(2) +
          LeadRight,

          Forward.changeBeats(2) +
          ExtendRight.changeBeats(2).scale(1.0,2.0) +
          Forward.changeBeats(2) +
          CastLeft +
          Forward_2
      ]),
  ];

