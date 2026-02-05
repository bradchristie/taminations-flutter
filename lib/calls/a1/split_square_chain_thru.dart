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

  final List<AnimatedCall> SplitSquareChainThru = [

    AnimatedCall('Split Square Chain Thru',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:-1,y:3,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:1,y:3,angle:180),
        Dancer.fromData(gender:Gender.BOY,x:-1,y:1,angle:90),
        Dancer.fromData(gender:Gender.GIRL,x:1,y:1,angle:90),
  ]),
      from:'T-Bones, Ends Facing',parts:'1;2;6',
      paths:[
          PullLeft.scale(1.0,0.5) +
          LeadRight.changeBeats(2).scale(1.0,1.5) +
          SwingLeft +
          Stand.changeBeats(3) +
          SwingLeft +
          Forward,

          PullLeft.scale(1.0,0.5) +
          LeadLeft.changeBeats(2).scale(3.0,0.5) +
          SwingLeft +
          SwingRight +
          SwingLeft +
          ExtendLeft.changeBeats(2).scale(1.0,2.0),

          Stand +
          Forward.changeBeats(2) +
          SwingLeft +
          Stand.changeBeats(3) +
          SwingLeft +
          Forward,

          Stand +
          ExtendRight.changeBeats(2).scale(1.0,2.0) +
          SwingLeft +
          SwingRight +
          SwingLeft +
          ExtendLeft.changeBeats(2).scale(1.0,2.0)
      ]),

    AnimatedCall('Split Square Chain Thru',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:-1,y:3,angle:270),
        Dancer.fromData(gender:Gender.GIRL,x:1,y:3,angle:270),
        Dancer.fromData(gender:Gender.BOY,x:-1,y:1,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:1,y:1,angle:180),
  ]),
      from:'T-Bones, Centers Facing',parts:'1;2;6',
      paths:[
          Stand +
          ExtendRight.changeBeats(2).scale(1.0,2.0) +
          SwingLeft +
          SwingRight +
          SwingLeft +
          ExtendLeft.changeBeats(2).scale(1.0,2.0),

          Stand +
          Forward.changeBeats(2) +
          SwingLeft +
          Stand.changeBeats(3) +
          SwingLeft +
          Forward,

          PullLeft.scale(1.0,0.5) +
          LeadLeft.changeBeats(2).scale(3.0,0.5) +
          SwingLeft +
          SwingRight +
          SwingLeft +
          ExtendLeft.changeBeats(2).scale(1.0,2.0),

          PullLeft.scale(1.0,0.5) +
          LeadRight.changeBeats(2).scale(1.0,1.5) +
          SwingLeft +
          Stand.changeBeats(3) +
          SwingLeft +
          Forward
      ]),

    AnimatedCall('Split Square Chain Thru',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:-1,y:3,angle:270),
        Dancer.fromData(gender:Gender.GIRL,x:1,y:3,angle:270),
        Dancer.fromData(gender:Gender.BOY,x:0,y:1.5,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:0,y:.5,angle:180),
  ]),
      from:'Center Wave',parts:'1;2;6',
      paths:[
          ExtendRight.changeBeats(2).scale(1.0,2.0) +
          SwingLeft +
          SwingRight +
          SwingLeft +
          ExtendLeft.changeBeats(2).scale(1.0,2.0),

          Forward.changeBeats(2) +
          SwingLeft +
          Stand.changeBeats(3) +
          SwingLeft +
          Forward,

          LeadLeft.changeBeats(2).scale(3.0,0.5) +
          SwingLeft +
          SwingRight +
          SwingLeft +
          ExtendLeft.changeBeats(2).scale(1.0,2.0),

          LeadRight.changeBeats(2).scale(1.0,1.5) +
          SwingLeft +
          Stand.changeBeats(3) +
          SwingLeft +
          Forward
      ]),

    AnimatedCall('Split Square Chain Thru',
      formation:Formation('T-Bone RLUU'),
      from:'T-Bones 3',parts:'1;2;6',
      paths:[
          PullLeft.scale(1.0,0.5) +
          LeadLeft.changeBeats(2).scale(1.5,0.5) +
          SwingLeft.scale(0.5,0.5) +
          SwingRight.scale(0.5,0.5) +
          SwingLeft.scale(0.5,0.5) +
          ExtendLeft.changeBeats(2).scale(1.5,0.5),

          PullLeft.scale(1.0,0.5) +
          LeadRight.changeBeats(2).scale(0.5,1.5) +
          SwingLeft.scale(0.5,0.5) +
          Stand.changeBeats(3) +
          SwingLeft.scale(0.5,0.5) +
          ExtendLeft.changeBeats(2).scale(1.5,0.5),

          Stand +
          ExtendRight.changeBeats(2).scale(1.0,0.5) +
          SwingLeft.scale(0.5,0.5) +
          Stand.changeBeats(3) +
          SwingLeft.scale(0.5,0.5) +
          ExtendLeft.changeBeats(2).scale(1.5,0.5),

          Stand +
          ExtendRight.changeBeats(2).scale(1.0,0.5) +
          SwingLeft.scale(0.5,0.5) +
          SwingRight.scale(0.5,0.5) +
          SwingLeft.scale(0.5,0.5) +
          ExtendLeft.changeBeats(2).scale(1.5,0.5)
      ]),

    AnimatedCall('Split Square Chain Thru',
      formation:Formation('T-Bone UURL'),
      from:'T-Bones 4',parts:'1;2;6',
      paths:[
          Stand +
          ExtendRight.changeBeats(2).scale(1.0,0.5) +
          SwingLeft.scale(0.5,0.5) +
          Stand.changeBeats(3) +
          SwingLeft.scale(0.5,0.5) +
          ExtendLeft.changeBeats(2).scale(1.5,0.5),

          Stand +
          ExtendRight.changeBeats(2).scale(1.0,0.5) +
          SwingLeft.scale(0.5,0.5) +
          SwingRight.scale(0.5,0.5) +
          SwingLeft.scale(0.5,0.5) +
          ExtendLeft.changeBeats(2).scale(1.5,0.5),

          PullLeft.scale(1.0,0.5) +
          LeadLeft.changeBeats(2).scale(1.5,0.5) +
          SwingLeft.scale(0.5,0.5) +
          SwingRight.scale(0.5,0.5) +
          SwingLeft.scale(0.5,0.5) +
          ExtendLeft.changeBeats(2).scale(1.5,0.5),

          PullLeft.scale(1.0,0.5) +
          LeadRight.changeBeats(2).scale(0.5,1.5) +
          SwingLeft.scale(0.5,0.5) +
          Stand.changeBeats(3) +
          SwingLeft.scale(0.5,0.5) +
          ExtendLeft.changeBeats(2).scale(1.5,0.5)
      ]),

    AnimatedCall('Left Split Square Chain Thru',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:-1,y:3,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:1,y:3,angle:180),
        Dancer.fromData(gender:Gender.BOY,x:-1,y:1,angle:90),
        Dancer.fromData(gender:Gender.GIRL,x:1,y:1,angle:90),
  ]),
      from:'T-Bones, Ends Facing',parts:'1;2;6',
      paths:[
          PullRight.scale(1.0,0.5) +
          LeadRight.changeBeats(2).scale(3.0,0.5) +
          SwingRight +
          SwingLeft +
          SwingRight +
          ExtendRight.changeBeats(2).scale(1.0,2.0),

          PullRight.scale(1.0,0.5) +
          LeadLeft.changeBeats(2).scale(1.0,1.5) +
          SwingRight +
          Stand.changeBeats(3) +
          SwingRight +
          Forward,

          Stand +
          ExtendLeft.changeBeats(2).scale(1.0,2.0) +
          SwingRight +
          SwingLeft +
          SwingRight +
          ExtendRight.changeBeats(2).scale(1.0,2.0),

          Stand +
          Forward.changeBeats(2) +
          SwingRight +
          Stand.changeBeats(3) +
          SwingRight +
          Forward
      ]),

    AnimatedCall('Left Split Square Chain Thru',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:-1,y:3,angle:270),
        Dancer.fromData(gender:Gender.GIRL,x:1,y:3,angle:270),
        Dancer.fromData(gender:Gender.BOY,x:-1,y:1,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:1,y:1,angle:180),
  ]),
      from:'T-Bones, Centers Facing',parts:'1;2;6',
      paths:[
          Stand +
          Forward.changeBeats(2) +
          SwingRight +
          Stand.changeBeats(3) +
          SwingRight +
          Forward,

          Stand +
          ExtendLeft.changeBeats(2).scale(1.0,2.0) +
          SwingRight +
          SwingLeft +
          SwingRight +
          ExtendRight.changeBeats(2).scale(1.0,2.0),

          PullRight.scale(1.0,0.5) +
          LeadLeft.changeBeats(2).scale(1.0,1.5) +
          SwingRight +
          Stand.changeBeats(3) +
          SwingRight +
          Forward,

          PullRight.scale(1.0,0.5) +
          LeadRight.changeBeats(2).scale(3.0,0.5) +
          SwingRight +
          SwingLeft +
          SwingRight +
          ExtendRight.changeBeats(2).scale(1.0,2.0)
      ]),

    AnimatedCall('Left Split Square Chain Thru',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:-1,y:3,angle:270),
        Dancer.fromData(gender:Gender.GIRL,x:1,y:3,angle:270),
        Dancer.fromData(gender:Gender.BOY,x:0,y:.5,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:0,y:1.5,angle:180),
  ]),
      from:'T-Bones, Center Wave',parts:'1;2;6',
      paths:[
          Forward.changeBeats(2) +
          SwingRight +
          Stand.changeBeats(3) +
          SwingRight +
          Forward,

          ExtendLeft.changeBeats(2).scale(1.0,2.0) +
          SwingRight +
          SwingLeft +
          SwingRight +
          ExtendRight.changeBeats(2).scale(1.0,2.0),

          LeadLeft.changeBeats(2).scale(1.0,1.5) +
          SwingRight +
          Stand.changeBeats(3) +
          SwingRight +
          Forward,

          LeadRight.changeBeats(2).scale(3.0,0.5) +
          SwingRight +
          SwingLeft +
          SwingRight +
          ExtendRight.changeBeats(2).scale(1.0,2.0)
      ]),

    AnimatedCall('Left Split Square Chain Thru',
      formation:Formation('T-Bone RLUU'),
      from:'T-Bones 3',parts:'1;2;6',
      paths:[
          PullRight.scale(1.0,0.5) +
          LeadLeft.changeBeats(2).scale(0.5,1.5) +
          SwingRight.scale(0.5,0.5) +
          Stand.changeBeats(3) +
          SwingRight.scale(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(1.5,0.5),

          PullRight.scale(1.0,0.5) +
          LeadRight.changeBeats(2).scale(1.5,0.5) +
          SwingRight.scale(0.5,0.5) +
          SwingLeft.scale(0.5,0.5) +
          SwingRight.scale(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(1.5,0.5),

          Stand +
          ExtendLeft.changeBeats(2).scale(1.0,0.5) +
          SwingRight.scale(0.5,0.5) +
          SwingLeft.scale(0.5,0.5) +
          SwingRight.scale(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(1.5,0.5),

          Stand +
          ExtendLeft.changeBeats(2).scale(1.0,0.5) +
          SwingRight.scale(0.5,0.5) +
          Stand.changeBeats(3) +
          SwingRight.scale(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(1.5,0.5)
      ]),

    AnimatedCall('Left Split Square Chain Thru',
      formation:Formation('T-Bone UURL'),
      from:'T-Bones 4',parts:'1;2;6',
      paths:[
          Stand +
          ExtendLeft.changeBeats(2).scale(1.0,0.5) +
          SwingRight.scale(0.5,0.5) +
          SwingLeft.scale(0.5,0.5) +
          SwingRight.scale(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(1.5,0.5),

          Stand +
          ExtendLeft.changeBeats(2).scale(1.0,0.5) +
          SwingRight.scale(0.5,0.5) +
          Stand.changeBeats(3) +
          SwingRight.scale(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(1.5,0.5),

          PullRight.scale(1.0,0.5) +
          LeadLeft.changeBeats(2).scale(0.5,1.5) +
          SwingRight.scale(0.5,0.5) +
          Stand.changeBeats(3) +
          SwingRight.scale(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(1.5,0.5),

          PullRight.scale(1.0,0.5) +
          LeadRight.changeBeats(2).scale(1.5,0.5) +
          SwingRight.scale(0.5,0.5) +
          SwingLeft.scale(0.5,0.5) +
          SwingRight.scale(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(1.5,0.5)
      ]),

    AnimatedCall('Heads Split Square Chain Thru',
      formation:Formation('Static Square'),
      from:'Static Square',group:' ',parts:'3;2;6',
      paths:[
          PullLeft.changeBeats(3).scale(3.0,0.5) +
          LeadLeft.changeBeats(2).scale(3.0,0.5) +
          SwingLeft +
          SwingRight +
          SwingLeft +
          ExtendLeft.changeBeats(2).scale(1.0,2.0),

          PullLeft.changeBeats(3).scale(3.0,0.5) +
          LeadRight.changeBeats(2).scale(1.0,1.5) +
          SwingLeft +
          Stand.changeBeats(3) +
          SwingLeft +
          Forward,

          Stand.changeBeats(3) +
          Forward.changeBeats(2) +
          SwingLeft +
          Stand.changeBeats(3) +
          SwingLeft +
          Forward,

          Stand.changeBeats(3) +
          ExtendRight.changeBeats(2).scale(1.0,2.0) +
          SwingLeft +
          SwingRight +
          SwingLeft +
          ExtendLeft.changeBeats(2).scale(1.0,2.0)
      ]),

    AnimatedCall('Heads Left Split Square Chain Thru',
      formation:Formation('Static Square'),
      from:'Static Square',group:' ',parts:'3;2;6',
      paths:[
          PullRight.changeBeats(3).scale(3.0,0.5) +
          LeadLeft.changeBeats(2).scale(1.0,1.5) +
          SwingRight +
          Stand.changeBeats(3) +
          SwingRight +
          Forward,

          PullRight.changeBeats(3).scale(3.0,0.5) +
          LeadRight.changeBeats(2).scale(3.0,0.5) +
          SwingRight +
          SwingLeft +
          SwingRight +
          ExtendRight.changeBeats(2).scale(1.0,2.0),

          Stand.changeBeats(3) +
          ExtendLeft.changeBeats(2).scale(1.0,2.0) +
          SwingRight +
          SwingLeft +
          SwingRight +
          ExtendRight.changeBeats(2).scale(1.0,2.0),

          Stand.changeBeats(3) +
          Forward.changeBeats(2) +
          SwingRight +
          Stand.changeBeats(3) +
          SwingRight +
          Forward
      ]),

    AnimatedCall('Sides Split Square Chain Thru',
      formation:Formation('Static Square'),
      from:'Static Square',group:' ',parts:'3;2;6',noDisplay: true,
      paths:[
          Stand.changeBeats(3) +
          Forward.changeBeats(2) +
          SwingLeft +
          Stand.changeBeats(3) +
          SwingLeft +
          Forward,

          Stand.changeBeats(3) +
          ExtendRight.changeBeats(2).scale(1.0,2.0) +
          SwingLeft +
          SwingRight +
          SwingLeft +
          ExtendLeft.changeBeats(2).scale(1.0,2.0),

          PullLeft.changeBeats(3).scale(3.0,0.5) +
          LeadLeft.changeBeats(2).scale(3.0,0.5) +
          SwingLeft +
          SwingRight +
          SwingLeft +
          ExtendLeft.changeBeats(2).scale(1.0,2.0),

          PullLeft.changeBeats(3).scale(3.0,0.5) +
          LeadRight.changeBeats(2).scale(1.0,1.5) +
          SwingLeft +
          Stand.changeBeats(3) +
          SwingLeft +
          Forward
      ]),

    AnimatedCall('Sides Left Split Square Chain Thru',
      formation:Formation('Static Square'),
      from:'Static Square',group:' ',parts:'3;2;6',noDisplay: true,
      paths:[
          Stand.changeBeats(3) +
          ExtendLeft.changeBeats(2).scale(1.0,2.0) +
          SwingRight +
          SwingLeft +
          SwingRight +
          ExtendRight.changeBeats(2).scale(1.0,2.0),

          Stand.changeBeats(3) +
          Forward.changeBeats(2) +
          SwingRight +
          Stand.changeBeats(3) +
          SwingRight +
          Forward,

          PullRight.changeBeats(3).scale(3.0,0.5) +
          LeadLeft.changeBeats(2).scale(1.0,1.5) +
          SwingRight +
          Stand.changeBeats(3) +
          SwingRight +
          Forward,

          PullRight.changeBeats(3).scale(3.0,0.5) +
          LeadRight.changeBeats(2).scale(3.0,0.5) +
          SwingRight +
          SwingLeft +
          SwingRight +
          ExtendRight.changeBeats(2).scale(1.0,2.0)
      ]),
  ];

