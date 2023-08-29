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

  final List<AnimatedCall> PollyWally = [

    AnimatedCall('Polly Wally',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:3,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:90),
  ]),
      from:'Right-Hand Columns',
      paths:[
          FlipLeft.changeBeats(6).skew(-1.0,0.0),

          FlipLeft +
          Forward_3,

          ExtendRight.changeBeats(3).scale(0.5,2.0) +
          Forward.changeBeats(3).scale(2.5,1.0),

          FlipRight.changeBeats(6).skew(1.0,0.0)
      ]),

    AnimatedCall('Polly Wally',
      formation:Formation('Column LH GBGB'),
      from:'Left-Hand Columns',
      paths:[
          FlipRight.changeBeats(6).skew(1.0,0.0),

          ExtendRight.changeBeats(3).scale(0.5,2.0) +
          Forward.changeBeats(3).scale(2.5,1.0),

          FlipLeft +
          Forward_3,

          FlipLeft.changeBeats(6).skew(-1.0,0.0)
      ]),

    AnimatedCall('Polly Wally',
      formation:Formation('Double Pass Thru'),
      from:'Double Pass Thru',
      paths:[
          FlipRight.changeBeats(6).skew(1.0,0.0),

          FlipRight.changeBeats(6).skew(1.0,0.0),

          ExtendRight.changeBeats(3).scale(0.5,2.0) +
          Forward.changeBeats(3).scale(2.5,1.0),

          ExtendRight.changeBeats(3).scale(0.5,2.0) +
          Forward.changeBeats(3).scale(2.5,1.0)
      ]),

    AnimatedCall('Polly Wally',
      formation:Formation('Completed Double Pass Thru'),
      from:'Completed Double Pass Thru',
      paths:[
          FlipLeft.changeBeats(6).skew(-1.0,0.0),

          FlipLeft.changeBeats(6).skew(-1.0,0.0),

          FlipLeft +
          Forward_3,

          FlipLeft +
          Forward_3
      ]),
  ];

