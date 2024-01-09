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

  final List<AnimatedCall> NStepsAtATime = [

    AnimatedCall('1 Step at a Time',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:1,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:3,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-3,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:-1,angle:270),
  ]),
      group:' ',parts:'3;3',
      paths:[
          Forward.changeBeats(3) +
          SwingRight.scale(0.5,1.0) +
          QuarterRight,

          Forward.changeBeats(3) +
          SwingRight.scale(0.5,1.0) +
          QuarterRight,

          RunLeft.skew(-1.0,0.0) +
          Forward_2.changeBeats(3) +
          QuarterLeft,

          Forward.changeBeats(3) +
          SwingRight.scale(0.5,1.0) +
          QuarterRight
      ]),

    AnimatedCall('2 Steps at a Time',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:1,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:3,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-3,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:-1,angle:270),
  ]),
      group:' ',parts:'3;3',
      paths:[
          Forward_2.changeBeats(3) +
          SwingRight.scale(0.5,1.0) +
          QuarterRight,

          Forward_2.changeBeats(3) +
          SwingRight.scale(0.5,1.0) +
          QuarterRight,

          RunLeft.skew(-1.0,0.0) +
          Forward_2.changeBeats(3) +
          QuarterLeft.changehands(Hands.LEFT).skew(1.0,0.0),

          UmTurnLeft.changeBeats(3).skew(1.0,1.0) +
          Forward_2.changeBeats(3) +
          BackHingeRight.changehands(Hands.RIGHT)
      ]),

    AnimatedCall('3 Steps at a Time',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:1,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:3,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-3,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:-1,angle:270),
  ]),
      group:' ',parts:'3;3',
      paths:[
          UmTurnLeft.changeBeats(3).skew(2.0,1.0) +
          Forward.changeBeats(3) +
          BackHingeRight.changeBeats(2).changehands(Hands.RIGHT).scale(2.0,1.0),

          Forward_3 +
          SwingRight +
          QuarterRight.changeBeats(2),

          RunLeft.scale(1.0,1.5).skew(-2.0,0.0) +
          Forward.changeBeats(3) +
          HingeLeft.changeBeats(2).scale(2.0,1.0),

          FlipLeft +
          Forward.changeBeats(3) +
          QuarterLeft.changeBeats(2).changehands(Hands.BOTH)
      ]),

    AnimatedCall('4 Steps at a Time',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:1,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:3,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-3,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:-1,angle:270),
  ]),
      group:' ',parts:'3;0',
      paths:[
          UmTurnLeft.changeBeats(3).skew(1.0,1.0) +
          QuarterLeft.changeBeats(3).changehands(Hands.BOTH).skew(-1.0,0.0),

          UmTurnLeft.changeBeats(3).skew(3.0,0.0) +
          BackHingeRight.changeBeats(3).changehands(Hands.RIGHT).scale(3.0,2.0).skew(0.0,1.0),

          RunLeft.scale(1.0,1.5).skew(-3.0,0.0) +
          HingeLeft.changeBeats(3).scale(3.0,2.0),

          FlipLeft.skew(-1.0,0.0) +
          HingeLeft.changeBeats(3).changehands(Hands.BOTH)
      ]),
  ];

