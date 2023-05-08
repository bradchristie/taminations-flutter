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

  final List<AnimatedCall> WrapToAFormation = [

    AnimatedCall('Wrap to Diamonds',
      formation:Formation('Column RH GBGB'),
      from:'Right-Hand Columns',
      paths:[
          LeadRight +
          LeadRight.changeBeats(3).scale(3.0,2.0) +
          LeadRight.changeBeats(2).scale(1.0,3.0),

          Forward_2 +
          RunRight.changeBeats(4).scale(1.0,2.0).skew(-1.0,0.0),

          Forward_3 +
          LeadRight.changeBeats(3),

          Forward_3 +
          ExtendLeft.changeBeats(3).scale(2.0,2.0)
      ]),

    AnimatedCall('Wrap to Diamonds',
      formation:Formation('Column LH GBGB'),
      from:'Left-Hand Columns',
      paths:[
          Forward_3 +
          ExtendRight.changeBeats(3).scale(2.0,2.0),

          Forward_3 +
          LeadLeft.changeBeats(3),

          Forward_2 +
          RunLeft.changeBeats(4).scale(1.0,2.0).skew(-1.0,0.0),

          LeadLeft +
          LeadLeft.changeBeats(3).scale(3.0,2.0) +
          LeadLeft.changeBeats(2).scale(1.0,3.0)
      ]),

    AnimatedCall('Wrap to a Galaxy',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:3,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:3,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:1,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:90),
  ]),
      from:'Right-Hand Columns',
      paths:[
          LeadRight +
          LeadRight.changeBeats(3).scale(1.0,3.0) +
          ExtendLeft.changeBeats(2).scale(1.0,2.1),

          Forward_4,

          Forward_3 +
          LeadRight.changeBeats(2),

          Forward_2 +
          RunRight.changeBeats(4).skew(-2.0,0.0)
      ]),

    AnimatedCall('Wrap to a Galaxy',
      formation:Formation('Column LH GBGB'),
      from:'Left-Hand Columns',
      paths:[
          Forward_4,

          Forward_3 +
          LeadLeft.changeBeats(2),

          Forward_2 +
          RunLeft.changeBeats(4).skew(-2.0,0.0),

          LeadLeft +
          LeadLeft.changeBeats(3).scale(1.0,3.0) +
          ExtendRight.changeBeats(2).scale(1.0,2.1)
      ]),

    AnimatedCall('Wrap to an Hourglass',
      formation:Formation('Column RH GBGB'),
      from:'Right-Hand Columns',
      paths:[
          LeadRight +
          LeadRight.changeBeats(3).scale(3.0,2.0) +
          ExtendRight.changeBeats(2).scale(2.0,2.0),

          Forward_2 +
          RunRight.changeBeats(4).scale(1.0,2.0).skew(-1.0,0.0),

          Forward_3 +
          LeadRight.changeBeats(3),

          Forward_3 +
          ExtendLeft.changeBeats(3).scale(2.0,2.0)
      ]),

    AnimatedCall('Wrap to an Hourglass',
      formation:Formation('Column LH GBGB'),
      from:'Left-Hand Columns',
      paths:[
          Forward_3 +
          ExtendRight.changeBeats(3).scale(2.0,2.0),

          Forward_3 +
          LeadLeft.changeBeats(3),

          Forward_2 +
          RunLeft.changeBeats(4).scale(1.0,2.0).skew(-1.0,0.0),

          LeadLeft +
          LeadLeft.changeBeats(3).scale(3.0,2.0) +
          ExtendLeft.changeBeats(2).scale(2.0,2.0)
      ]),

    AnimatedCall('Wrap to Interlocked Diamonds',
      formation:Formation('Column RH GBGB'),
      from:'Right-Hand Columns',
      paths:[
          LeadRight +
          LeadRight.changeBeats(3).scale(3.0,2.0) +
          LeadRight.changeBeats(4).scale(3.0,3.0),

          Forward_2 +
          RunRight.changeBeats(4).scale(1.0,2.0).skew(-1.0,0.0),

          Forward_3 +
          LeadRight.changeBeats(3),

          Forward_3 +
          ExtendLeft.changeBeats(3).scale(2.0,2.0)
      ]),

    AnimatedCall('Wrap to Interlocked Diamonds',
      formation:Formation('Column LH GBGB'),
      from:'Left-Hand Columns',
      paths:[
          Forward_3 +
          ExtendRight.changeBeats(3).scale(2.0,2.0),

          Forward_3 +
          LeadLeft.changeBeats(3),

          Forward_2 +
          RunLeft.changeBeats(4).scale(1.0,2.0).skew(-1.0,0.0),

          LeadLeft +
          LeadLeft.changeBeats(3).scale(3.0,2.0) +
          LeadLeft.changeBeats(4).scale(3.0,3.0)
      ]),
  ];

