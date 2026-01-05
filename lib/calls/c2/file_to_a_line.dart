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

  final List<AnimatedCall> FileToALine = [

    AnimatedCall('File to a Line',
      formation:Formation('Column RH GBGB'),
      from:'Right-Hand Columns',
      paths:[
          DodgeLeft.skew(-1.0,0.0),

          RunRight.skew(1.0,0.0),

          Forward_3,

          DodgeLeft.skew(1.0,0.0)
      ]),

    AnimatedCall('File to a Line',
      formation:Formation('Column LH GBGB'),
      from:'Left-Hand Columns',
      paths:[
          DodgeRight.skew(1.0,0.0),

          Forward_3,

          RunLeft.skew(1.0,0.0),

          DodgeRight.skew(-1.0,0.0)
      ]),

    AnimatedCall('File to a Line',
      formation:Formation('Double Pass Thru'),
      from:'Double Pass Thru',
      paths:[
          DodgeLeft.skew(1.0,0.0),

          DodgeRight.skew(1.0,0.0),

          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('File to a Line',
      formation:Formation('Completed Double Pass Thru'),
      from:'Completed Double Pass Thru',
      paths:[
          DodgeRight.skew(-1.0,0.0),

          DodgeLeft.skew(-1.0,0.0),

          FlipLeft.skew(1.0,0.0),

          RunRight.skew(1.0,0.0)
      ]),

    AnimatedCall('File to a Line',
      formation:Formation('Eight Chain Thru'),
      from:'Eight Chain Thru',
      paths:[
          DodgeLeft.skew(1.0,0.0),

          DodgeRight.skew(1.0,0.0),

          RunRight.skew(1.0,0.0),

          FlipLeft.skew(1.0,0.0)
      ]),

    AnimatedCall('File to a Line',
      formation:Formation('Trade By'),
      from:'Trade By',
      paths:[
          DodgeRight.skew(-1.0,0.0),

          DodgeLeft.skew(-1.0,0.0),

          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('File to a Line',
      formation:Formation('Magic Column RH'),
      from:'Magic Columns, Right-Hand Centers',
      paths:[
          DodgeRight.skew(1.0,0.0),

          RunRight.skew(1.0,0.0),

          Forward_3,

          DodgeRight.skew(-1.0,0.0)
      ]),

    AnimatedCall('File to a Line',
      formation:Formation('Magic Column LH'),
      from:'Magic Columns, Left-Hand Centers',
      paths:[
          DodgeLeft.skew(-1.0,0.0),

          Forward_3,

          RunLeft.skew(1.0,0.0),

          DodgeLeft.skew(1.0,0.0)
      ]),

    AnimatedCall('File to a Line',
      formation:Formation('Mixed Columns RH Ends In'),
      from:'Mixed Columns #1',noDisplay: true,
      paths:[
          DodgeLeft.skew(1.0,0.0),

          DodgeRight.skew(1.0,0.0),

          Forward_3,

          RunRight.skew(1.0,0.0)
      ]),

    AnimatedCall('File to a Line',
      formation:Formation('Mixed Columns LH Ends In'),
      from:'Mixed Columns #2',noDisplay: true,
      paths:[
          DodgeLeft.skew(1.0,0.0),

          DodgeRight.skew(1.0,0.0),

          RunLeft.skew(1.0,0.0),

          Forward_3
      ]),

    AnimatedCall('File to a Line',
      formation:Formation('Mixed Columns RH Ends Out'),
      from:'Mixed Columns #3',noDisplay: true,
      paths:[
          DodgeRight.skew(-1.0,0.0),

          DodgeLeft.skew(-1.0,0.0),

          Forward_3,

          RunRight.skew(1.0,0.0)
      ]),

    AnimatedCall('File to a Line',
      formation:Formation('Mixed Columns LH Ends Out'),
      from:'Mixed Columns #4',noDisplay: true,
      paths:[
          DodgeRight.skew(-1.0,0.0),

          DodgeLeft.skew(-1.0,0.0),

          RunLeft.skew(1.0,0.0),

          Forward_3
      ]),

    AnimatedCall('File to a Line',
      formation:Formation('Mixed Columns RH Centers In'),
      from:'Mixed Columns #5',noDisplay: true,
      paths:[
          DodgeLeft.skew(1.0,0.0),

          DodgeLeft.skew(-1.0,0.0),

          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          RunRight.skew(1.0,0.0),

          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          FlipLeft.skew(1.0,0.0)
      ]),

    AnimatedCall('File to a Line',
      formation:Formation('Mixed Columns LH Centers In'),
      from:'Mixed Columns #6',noDisplay: true,
      paths:[
          DodgeRight.skew(-1.0,0.0),

          DodgeRight.skew(1.0,0.0),

          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          RunRight.skew(1.0,0.0),

          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          FlipLeft.skew(1.0,0.0)
      ]),

    AnimatedCall('File to a Line',
      formation:Formation('Mixed Columns RH Centers Out'),
      from:'Mixed Columns #7',noDisplay: true,
      paths:[
          DodgeLeft.skew(1.0,0.0),

          DodgeLeft.skew(-1.0,0.0),

          FlipLeft +
          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          RunRight +
          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('File to a Line',
      formation:Formation('Mixed Columns LH Centers Out'),
      from:'Mixed Columns #8',noDisplay: true,
      paths:[
          DodgeRight.skew(-1.0,0.0),

          DodgeRight.skew(1.0,0.0),

          FlipLeft +
          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          RunRight +
          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Magic Column File to a Line',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:1,y:3,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:1,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:3,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:90),
  ]),
      group:' ',
      paths:[
          DodgeRight.skew(-1.0,0.0),

          Forward_2.changeBeats(3) +
          ExtendRight.changeBeats(3).scale(1.0,2.0),

          DodgeRight.skew(1.0,0.0),

          ExtendRight.changeBeats(3).scale(2.0,2.0) +
          RunLeft.skew(-1.0,0.0)
      ]),
  ];

