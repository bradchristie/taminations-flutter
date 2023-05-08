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

  final List<AnimatedCall> TripleFormations = [

    AnimatedCall('Triple Lines Working Forward Circulate',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:3,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-3,angle:0),
  ]),
      group:'Triple Lines Working Forward',
      paths:[
          RunLeft.changeBeats(4),

          Forward_3.changeBeats(4),

          Forward_3.changeBeats(4).changehands(2),

          Forward_3.changeBeats(4).changehands(1)
      ]),

    AnimatedCall('Triple Lines Working Forward Link Up',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:3,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:-3,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:0),
  ]),
      group:'Triple Lines Working Forward',
      paths:[
          HingeRight.changeBeats(2.5).scale(2.0,2.0) +
          QuarterRight +
          Forward_2.changeBeats(3),

          QuarterRight.changeBeats(2.5).changehands(1) +
          QuarterRight +
          Forward_3,

          Forward_2 +
          SwingLeft +
          Forward_2,

          Forward.changeBeats(2) +
          SwingLeft +
          Forward.changeBeats(2)
      ]),

    AnimatedCall('Triple Lines Working Forward Load the Boat',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:0),
  ]),
      group:'Triple Lines Working Forward',
      paths:[
          LeadRight.changeBeats(4).scale(4.0,3.0) +
          LeadRight.changeBeats(4).scale(4.0,3.0) +
          LeadRight,

          ExtendLeft.changeBeats(1.5).scale(1.5,0.5) +
          Forward.changeBeats(1.5).scale(1.5,1.0) +
          QuarterLeft +
          FlipLeft.skew(-0.5,0.0) +
          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5),

          ExtendLeft.changeBeats(1.5).scale(1.5,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.5,0.5) +
          QuarterRight +
          RunRight.scale(1.0,1.5) +
          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5),

          ExtendLeft.changeBeats(1.5).scale(1.5,0.5) +
          Forward.changeBeats(1.5).scale(1.5,1.0) +
          QuarterRight +
          RunRight.skew(0.5,0.0) +
          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Triple Lines Working Backward Chase Right',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:3,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:-3,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-3,angle:180),
  ]),
      group:'Triple Lines Working Backward',
      paths:[
          RunRight.changeBeats(2.5) +
          Forward_3.changeBeats(2.5),

          UmTurnRight.changeBeats(1.5).skew(-1.0,0.0) +
          Forward +
          RunRight.changeBeats(2.5).skew(1.0,0.0),

          RunRight.changeBeats(2.5) +
          Forward_3.changeBeats(2.5),

          RunRight.changeBeats(2.5) +
          Forward_3.changeBeats(2.5)
      ]),

    AnimatedCall('Triple Lines Working Backward Vertical Tag the Line',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:3,y:0,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:0,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:2,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:2,angle:270),
  ]),
      group:'Triple Lines Working Backward',
      paths:[
          FlipRight.skew(-1.0,0.0) +
          Forward_2,

          UmTurnLeft.changeBeats(2).skew(-2.0,0.0) +
          Forward_3,

          Stand.changeBeats(4) +
          Forward,

          Stand.changeBeats(2) +
          ExtendLeft.changeBeats(2).scale(2.0,2.0) +
          Forward
      ]),

    AnimatedCall('Triple Boxes Working Left Trade Circulate',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:2,y:5,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:2,y:3,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:2,y:1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:2,y:-1,angle:0),
  ]),
      group:'Triple Boxes Working Left',
      paths:[
          ExtendLeft.changeBeats(4).scale(4.0,2.0),

          RunRight.changeBeats(4).scale(1.0,2.0),

          ExtendLeft.changeBeats(2).scale(2.0,2.0) +
          Forward_2,

          FlipLeft.changeBeats(4).scale(1.0,2.0)
      ]),

    AnimatedCall('Triple Boxes Working Left Regroup',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:1,y:5,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:3,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-1,angle:0),
  ]),
      group:'Triple Boxes Working Left',
      paths:[
          QuarterLeft +
          FlipLeft +
          ExtendRight.changeBeats(2).scale(2.0,2.0),

          RunRight.scale(1.0,1.5) +
          QuarterRight,

          FlipLeft +
          QuarterLeft,

          QuarterRight +
          RunRight.scale(0.5,1.0) +
          ExtendLeft.changeBeats(2).scale(1.0,2.0)
      ]),

    AnimatedCall('Triple Boxes Working Right Trade Circulate',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:2,y:5,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:2,y:3,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:2,y:1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:2,y:-1,angle:0),
  ]),
      group:'Triple Boxes Working Right',
      paths:[
          ExtendLeft.changeBeats(4).scale(4.0,2.0),

          RunRight.changeBeats(4).scale(1.0,2.0),

          ExtendLeft.changeBeats(2).scale(2.0,2.0) +
          Forward_2,

          FlipRight.changeBeats(4).scale(1.0,2.0)
      ]),
  ];

