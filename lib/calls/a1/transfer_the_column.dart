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

  final List<AnimatedCall> TransferTheColumn = [

    AnimatedCall('Transfer the Column',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:3,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:90),
  ]),
      from:'Right-Hand Columns',
      paths:[
          RunRight.changeBeats(3).scale(1.0,2.0) +
          Forward_4 +
          LeadRight.changeBeats(2).scale(2.0,1.0),

          Forward_2 +
          SwingRight.scale(0.5,1.0) +
          HingeRight.scale(0.5,1.0) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          Forward_2 +
          RunRight.changeBeats(3).scale(1.0,2.0) +
          LeadRight.changeBeats(2).scale(2.0,1.0),

          Forward_2 +
          SwingRight.scale(0.5,1.0) +
          HingeRight.scale(0.5,1.0) +
          ExtendLeft.changeBeats(2).scale(2.0,1.5)
      ]),

    AnimatedCall('Transfer the Column',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:3,angle:270),
  ]),
      from:'Left-Hand Columns',
      paths:[
          RunLeft.changeBeats(3).scale(1.0,2.0) +
          Forward_4 +
          LeadLeft.changeBeats(2).scale(2.0,1.0),

          Forward_2 +
          SwingLeft.scale(0.5,1.0) +
          HingeLeft.scale(0.5,1.0) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          Forward_2 +
          RunLeft.changeBeats(3).scale(1.0,2.0) +
          LeadLeft.changeBeats(2).scale(2.0,1.0),

          Forward_2 +
          SwingLeft.scale(0.5,1.0) +
          HingeLeft.scale(0.5,1.0) +
          ExtendRight.changeBeats(2).scale(2.0,1.5)
      ]),
  ];

