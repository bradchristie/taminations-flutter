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

  final List<AnimatedCall> JayConcept = [

    AnimatedCall('Jay Left Wheel Thru',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:3,y:1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:3,angle:0),
  ]),
      group:'Jay',
      paths:[
          LeadLeft.changeBeats(3).scale(3.0,2.0),

          QuarterLeft.changeBeats(3),

          LeadLeft.changeBeats(3).scale(3.0,2.0),

          QuarterLeft.changeBeats(3)
      ]),

    AnimatedCall('Jay Pass the Ocean',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:3,y:0,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:0,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-3,angle:90),
  ]),
      group:'Jay',
      paths:[
          LeadRight.changeBeats(5).scale(5.0,3.0),

          ExtendLeft.changeBeats(2).scale(1.5,1.0) +
          QuarterLeft.changeBeats(2).skew(1.5,0.0),

          Forward.changeBeats(2).scale(1.5,1.0) +
          LeadRight.changeBeats(3).scale(2.5,2.0),

          Forward.changeBeats(2) +
          QuarterLeft.changeBeats(2).skew(1.0,0.0)
      ]),

    AnimatedCall('Jay Square Thru Three',
      formation:Formation('Quarter Tag'),
      group:'Jay',
      paths:[
          ExtendLeft.changeBeats(2).scale(1.0,0.5) +
          LeadRight.changeBeats(2).scale(0.5,1.5) +
          LeadRight.changeBeats(2).scale(1.5,0.5) +
          ExtendRight.changeBeats(2).scale(1.0,0.5),

          Forward.changeBeats(2) +
          LeadLeft.changeBeats(2).scale(1.5,1.0) +
          LeadLeft.changeBeats(2).scale(0.5,1.5) +
          ExtendRight.changeBeats(2).scale(1.0,0.5),

          ExtendRight.changeBeats(2).scale(2.0,1.0) +
          LeadRight.changeBeats(2).scale(0.5,2.0) +
          LeadRight.changeBeats(2).scale(1.5,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          LeadLeft.changeBeats(2).scale(1.5,0.5) +
          LeadLeft.changeBeats(2).scale(0.5,1.5) +
          ExtendRight.changeBeats(2).scale(2.0,2.5)
      ]),

    AnimatedCall('Jay Swap Around',
      formation:Formation('Quarter Tag'),
      group:'Jay',
      paths:[
          RunRight.changeBeats(4),

          ExtendRight.changeBeats(4).scale(3.0,2.0),

          RunRight.changeBeats(4).scale(1.0,2.0),

          Forward_3.changeBeats(4)
      ]),

    AnimatedCall('Jay Touch a Quarter',
      formation:Formation('Quarter Tag'),
      group:'Jay',
      paths:[
          ExtendLeft.changeBeats(2).scale(1.5,0.5) +
          LeadRight.changeBeats(2).scale(1.5,0.5),

          LeadRight.changeBeats(4).scale(3.0,2.0),

          LeadRight.changeBeats(4).scale(3.0,2.0),

          ExtendLeft.changeBeats(2).scale(1.5,0.5) +
          LeadRight.changeBeats(2).scale(1.5,0.5)
      ]),

    AnimatedCall('Back Jay Chase Right',
      formation:Formation('3/4 Tag'),
      group:'Back Jay',
      paths:[
          UmTurnRight.changeBeats(1.5).skew(-1.0,-1.0) +
          Forward +
          RunRight.changeBeats(3.5).scale(1.0,1.5).skew(1.0,0.0),

          RunRight.scale(1.0,1.5) +
          ExtendLeft.changeBeats(4).scale(3.0,1.0),

          FlipRight.scale(1.0,1.25) +
          ExtendLeft.changeBeats(3.5).scale(3.0,1.5),

          UmTurnRight.changeBeats(1.5).skew(-1.0,0.0) +
          Forward +
          RunRight.changeBeats(2.5).skew(1.0,0.0)
      ]),

    AnimatedCall('Back Jay Shakedown',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:3,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:-3,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:1,angle:180),
  ]),
      group:'Back Jay',
      paths:[
          FlipRight.changeBeats(5).scale(1.0,2.5) +
          QuarterRight.changeBeats(2).skew(0.0,1.0),

          QuarterRight.skew(-1.0,0.0) +
          UmTurnRight.changeBeats(2.5).skew(-1.5,-1.5) +
          Forward_2 +
          ExtendLeft.scale(0.5,0.5),

          UmTurnRight.skew(-2.0,0.0) +
          QuarterRight.skew(1.0,0.0),

          FlipRight +
          QuarterRight.changeBeats(2)
      ]),

    AnimatedCall('Left Jay Partner Tag',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:0,y:3,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:2,y:1,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:1,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:2,y:-1,angle:270),
  ]),
      group:'Left Jay',
      paths:[
          LeadLeft.scale(0.5,1.0) +
          ExtendRight.changeBeats(2).scale(1.0,1.5),

          LeadLeft.scale(0.5,1.0) +
          ExtendRight.changeBeats(2).scale(1.0,1.5),

          LeadLeft.scale(0.5,1.0) +
          ExtendRight.changeBeats(2).scale(1.0,1.5),

          QuarterRight.skew(-0.5,-1.0) +
          ExtendRight.changeBeats(2).scale(1.0,1.5)
      ]),

    AnimatedCall('Right Jay Partner Tag',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:0,y:3,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:2,y:1,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:1,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:2,y:-1,angle:270),
  ]),
      group:'Right Jay',
      paths:[
          LeadRight.changeBeats(3).scale(2.0,2.0),

          QuarterLeft.changeBeats(1.5).skew(-1.0,0.5) +
          ExtendLeft.changeBeats(1.5).scale(1.5,1.0),

          LeadRight.changeBeats(3).scale(2.0,2.0),

          LeadRight.changeBeats(3).scale(2.0,2.0)
      ]),
  ];

