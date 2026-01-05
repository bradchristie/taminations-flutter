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

  final List<AnimatedCall> TakeN = [

    AnimatedCall('Take 0',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-2,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:3,y:-2,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-2,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-2,angle:270),
  ]),
      group:' ',
      paths:[
          QuarterRight.skew(-1.0,0.0),

          QuarterRight.skew(-1.0,0.0),

          QuarterRight.skew(-1.0,0.0),

          QuarterRight.skew(-1.0,0.0)
      ]),

    AnimatedCall('Take 1',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-2,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:3,y:-2,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-2,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-2,angle:270),
  ]),
      group:' ',
      paths:[
          QuarterRight.skew(-1.0,0.0) +
          Forward,

          QuarterRight.skew(-1.0,0.0) +
          Forward,

          UmTurnRight.skew(-1.0,-1.0) +
          QuarterRight.skew(1.0,0.0),

          QuarterRight.skew(-1.0,0.0) +
          Forward
      ]),

    AnimatedCall('Take 2',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-2,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:3,y:-2,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-2,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-2,angle:270),
  ]),
      group:' ',
      paths:[
          QuarterRight.skew(-1.0,0.0) +
          Forward_2,

          QuarterRight.skew(-1.0,0.0) +
          Forward_2,

          UmTurnRight.skew(-2.0,0.0) +
          QuarterRight.skew(1.0,0.0),

          UmTurnRight.skew(0.0,-2.0) +
          QuarterRight.skew(1.0,0.0)
      ]),

    AnimatedCall('Take 3',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-2,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:3,y:-2,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-2,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-2,angle:270),
  ]),
      group:' ',
      paths:[
          UmTurnRight.skew(0.0,-2.0) +
          QuarterRight.changeBeats(2).skew(0.0,2.0),

          QuarterRight.skew(-1.0,0.0) +
          Forward_3,

          UmTurnRight.skew(-2.0,0.0) +
          QuarterRight.changeBeats(2).skew(2.0,0.0),

          UmTurnRight.skew(0.0,-2.0) +
          QuarterRight.changeBeats(2).skew(2.0,0.0)
      ]),

    AnimatedCall('Take 4',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-2,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:3,y:-2,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-2,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-2,angle:270),
  ]),
      group:' ',
      paths:[
          UmTurnRight.skew(0.0,-2.0) +
          QuarterRight.changeBeats(2).skew(1.0,1.0),

          UmTurnRight.skew(1.0,-2.0) +
          QuarterRight.changeBeats(2).skew(0.0,3.0),

          UmTurnRight.skew(-2.0,0.0) +
          LeadRight.changeBeats(2).skew(2.0,0.0),

          UmTurnRight.skew(0.0,-2.0) +
          LeadRight.changeBeats(2).skew(2.0,0.0)
      ]),
  ];

