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

  final List<AnimatedCall> PeelTheTop = [

    AnimatedCall('Peel the Top',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:0,y:1,angle:180),
        Dancer.fromData(gender:Gender.GIRL,x:2,y:1,angle:180),
  ]),
      from:'Left-Hand Z',parts:'3',difficulty: 1,
      paths:[
          RunRight.changeBeats(2) +
          LeadRight.changeBeats(4).scale(3.0,3.0),

          Forward_2 +
          HingeLeft.changeBeats(1.5) +
          SwingLeft.changeBeats(2.5)
      ]),

    AnimatedCall('Peel the Top',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:0,y:-1,angle:180),
        Dancer.fromData(gender:Gender.GIRL,x:2,y:-1,angle:180),
  ]),
      from:'Right-Hand Z',parts:'3',difficulty: 1,
      paths:[
          RunLeft.changeBeats(2) +
          LeadLeft.changeBeats(4).scale(3.0,3.0),

          Forward_2 +
          HingeRight.changeBeats(1.5) +
          SwingRight.changeBeats(2.5)
      ]),

    AnimatedCall('Peel the Top',
      formation:Formation('Box RH'),
      from:'Right-Hand Box',parts:'3',difficulty: 2,
      paths:[
          Forward_2.changeBeats(3) +
          CastRight.changeBeats(3),

          RunLeft.skew(-2.0,0.0) +
          LeadLeft.changeBeats(3).scale(3.0,3.0)
      ]),

    AnimatedCall('Peel the Top',
      formation:Formation('Box LH'),
      from:'Left-Hand Box',parts:'3',difficulty: 2,
      paths:[
          RunRight.skew(-2.0,0.0) +
          LeadRight.changeBeats(3).scale(3.0,3.0),

          Forward_2.changeBeats(3) +
          CastLeft.changeBeats(3)
      ]),

    AnimatedCall('Peel the Top',
        formation: Formation('', dancers:[
          Dancer.fromData(gender:Gender.BOY,x:-1,y:1,angle:0),
          Dancer.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:270),
        ]),
        from:'T-Bone 1',
        difficulty: 3,
        paths:[
          Forward +
              SwingRight +
              HingeRight,

          RunRight.skew(-2.0,0.0) +
              LeadRight.changeBeats(3).scale(2.0,3.0),
        ]),

    AnimatedCall('Peel the Top',
        formation: Formation('', dancers:[
          Dancer.fromData(gender:Gender.BOY,x:-1,y:-1,angle:180),
          Dancer.fromData(gender:Gender.GIRL,x:-1,y:1,angle:270),
        ]),
        from:'T-Bone 2',
        difficulty: 3,
        paths:[
          RunLeft.skew(-2.0,0.0) +
              LeadLeft.changeBeats(3).scale(2.0,3.0),

          Forward +
              SwingLeft +
              HingeLeft,
        ]),




    AnimatedCall('Peel the Top',
      formation:Formation('Left-Hand Zs'),
      from:'Left-Hand Zs',parts:'2',difficulty: 1,
      taminator: '''
      The very center girls might not start with a handhold if the
      previous call was Girls Fold.  But Peel the Top works just the same.
    ''',
      paths:[
          Forward_2 +
          HingeLeft.changeBeats(1.5).scale(0.5,1.0) +
          SwingLeft.changeBeats(2.5).scale(0.5,0.5),

          RunRight.changeBeats(2) +
          LeadRight.changeBeats(4).scale(1.5,3.0),

          RunRight.changeBeats(2) +
          LeadRight.changeBeats(4).scale(1.5,3.0),

          Forward_2 +
          HingeLeft.changeBeats(1.5).scale(0.5,1.0) +
          SwingLeft.changeBeats(2.5).scale(0.5,0.5)
      ]),

    AnimatedCall('Peel the Top',
      formation:Formation('Right-Hand Zs'),
      from:'Right-Hand Zs',parts:'2',difficulty: 1,
      paths:[
          Forward_2 +
          HingeRight.changeBeats(1.5).scale(0.5,1.0) +
          SwingRight.changeBeats(2.5).scale(0.5,0.5),

          RunLeft.changeBeats(2) +
          LeadLeft.changeBeats(4).scale(1.5,3.0),

          RunLeft.changeBeats(2) +
          LeadLeft.changeBeats(4).scale(1.5,3.0),

          Forward_2 +
          HingeRight.changeBeats(1.5).scale(0.5,1.0) +
          SwingRight.changeBeats(2.5).scale(0.5,0.5)
      ]),

    AnimatedCall('Peel the Top',
      formation:Formation('Ocean Waves RH BGGB'),
      from:'Right-Hand Waves',parts:'2',difficulty: 3,
      paths:[
          Forward.changeBeats(2).scale(2.0,2.0) +
          CastRight.changeBeats(4),

          RunLeft.changeBeats(1).scale(0.5,0.5) +
          ExtendLeft.changeBeats(1).scale(2.0,0.5) +
          LeadLeft.changeBeats(4).scale(3.0,1.5),

          Forward.changeBeats(2).scale(2.0,2.0) +
          CastRight.changeBeats(4),

          RunLeft.changeBeats(1).scale(0.5,0.5) +
          LeadLeft.changeBeats(5).scale(5.0,2.0)
      ]),

    AnimatedCall('Peel the Top',
      formation:Formation('Ocean Waves LH BGGB'),
      from:'Left-Hand Waves',parts:'2',difficulty: 3,
      paths:[
          RunRight.changeBeats(1).scale(0.5,0.5) +
          LeadRight.changeBeats(5).scale(5.0,2.0),

          Forward.changeBeats(2).scale(2.0,2.0) +
          CastLeft.changeBeats(4),

          RunRight.changeBeats(1).scale(0.5,0.5) +
          ExtendRight.changeBeats(1).scale(2.0,0.5) +
          LeadRight.changeBeats(4).scale(3.0,1.5),

          Forward.changeBeats(2).scale(2.0,2.0) +
          CastLeft.changeBeats(4)
      ]),

    AnimatedCall('Peel the Top',
      formation:Formation('Column RH GBGB'),
      from:'Right-Hand Columns',parts:'2',difficulty: 2,
      paths:[
          RunLeft.changeBeats(2).skew(-1.0,0.0) +
          LeadLeft.changeBeats(4).scale(1.5,3.0),

          Forward.changeBeats(2) +
          SwingRight.changeBeats(2.5) +
          HingeRight.changeBeats(1.5).scale(0.5,1.0),

          RunLeft.changeBeats(2).skew(-1.0,0.0) +
          LeadLeft.changeBeats(4).scale(1.5,3.0),

          Forward.changeBeats(2) +
          SwingRight.changeBeats(2.5) +
          HingeRight.changeBeats(1.5).scale(0.5,1.0)
      ]),

    AnimatedCall('Peel the Top',
      formation:Formation('Column LH GBGB'),
      from:'Left-Hand Columns',parts:'2',difficulty: 2,
      paths:[
          Forward.changeBeats(2) +
          SwingLeft.changeBeats(2.5) +
          HingeLeft.changeBeats(1.5).scale(0.5,1.0),

          RunRight.changeBeats(2).skew(-1.0,0.0) +
          LeadRight.changeBeats(4).scale(1.5,3.0),

          Forward.changeBeats(2) +
          SwingLeft.changeBeats(2.5) +
          HingeLeft.changeBeats(1.5).scale(0.5,1.0),

          RunRight.changeBeats(2).skew(-1.0,0.0) +
          LeadRight.changeBeats(4).scale(1.5,3.0)
      ]),

    AnimatedCall('Peel the Top',
      formation:Formation('Quarter Z RH'),
      from:'Right-Hand Z-Tag',parts:'2',difficulty: 2,
      paths:[
          ExtendRight.changeBeats(2).scale(2.0,0.5) +
          SwingRight.changeBeats(2.5).scale(0.5,0.5) +
          HingeRight.scale(1.0,0.5),

          RunLeft.changeBeats(2).scale(0.5,0.25) +
          LeadLeft.changeBeats(4).scale(3.0,1.5),

          ExtendRight.changeBeats(2).scale(2.0,0.5) +
          SwingRight.changeBeats(2.5).scale(0.5,0.5) +
          HingeRight.scale(1.0,0.5),

          RunLeft.changeBeats(2).scale(0.5,0.25) +
          LeadLeft.changeBeats(4).scale(3.0,1.5)
      ]),

    AnimatedCall('Peel the Top',
      formation:Formation('Quarter Z LH'),
      from:'Left-Hand Z-Tag',parts:'2',difficulty: 2,
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          SwingLeft.changeBeats(2.5).scale(0.5,0.5) +
          HingeLeft.scale(1.0,0.5),

          RunRight.changeBeats(2).scale(0.5,0.25) +
          LeadRight.changeBeats(4).scale(3.0,1.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          SwingLeft.changeBeats(2.5).scale(0.5,0.5) +
          HingeLeft.scale(1.0,0.5),

          RunRight.changeBeats(2).scale(0.5,0.25) +
          LeadRight.changeBeats(4).scale(3.0,1.5)
      ]),

    AnimatedCall('Peel the Top',
      formation:Formation('T-Bone LULU'),
      from:'T-Bones 1',parts:'2',difficulty: 3,
      paths:[
          RunLeft.changeBeats(2).skew(-1.0,0.0) +
          LeadLeft.changeBeats(4).scale(1.0,3.0),

          Forward.changeBeats(2) +
          SwingLeft.changeBeats(2.5).skew(0.0,1.0) +
          HingeLeft.changeBeats(1.5),

          RunLeft.changeBeats(2).skew(-1.0,0.0) +
          LeadLeft.changeBeats(4).scale(3.0,3.0),

          Forward.changeBeats(2) +
          SwingLeft.changeBeats(2.5).skew(0.0,-1.0) +
          HingeLeft.changeBeats(1.5)
      ]),

    AnimatedCall('Peel the Top',
      formation:Formation('T-Bone DLDL'),
      from:'T-Bones 2',difficulty: 3,
      paths:[
          RunRight.skew(-2.0,0.0) +
          LeadRight.changeBeats(3).scale(2.0,3.0),

          Forward +
          SwingRight +
          HingeRight,

          RunRight.scale(1.0,0.25).skew(-1.0,0.0) +
          LeadRight.changeBeats(3).scale(3.0,1.5),

          Forward +
          SwingRight.scale(0.75,1.0) +
          HingeRight
      ]),

    AnimatedCall('Peel the Top',
        formation:Formation('T-Bone URUR'),
        from:'T-Bones 3',parts:'2',difficulty: 3,
        paths:[
          Forward.changeBeats(2) +
              SwingRight.changeBeats(2.5).skew(0.0,1.0) +
              HingeRight.changeBeats(1.5),

          RunRight.changeBeats(2).skew(-1.0,0.0) +
              LeadRight.changeBeats(4).scale(3.0,3.0),

          Forward.changeBeats(2) +
              SwingRight.changeBeats(2.5).skew(0.0,-1.0) +
              HingeRight.changeBeats(1.5),

          RunRight.changeBeats(2).skew(-1.0,0.0) +
              LeadRight.changeBeats(4).scale(1.0,3.0),
        ]),

    AnimatedCall('Peel the Top',
        formation:Formation('T-Bone RDRD'),
        from:'T-Bones 4',difficulty: 3,
        paths:[
          RunLeft.skew(-2.0,0.0) +
              LeadLeft.changeBeats(3).scale(2.0,3.0),

          Forward +
              SwingLeft +
              HingeLeft,

          RunLeft.scale(1.0,0.25).skew(-1.0,0.0) +
              LeadLeft.changeBeats(3).scale(3.0,1.5),

          Forward +
              SwingLeft.scale(0.75,1.0) +
              HingeLeft
        ]),

  ];

