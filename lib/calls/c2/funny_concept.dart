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

  final List<AnimatedCall> FunnyConcept = [

    AnimatedCall('Funny Split Circulate 2',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:3,y:2,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:2,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:2,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:2,angle:90),
  ]),
      group:'Funny',parts:'3',
      paths:[
          Stand.changeBeats(3) +
          Forward_4,

          Stand.changeBeats(3) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          Forward_2.changeBeats(3) +
          RunLeft.changeBeats(4).scale(1.0,2.0),

          RunRight +
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Funny Diamond Circulate',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:0,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:3,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:0,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-3,angle:0),
  ]),
      group:'Funny',
      paths:[
          Path(),

          Path(),

          Forward_2 +
          LeadRight,

          QuarterLeft.changeBeats(1) +
          Forward +
          ExtendRight.changeBeats(2).scale(2.0,1.0)
      ]),

    AnimatedCall('Funny Slide Thru 9 Times',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:90),
  ]),
      group:'Funny',isGenderSpecific:true,parts:'3;3;3;3;3;3;3;3',
      taminator: '''
      This is a drill that reportedly was created by Lee Kopman.
    ''',
      paths:[
          Stand.changeBeats(3) +
          Stand.changeBeats(3) +
          Stand.changeBeats(3) +
          ExtendLeft.changeBeats(1.5).scale(1.5,0.5) +
          QuarterLeft.changeBeats(1.5).skew(1.5,-0.5) +
          ExtendLeft.changeBeats(1.5).scale(1.0,0.5) +
          QuarterLeft.changeBeats(1.5).skew(1.0,-0.5) +
          Stand.changeBeats(3) +
          Stand.changeBeats(3) +
          Stand.changeBeats(3),

          Stand.changeBeats(3) +
          Stand.changeBeats(3) +
          Stand.changeBeats(3) +
          Stand.changeBeats(3) +
          ExtendLeft.changeBeats(1.5).scale(1.0,0.5) +
          LeadRight.changeBeats(1.5).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.5).scale(1.5,0.5) +
          LeadRight.changeBeats(1.5).scale(1.5,0.5) +
          Stand.changeBeats(3) +
          Stand.changeBeats(3) +
          Stand.changeBeats(3),

          Stand.changeBeats(3) +
          ExtendLeft.changeBeats(1.5).scale(1.5,0.5) +
          QuarterLeft.changeBeats(1.5).skew(1.5,-0.5) +
          ExtendLeft.changeBeats(1.5).scale(1.0,0.5) +
          QuarterLeft.changeBeats(1.5).skew(1.0,-0.5) +
          ExtendLeft.changeBeats(1.5).scale(1.5,0.5) +
          QuarterLeft.changeBeats(1.5).skew(1.5,-0.5) +
          ExtendLeft.changeBeats(1.5).scale(1.0,0.5) +
          QuarterLeft.changeBeats(1.5).skew(1.0,-0.5) +
          Stand.changeBeats(3) +
          Stand.changeBeats(3) +
          ExtendLeft.changeBeats(1.5).scale(1.5,0.5) +
          QuarterLeft.changeBeats(1.5).skew(1.5,-0.5) +
          ExtendLeft.changeBeats(1.5).scale(1.0,0.5) +
          QuarterLeft.changeBeats(1.5).skew(1.0,-0.5),

          ExtendLeft.changeBeats(1.5).scale(1.0,0.5) +
          LeadRight.changeBeats(1.5).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.5).scale(1.5,0.5) +
          LeadRight.changeBeats(1.5).scale(1.5,0.5) +
          Stand.changeBeats(3) +
          Stand.changeBeats(3) +
          ExtendLeft.changeBeats(1.5).scale(1.0,0.5) +
          LeadRight.changeBeats(1.5).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.5).scale(1.5,0.5) +
          LeadRight.changeBeats(1.5).scale(1.5,0.5) +
          ExtendLeft.changeBeats(1.5).scale(1.0,0.5) +
          LeadRight.changeBeats(1.5).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.5).scale(1.5,0.5) +
          LeadRight.changeBeats(1.5).scale(1.5,0.5) +
          Stand.changeBeats(3)
      ]),

    AnimatedCall('Funny Square Thru 3',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:3,y:2,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:2,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:2,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:2,angle:270),
  ]),
      from:'Funny Lines',group:'Funny',parts:'4;2.5',
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          LeadRight.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          QuarterRight.skew(1.0,0.5) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          Stand.changeBeats(6.5) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          Stand.changeBeats(4) +
          ExtendRight.scale(1.0,0.5) +
          LeadLeft.scale(1.0,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          QuarterLeft.changeBeats(2).skew(2.0,-0.5)
      ]),
  ];

