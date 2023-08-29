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

  final List<AnimatedCall> Q3By1CheckmateTheColumn = [

    AnimatedCall('3 by 1 Checkmate the Column',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:3,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:90),
  ]),
      from:'Right-Hand Columns',
      paths:[
          RunRight +
          Forward_2.changeBeats(3) +
          Forward_2.changeBeats(3) +
          QuarterRight.changeBeats(3).skew(2.0,0.0),

          Forward_2.changeBeats(3) +
          RunRight +
          Forward_2.changeBeats(3) +
          QuarterRight.changeBeats(3).skew(2.0,0.0),

          Forward_2.changeBeats(3) +
          Forward_2.changeBeats(3) +
          RunRight +
          QuarterRight.changeBeats(3).skew(2.0,0.0),

          Forward_2.changeBeats(3) +
          Forward_2.changeBeats(3) +
          Forward_2.changeBeats(3) +
          QuarterRight.changeBeats(3).skew(0.0,-2.0)
      ]),

    AnimatedCall('3 by 1 Checkmate the Column',
      formation:Formation('Column LH GBGB'),
      from:'Left-Hand Columns',
      paths:[
          Forward_2.changeBeats(3) +
          Forward_2.changeBeats(3) +
          Forward_2.changeBeats(3) +
          QuarterLeft.changeBeats(3).skew(0.0,2.0),

          Forward_2.changeBeats(3) +
          Forward_2.changeBeats(3) +
          RunLeft +
          QuarterLeft.changeBeats(3).skew(2.0,0.0),

          Forward_2.changeBeats(3) +
          RunLeft +
          Forward_2.changeBeats(3) +
          QuarterLeft.changeBeats(3).skew(2.0,0.0),

          RunLeft +
          Forward_2.changeBeats(3) +
          Forward_2.changeBeats(3) +
          QuarterLeft.changeBeats(3).skew(2.0,0.0)
      ]),
  ];

