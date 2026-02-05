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

  final List<AnimatedCall> CrossChainThru = [

    AnimatedCall('Cross Chain Thru',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:1,y:3,angle:270),
        Dancer.fromData(gender:Gender.GIRL,x:-1,y:3,angle:270),
        Dancer.fromData(gender:Gender.BOY,x:-1,y:1,angle:90),
        Dancer.fromData(gender:Gender.GIRL,x:1,y:1,angle:90),
  ]),
      from:'Eight Chain Thru',parts:'2',
      paths:[
          PullLeft.scale(1.0,0.5) +
          LeadRight.changeBeats(2).scale(1.0,1.5) +
          HingeLeft +
          Forward,

          PullLeft.scale(1.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5) +
          HingeLeft +
          QuarterRight.skew(1.0,0.0),

          PullLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          BeauWheel,

          PullLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          BelleWheel
      ]),

    AnimatedCall('Cross Chain And Roll',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:1,y:3,angle:270),
        Dancer.fromData(gender:Gender.GIRL,x:-1,y:3,angle:270),
        Dancer.fromData(gender:Gender.BOY,x:-1,y:1,angle:90),
        Dancer.fromData(gender:Gender.GIRL,x:1,y:1,angle:90),
  ]),
      from:'Eight Chain Thru',parts:'2',
      paths:[
          PullLeft.scale(1.0,0.5) +
          LeadRight.changeBeats(2).scale(1.0,1.5) +
          HingeLeft +
          QuarterLeft.skew(1.0,0.0),

          PullLeft.scale(1.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5) +
          HingeLeft +
          Forward,

          PullLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          BeauWheel +
          QuarterLeft,

          PullLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          BelleWheel +
          QuarterLeft
      ]),
  ];

