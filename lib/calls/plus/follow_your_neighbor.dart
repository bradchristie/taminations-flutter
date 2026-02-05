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

  final List<AnimatedCall> FollowYourNeighbor = [

    AnimatedCall('Follow Your Neighbor',
      formation:Formation('Box RH'),
      from:'Right-Hand Box',difficulty: 1,
      paths:[
          Forward_2.changeBeats(1.5).skew(0.0,-0.25) +
          SwingRight.scale(0.75,0.75) +
          HingeRight.skew(0.0,0.25),

          LeadRight.changeBeats(3).scale(2.0,1.0) +
          RunRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Follow Your Neighbor',
      formation:Formation('Box LH'),
      from:'Left-Hand Box',difficulty: 2,
      paths:[
          LeadLeft.changeBeats(3).scale(2.0,1.0) +
          RunLeft.scale(1.0,0.5),

          Forward_2.changeBeats(1.5).skew(0.0,0.25) +
          SwingLeft.scale(0.75,0.75) +
          HingeLeft.skew(0.0,-0.25)
      ]),

    AnimatedCall('Follow Your Neighbor',
      formation:Formation('Single Quarter Tag'),
      from:'Single Quarter Tag',difficulty: 2,
      paths:[
          ExtendLeft.changeBeats(1.5).scale(1.0,0.75) +
          SwingRight.scale(0.75,0.75) +
          HingeRight.skew(0.0,0.25),

          ExtendRight.changeBeats(1.5).scale(2.0,0.25) +
          SwingRight.scale(0.75,0.75) +
          HingeRight.skew(0.0,0.25)
      ]),

    AnimatedCall('Follow Your Neighbor',
      formation:Formation('Single Left Quarter Tag'),
      from:'Left-Hand Single Quarter Tag',difficulty: 3,
      paths:[
          ExtendRight.changeBeats(1.5).scale(1.0,0.75) +
          SwingLeft.scale(0.75,0.75) +
          HingeLeft.skew(0.0,-0.25),

          ExtendLeft.changeBeats(1.5).scale(2.0,0.25) +
          SwingLeft.scale(0.75,0.75) +
          HingeLeft.skew(0.0,-0.25)
      ]),

    AnimatedCall('Follow Your Neighbor',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:-1.0,y:1,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:-1.0,y:-1,angle:270),
  ]),
      noDisplay: true,
      paths:[
          Forward.changeBeats(1.5).skew(0.0,-0.25) +
          SwingRight.scale(0.75,0.75) +
          HingeRight.skew(0.0,0.25),

          LeadLeft.changeBeats(3).scale(2.0,1.0) +
          RunLeft.scale(1.0,0.5)
      ]),

    AnimatedCall('Follow Your Neighbor',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:-1.0,y:-1,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:-1.0,y:1,angle:90),
  ]),
      noDisplay: true,
      paths:[
          Forward.changeBeats(1.5).skew(0.0,0.25) +
          SwingLeft.scale(0.75,0.75) +
          HingeLeft.skew(0.0,-0.25),

          LeadRight.changeBeats(3).scale(2.0,1.0) +
          RunRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Follow Your Neighbor',
      formation:Formation('Ocean Waves RH BGGB'),
      from:'Right-Hand Waves',difficulty: 1,
      paths:[
          Forward_2.changeBeats(1.5).skew(0.0,-0.25) +
          SwingRight.scale(0.75,0.75) +
          HingeRight.skew(0.0,0.25),

          LeadRight.changeBeats(2).scale(2.0,1.0) +
          RunRight.scale(1.0,0.5),

          Forward_2.changeBeats(1.5).skew(0.0,-0.25) +
          SwingRight.scale(0.75,0.75) +
          HingeRight.skew(0.0,0.25),

          LeadRight.changeBeats(2).scale(2.0,1.0) +
          RunRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Follow Your Neighbor',
      formation:Formation('Ocean Waves LH BGGB'),
      from:'Left-Hand Waves',difficulty: 2,
      paths:[
          LeadLeft.changeBeats(2).scale(2.0,1.0) +
          RunLeft.scale(1.0,0.5),

          Forward_2.changeBeats(1.5).skew(0.0,0.25) +
          SwingLeft.scale(0.75,0.75) +
          HingeLeft.skew(0.0,-0.25),

          LeadLeft.changeBeats(2).scale(2.0,1.0) +
          RunLeft.scale(1.0,0.5),

          Forward_2.changeBeats(1.5).skew(0.0,0.25) +
          SwingLeft.scale(0.75,0.75) +
          HingeLeft.skew(0.0,-0.25)
      ]),

    AnimatedCall('Follow Your Neighbor',
      formation:Formation('Column RH GBGB'),
      from:'Right-Hand Columns',difficulty: 2,
      paths:[
          LeadRight.changeBeats(2).scale(1.5,1.0) +
          RunRight.scale(0.5,0.5),

          ExtendRight.scale(1.0,0.5) +
          SwingRight.scale(0.5,0.5) +
          HingeRight.scale(0.5,0.5),

          LeadRight.changeBeats(2).scale(0.5,1.0) +
          UmTurnRight,

          ExtendRight.scale(1.0,0.5) +
          SwingRight.scale(0.5,0.5) +
          HingeRight.scale(0.5,0.5)
      ]),

    AnimatedCall('Follow Your Neighbor',
      formation:Formation('Column LH GBGB'),
      from:'Left-Hand Columns',difficulty: 2,
      paths:[
          ExtendLeft.scale(1.0,0.5) +
          SwingLeft.scale(0.5,0.5) +
          HingeLeft.scale(0.5,0.5),

          LeadLeft.changeBeats(2).scale(0.5,1.0) +
          UmTurnLeft,

          ExtendLeft.scale(1.0,0.5) +
          SwingLeft.scale(0.5,0.5) +
          HingeLeft.scale(0.5,0.5),

          LeadLeft.changeBeats(2).scale(1.5,1.0) +
          RunLeft.scale(0.5,0.5)
      ]),

    AnimatedCall('Follow Your Neighbor',
      formation:Formation('Quarter Tag'),
      from:'Quarter Tag',difficulty: 2,
      paths:[
          ExtendLeft.scale(1.5,1.5) +
          SwingRight.scale(0.75,0.75) +
          HingeRight.scale(0.75,0.75),

          Forward.scale(1.5,1.0) +
          SwingRight.scale(0.75,0.75) +
          HingeRight.scale(0.75,0.75),

          ExtendRight.scale(1.5,0.5) +
          SwingRight.scale(0.75,0.75) +
          HingeRight.scale(0.75,0.75),

          Forward.scale(1.5,1.0) +
          SwingRight.scale(0.75,0.75) +
          HingeRight.scale(0.75,0.75)
      ]),

    AnimatedCall('Follow Your Neighbor',
      formation:Formation('Quarter Tag LH'),
      from:'Left-Hand Quarter Tag',difficulty: 3,
      paths:[
          Forward.scale(1.5,1.0) +
          SwingLeft.scale(0.75,0.75) +
          HingeLeft.scale(0.75,0.75),

          ExtendRight.scale(1.5,1.5) +
          SwingLeft.scale(0.75,0.75) +
          HingeLeft.scale(0.75,0.75),

          ExtendLeft.scale(1.5,0.5) +
          SwingLeft.scale(0.75,0.75) +
          HingeLeft.scale(0.75,0.75),

          Forward.scale(1.5,1.0) +
          SwingLeft.scale(0.75,0.75) +
          HingeLeft.scale(0.75,0.75)
      ]),

    AnimatedCall('Follow Your Neighbor',
      formation:Formation('T-Bone DLDL'),
      from:'T-Bones 1',difficulty: 3,
      paths:[
          LeadLeft.changeBeats(2.5).scale(2.5,1.0) +
          RunLeft.scale(0.5,0.25),

          ExtendRight.scale(1.0,0.25) +
          SwingRight.scale(0.75,0.75) +
          HingeRight.skew(0.0,0.25),

          LeadLeft.changeBeats(2.5).scale(2.5,1.0) +
          RunLeft.scale(0.5,0.25),

          ExtendRight.scale(1.0,0.25) +
          SwingRight.scale(0.75,0.75) +
          HingeRight.skew(0.0,0.25)
      ]),

    AnimatedCall('Follow Your Neighbor',
      formation:Formation('T-Bone RDRD'),
      from:'T-Bones 2',difficulty: 3,
      paths:[
          LeadRight.changeBeats(2.5).scale(2.5,1.0) +
          RunRight.scale(0.5,0.25),

          ExtendLeft.scale(1.0,0.25) +
          SwingLeft.scale(0.75,0.75) +
          HingeLeft.skew(0.0,-0.25),

          LeadRight.changeBeats(2.5).scale(2.5,1.0) +
          RunRight.scale(0.5,0.25),

          ExtendLeft.scale(1.0,0.25) +
          SwingLeft.scale(0.75,0.75) +
          HingeLeft.skew(0.0,-0.25)
      ]),

    AnimatedCall('Follow Your Neighbor',
      formation:Formation('T-Bone URUR'),
      from:'T-Bones 3',difficulty: 3,
      paths:[
          Forward +
          SwingRight.scale(0.75,0.75) +
          HingeRight.skew(0.0,0.25),

          LeadLeft.changeBeats(2.5).scale(0.75,1.0) +
          RunLeft.scale(0.5,0.25),

          ExtendRight.scale(1.0,0.5) +
          SwingRight.scale(0.75,0.75) +
          HingeRight.skew(0.0,0.25),

          LeadLeft.changeBeats(2.5).scale(1.5,1.0) +
          RunLeft.scale(0.5,0.25)
      ]),

    AnimatedCall('Follow Your Neighbor',
      formation:Formation('T-Bone LULU'),
      from:'T-Bones 4',difficulty: 3,
      paths:[
          LeadRight.changeBeats(2.5).scale(1.5,1.0) +
          RunRight.scale(0.5,0.25),

          ExtendLeft.scale(1.0,0.5) +
          SwingLeft.scale(0.75,0.75) +
          HingeLeft.skew(0.0,-0.25),

          LeadRight.changeBeats(2.5).scale(0.75,1.0) +
          RunRight.scale(0.5,0.25),

          Forward +
          SwingLeft.scale(0.75,0.75) +
          HingeLeft.skew(0.0,-0.25)
      ]),

    AnimatedCall('Follow Your Neighbor and Spread',
      formation:Formation('Box RH'),
      from:'Right-Hand Box',difficulty: 1,
      paths:[
          Forward_2.changeBeats(1.5).skew(0.0,-0.25) +
          SwingRight.scale(0.75,0.75) +
          LeadRight.changeBeats(2.5).scale(3.0,1.0).skew(0.0,0.25),

          LeadRight.changeBeats(3) +
          RunRight.changeBeats(4)
      ]),

    AnimatedCall('Follow Your Neighbor and Spread',
      formation:Formation('Box LH'),
      from:'Left-Hand Box',difficulty: 2,
      paths:[
          LeadLeft.changeBeats(3) +
          RunLeft.changeBeats(4),

          Forward_2.changeBeats(1.5).skew(0.0,0.25) +
          SwingLeft.scale(0.75,0.75) +
          LeadLeft.changeBeats(2.5).scale(3.0,1.0).skew(0.0,-0.25)
      ]),

    AnimatedCall('Follow Your Neighbor and Spread',
      formation:Formation('Ocean Waves RH BGGB'),
      from:'Ocean Waves',difficulty: 1,
      taminator: '''
      Very common.  Do not forget how to do Follow Your Neighbor WITHOUT a Spread!
    ''',
      paths:[
          Forward_2.changeBeats(1.5).skew(0.0,-0.25) +
          SwingRight.scale(0.75,0.75) +
          LeadRight.changeBeats(2).skew(2.0,0.25),

          LeadRight.changeBeats(3) +
          RunRight.changeBeats(3),

          Forward_2.changeBeats(1.5).skew(0.0,-0.25) +
          SwingRight.scale(0.75,0.75) +
          LeadRight.changeBeats(2).skew(2.0,0.25),

          LeadRight.changeBeats(3) +
          RunRight.changeBeats(3)
      ]),
  ];

