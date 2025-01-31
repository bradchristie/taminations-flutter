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

  final List<AnimatedCall> DixieGrand = [

    AnimatedCall('Dixie Grand',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:2,y:1,angle:180),
  ]),
      from:'Facing Couples',noDisplay: true,
      paths:[
          Forward +
          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5) +
          QuarterRight.skew(1.0,-0.5),

          Forward +
          PullLeft.scale(1.0,0.5) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.scale(0.5,1.5) +
          QuarterLeft.skew(1.0,-0.5)
      ]),

    AnimatedCall('Dixie Grand',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:-1,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:-1,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:-3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:3,angle:180),
  ]),
      from:'Dixie Grand Circle',parts:'2;2',difficulty: 1,
      paths:[
          ExtendLeft.scale(1.0,0.5) +
          LeadRight_12.changeBeats(2).skew(1.5,-1.0) +
          LeadRight_12.changeBeats(2).skew(2.1,0.0) +
          LeadRight_12.changeBeats(2).skew(0.5,-0.5),

          ExtendLeft.scale(1.0,0.5) +
          LeadLeft_12.changeBeats(2).skew(2.2,-0.8) +
          LeadLeft_12.changeBeats(2).skew(1.5,1.8) +
          LeadLeft_12.changeBeats(2).skew(0.5,-0.5),

          ExtendLeft.scale(1.0,0.5) +
          LeadRight_12.changeBeats(2).skew(1.5,-1.0) +
          LeadRight_12.changeBeats(2).skew(2.1,0.0) +
          LeadRight_12.changeBeats(2).skew(0.5,-0.5),

          ExtendLeft.scale(1.0,0.5) +
          LeadLeft_12.changeBeats(2).skew(2.2,-0.8) +
          LeadLeft_12.changeBeats(2).skew(1.5,1.8) +
          LeadLeft_12.changeBeats(2).skew(0.5,-0.5)
      ]),

    AnimatedCall('Dixie Grand',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:3,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:0),
  ]),
      from:'Double Pass Thru',parts:'2;2',difficulty: 1,
      paths:[
          Stand.changeBeats(2) +
          PullRight.scale(1.0,0.5) +
          ExtendLeft.scale(1.0,1.5) +
          PullLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5),

          Stand.changeBeats(2) +
          PullRight.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          PullLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5),

          PullLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          PullRight.scale(1.0,0.5) +
          ExtendLeft.scale(1.0,0.5) +
          RunRight.changehands(Hands.RIGHT),

          PullLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          PullRight.scale(1.0,0.5) +
          ExtendLeft.scale(1.0,0.5) +
          FlipLeft.changehands(Hands.RIGHT)
      ]),

    AnimatedCall('Dixie Grand',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:3,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1,angle:0),
  ]),
      from:'Quarter Tag',parts:'2;2',difficulty: 1,
      paths:[
          Stand.changeBeats(2) +
          PullRight.scale(1.0,0.5) +
          ExtendLeft.scale(1.0,1.5) +
          PullLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5),

          Stand.changeBeats(2) +
          PullRight.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          PullLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5),

          ExtendRight.changeBeats(2).scale(1.0,2.0) +
          PullRight.scale(1.0,0.5) +
          ExtendLeft.scale(1.0,0.5) +
          RunRight.changehands(Hands.RIGHT),

          Forward.changeBeats(2) +
          PullRight.scale(1.0,0.5) +
          ExtendLeft.scale(1.0,0.5) +
          FlipLeft.changehands(Hands.RIGHT)
      ]),

    AnimatedCall('Dixie Grand',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:3,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:1,angle:0),
  ]),
      from:'Completed Double Pass Thru',parts:'3;3',difficulty: 1,
      paths:[
          FlipLeft.changehands(Hands.RIGHT) +
          PullRight.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          PullLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5),

          RunRight.changehands(Hands.RIGHT) +
          PullRight.scale(1.0,0.5) +
          ExtendLeft.scale(1.0,1.5) +
          PullLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5),

          Stand.changeBeats(3) +
          PullRight.scale(1.0,0.5) +
          ExtendLeft.scale(1.0,0.5) +
          FlipLeft.changehands(Hands.RIGHT),

          Stand.changeBeats(3) +
          PullRight.scale(1.0,0.5) +
          ExtendLeft.scale(1.0,0.5) +
          RunRight.changehands(Hands.RIGHT)
      ]),

    AnimatedCall('Dixie Grand',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:3,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:0),
  ]),
      from:'Trade By',parts:'3;2',difficulty: 2,
      paths:[
          FlipLeft +
          PullRight.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          PullLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5),

          RunRight +
          PullRight.scale(1.0,0.5) +
          ExtendLeft.scale(1.0,1.5) +
          PullLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5),

          PullLeft.changeBeats(1.5).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.0,0.5) +
          PullRight.scale(1.0,0.5) +
          ExtendLeft.scale(1.0,0.5) +
          FlipLeft.changehands(Hands.RIGHT),

          PullLeft.changeBeats(1.5).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.0,0.5) +
          PullRight.scale(1.0,0.5) +
          ExtendLeft.scale(1.0,0.5) +
          RunRight.changehands(Hands.RIGHT)
      ]),

    AnimatedCall('Dixie Grand',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:3,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1,angle:0),
  ]),
      from:'3/4 Tag',parts:'3;2',difficulty: 2,
      paths:[
          RunRight +
          PullRight.scale(1.0,0.5) +
          ExtendLeft.scale(1.0,1.5) +
          PullLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5),

          FlipLeft +
          PullRight.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          PullLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5),

          ExtendRight.changeBeats(3).scale(1.0,2.0) +
          PullRight.scale(1.0,0.5) +
          ExtendLeft.scale(1.0,0.5) +
          RunRight.changehands(Hands.RIGHT),

          Forward.changeBeats(3) +
          PullRight.scale(1.0,0.5) +
          ExtendLeft.scale(1.0,0.5) +
          FlipLeft.changehands(Hands.RIGHT)
      ]),

    AnimatedCall('Dixie Grand',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:1,angle:180),
  ]),
      from:'Eight Chain Thru',parts:'2;3',difficulty: 2,
      paths:[
          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.5).scale(1.0,0.5) +
          ExtendLeft.scale(1.0,0.5) +
          LeadRight.scale(1.0,0.5),

          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          RunLeft +
          ExtendLeft.scale(1.0,0.5) +
          ExtendRight,

          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          FlipRight +
          ExtendLeft.scale(1.0,0.5) +
          Forward,

          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.5).scale(1.0,0.5) +
          ExtendLeft.scale(1.0,0.5) +
          QuarterLeft.skew(1.0,-0.5)
      ]),

    AnimatedCall('Dixie Grand',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:2,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:2,y:1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-3,angle:180),
  ]),
      from:'Right-Hand Waves',parts:'2;3',difficulty: 2,
      paths:[
          ExtendRight.changeBeats(1.5).scale(1.0,2.0) +
          ExtendRight.changeBeats(1.5).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.5).scale(1.0,0.5) +
          ExtendLeft.scale(1.0,0.5) +
          LeadRight.scale(1.0,0.5),

          Forward.changeBeats(1.5) +
          RunLeft +
          ExtendLeft.scale(1.0,0.5) +
          ExtendRight,

          Forward.changeBeats(1.5) +
          ExtendRight.changeBeats(1.5).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.5).scale(1.0,0.5) +
          ExtendLeft.scale(1.0,0.5) +
          QuarterLeft.skew(1.0,-0.5),

          ExtendRight.changeBeats(1.5).scale(1.0,2.0) +
          FlipRight +
          ExtendLeft.scale(1.0,0.5) +
          Forward
      ]),

    AnimatedCall('Dixie Grand',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:1,angle:180),
  ]),
      from:'Magic Columns Right-Hand Centers',parts:'2;3',difficulty: 2,
      taminator: 'To remove any ambiguity, this could be called as '
          'Facing Dancers Start Dixie Grand',
      paths:[
          Stand.changeBeats(2) +
          ExtendRight.changeBeats(1.5).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.5).scale(1.0,0.5) +
          ExtendLeft.scale(1.0,0.5) +
          LeadRight.scale(1.0,0.5),

          Stand.changeBeats(2) +
          RunLeft +
          ExtendLeft.scale(1.0,0.5) +
          ExtendRight,

          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          FlipRight +
          ExtendLeft.scale(1.0,0.5) +
          Forward,

          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.5).scale(1.0,0.5) +
          ExtendLeft.scale(1.0,0.5) +
          QuarterLeft.skew(1.0,-0.5)
      ]),

    AnimatedCall('Dixie Grand',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:1,angle:180),
      ]),
      from:'Magic Columns Left-Hand Centers',parts:'2;3',difficulty: 2,
        taminator: 'To remove any ambiguity, this could be called as '
            'Facing Dancers Start Dixie Grand',
      paths:[
          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.5).scale(1.0,0.5) +
          ExtendLeft.scale(1.0,0.5) +
          LeadRight.scale(1.0,0.5),

          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          RunLeft +
          ExtendLeft.scale(1.0,0.5) +
          ExtendRight,

          Stand.changeBeats(2) +
          FlipRight +
          ExtendLeft.scale(1.0,0.5) +
          Forward,

          Stand.changeBeats(2) +
          ExtendRight.changeBeats(1.5).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.5).scale(1.0,0.5) +
          ExtendLeft.scale(1.0,0.5) +
          QuarterLeft.skew(1.0,-0.5)
      ]),

    AnimatedCall('Dixie Grand', formation: Formation('',dancers:[
      DancerModel.fromData(gender:Gender.BOY,x:-2,y:-3,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:3,y:0,angle:90),
      DancerModel.fromData(gender:Gender.BOY,x:2,y:-3,angle:180),
      DancerModel.fromData(gender:Gender.GIRL,x:0,y:1,angle:180),
    ]),
        from: 'Facing Hourglass',parts:'2;2',difficulty: 2,
        paths: [
          LeadRight.changeBeats(1.5).scale(2, 2.5) +
              LeadRight.changeBeats(.5).scale(1.5, 1) +
              Forward +
              ExtendLeft.changeBeats(1) +
              ExtendLeft.scale(1, .5) +
              ExtendRight.scale(1,.5),

          Forward.scale(.5, 1) +
              QuarterLeft.changeBeats(1).skew(.5, 0) +
              ExtendRight.changeBeats(1) +
              Forward +
              ExtendLeft.scale(1, .5) +
              ExtendRight.scale(1,.5),

          ExtendRight.scale(1.5,0.5) +
              ExtendRight.scale(1.5,0.5) +
              ExtendRight.changeBeats(1) +
              Forward +
              RunRight.changeBeats(2),

          ExtendRight.scale(.5,0.5) +
              ExtendRight.changeBeats(2).scale(1.5,0.5) +
              ExtendLeft.changeBeats(1) +
              FlipLeft.changeBeats(2)

        ]),

  ];

