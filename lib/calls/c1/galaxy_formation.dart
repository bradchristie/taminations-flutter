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

  final List<AnimatedCall> GalaxyFormation = [

    AnimatedCall('Galaxy Circulate',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:0,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:3.1,angle:0),
  ]),
      from:'Right-Hand Galaxy',
      taminator: '''Turn on the Paths setting to see the circulate pattern.
    ''',
      paths:[
          LeadRight.changeBeats(3).scale(2.0,1.0),

          LeadRight.changeBeats(3).scale(1.0,2.0),

          ExtendLeft.changeBeats(3).scale(1.0,2.1),

          ExtendRight.changeBeats(3).scale(1.0,2.1)
      ]),

    AnimatedCall('Galaxy Circulate',
      formation:Formation('Galaxy LH GP'),
      from:'Left-Hand Galaxy',
      paths:[
          ExtendRight.changeBeats(3).scale(1.0,2.1),

          LeadLeft.changeBeats(3).scale(1.0,2.0),

          LeadLeft.changeBeats(3).scale(2.0,1.0),

          ExtendLeft.changeBeats(3).scale(1.0,2.1)
      ]),

    AnimatedCall('Galaxy Circulate',
      formation:Formation('Galaxy Facing RH Box'),
      from:'Facing Galaxy Right-Hand Box',
      paths:[
          Forward +
          LeadRight.changeBeats(2),

          EighthLeft.changeBeats(1).skew(0.0,1.0) +
          EighthLeft.changeBeats(2).skew(1.41,0.0),

          QuarterLeft.skew(0.0,1.0) +
          LeadRight.changeBeats(2).scale(1.1,1.0),

          QuarterLeft.skew(0.0,1.0) +
          LeadRight.changeBeats(2).scale(1.1,1.0)
      ]),

    AnimatedCall('Galaxy Circulate',
      formation:Formation('Galaxy Facing LH Box'),
      from:'Facing Galaxy Left-Hand Box',
      paths:[
          LeadRight.changeBeats(2) +
          QuarterLeft.skew(1.1,0.0),

          LeadRight.changeBeats(2) +
          Forward,

          EighthLeft.changeBeats(2).skew(1.0,1.0) +
          EighthLeft.changeBeats(1).skew(0.707,-0.707),

          LeadRight.changeBeats(2) +
          QuarterLeft.skew(1.1,0.0)
      ]),

    AnimatedCall('Cut the Galaxy',
      formation:Formation('Galaxy RH GP'),
      from:'Right-Hand Galaxy',
      paths:[
          LeadRight.changeBeats(6).scale(2.0,1.0),

          DodgeRight +
          SwingRight,

          ExtendLeft.changeBeats(6).scale(1.0,2.1),

          DodgeRight +
          SwingRight
      ]),

    AnimatedCall('Cut the Galaxy',
      formation:Formation('Galaxy LH GP'),
      from:'Left-Hand Galaxy',
      paths:[
          ExtendRight.changeBeats(6).scale(1.0,2.1),

          DodgeLeft +
          SwingLeft,

          LeadLeft.changeBeats(6).scale(2.0,1.0),

          DodgeLeft +
          SwingLeft
      ]),

    AnimatedCall('Cut the Galaxy',
      formation:Formation('Galaxy Facing RH Box'),
      from:'Facing Galaxy, Right-Hand Centers',
      paths:[
          LeadRight.changeBeats(3).scale(2.0,1.0),

          DodgeLeft +
          SwingLeft,

          ExtendLeft.changeBeats(3).scale(1.0,2.0),

          DodgeLeft +
          SwingLeft
      ]),

    AnimatedCall('Cut the Galaxy',
      formation:Formation('Galaxy Facing LH Box'),
      from:'Facing Galaxy, Left-Hand Centers',
      paths:[
          ExtendRight.changeBeats(3).scale(1.0,2.0),

          DodgeRight +
          SwingRight,

          LeadLeft.changeBeats(3).scale(2.0,1.0),

          DodgeRight +
          SwingRight
      ]),

    AnimatedCall('Flip the Galaxy',
      formation:Formation('Galaxy RH GP'),
      from:'Right-Hand Galaxy',
      paths:[
          LeadRight.changeBeats(3).scale(2.0,1.0),

          RunRight,

          ExtendLeft.changeBeats(3).scale(1.0,2.0),

          RunRight.scale(1.0,1.05)
      ]),

    AnimatedCall('Flip the Galaxy',
      formation:Formation('Galaxy LH GP'),
      from:'Left-Hand Galaxy',
      paths:[
          ExtendRight.changeBeats(3).scale(1.0,2.0),

          RunLeft,

          LeadLeft.changeBeats(3).scale(2.0,1.0),

          RunLeft
      ]),

    AnimatedCall('Flip the Galaxy',
      formation:Formation('Galaxy Facing RH Box'),
      from:'Facing Galaxy, Right-Hand Centers',
      paths:[
          LeadRight.changeBeats(3).scale(2.0,1.0),

          FlipLeft,

          ExtendLeft.changeBeats(3).scale(1.0,2.0),

          FlipLeft.scale(1.0,1.05)
      ]),

    AnimatedCall('Flip the Galaxy',
      formation:Formation('Galaxy Facing LH Box'),
      from:'Facing Galaxy, Left-Hand Centers',
      paths:[
          ExtendRight.changeBeats(3).scale(1.0,2.0),

          FlipRight,

          LeadLeft.changeBeats(3).scale(2.0,1.0),

          FlipRight.scale(1.0,1.05)
      ]),
  ];

