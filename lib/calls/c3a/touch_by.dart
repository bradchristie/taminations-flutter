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

import '../../common_dart.dart';
import '../../formation.dart';
import '../../formations.dart';
import '../../moves.dart';
import '../../animated_call.dart';

  final List<AnimatedCall> TouchBy = [ 

    AnimatedCall('Touch By 1/2 By 1/4',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:0,y:3,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:1,angle:270),
  ]),
      group:' ',parts:'6',
      paths:[
          Stand.changeBeats(3) +
          ExtendLeft.changeBeats(3).scale(3.0,1.0) +
          HingeRight,

          ExtendLeft +
          HingeRight +
          HingeRight.changeBeats(3).skew(2.0,0.0)
      ]),

    AnimatedCall('Touch By 1/4 By 1/2',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:0,y:3,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:1,angle:270),
  ]),
      group:' ',parts:'5',
      paths:[
          Stand.changeBeats(2) +
          ExtendLeft.changeBeats(3).scale(3.0,1.0) +
          SwingRight,

          ExtendLeft +
          HingeRight.changeBeats(3).skew(2.0,0.0)
      ]),

    AnimatedCall('Touch By 1/4 By Swing Thru',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:1,y:3,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:1,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:-1,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-3,angle:90),
  ]),
      group:' ',
      paths:[
          ExtendLeft.scale(1.0,0.5) +
          Forward +
          ExtendLeft.changeBeats(2).scale(1.0,1.5) +
          SwingRight +
          SwingLeft,

          ExtendLeft.scale(1.0,0.5) +
          Forward_2 +
          QuarterRight.skew(1.0,0.5),

          ExtendLeft.scale(1.0,0.5) +
          Forward_2 +
          QuarterRight.skew(1.0,-1.5),

          ExtendLeft.scale(1.0,0.5) +
          Forward +
          ExtendRight.changeBeats(2).scale(1.0,0.5) +
          SwingRight
      ]),
  ];

