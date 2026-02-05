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

  final List<AnimatedCall> PeelAndTrail = [

    AnimatedCall('Peel and Trail',
      formation:Formation('Box RH Compact'),
      from:'Right-Hand Box',
      paths:[
          Forward_1p5.changeBeats(3) +
          SwingRight,

          RunLeft.changeBeats(6).skew(-1.5,0.0)
      ]),

    AnimatedCall('Peel and Trail',
      formation:Formation('Box LH Compact'),
      from:'Left-Hand Box',
      paths:[
          RunRight.changeBeats(6).skew(-1.5,0.0),

          Forward_1p5.changeBeats(3) +
          SwingLeft
      ]),

    AnimatedCall('Peel and Trail',
      formation:Formation('Column RH GBGB'),
      from:'Right-Hand Columns',
      paths:[
          RunLeft.skew(-1.0,0.0),

          Forward +
          SwingRight,

          RunLeft.skew(-1.0,0.0),

          Forward +
          SwingRight
      ]),

    AnimatedCall('Peel and Trail',
      formation:Formation('Column LH GBGB'),
      from:'Left-Hand Columns',
      paths:[
          Forward +
          SwingLeft,

          RunRight.skew(-1.0,0.0),

          Forward +
          SwingLeft,

          RunRight.skew(-1.0,0.0)
      ]),

    AnimatedCall('Peel and Trail',
      formation:Formation('Right-Hand Zs'),
      from:'Right-Hand Zs',
      paths:[
          Forward_2.changeBeats(3) +
          SwingRight,

          RunLeft.changeBeats(6),

          RunLeft.changeBeats(6),

          Forward_2.changeBeats(3) +
          SwingRight
      ]),

    AnimatedCall('Peel and Trail',
      formation:Formation('Left-Hand Zs'),
      from:'Left-Hand Zs',
      paths:[
          Forward_2.changeBeats(3) +
          SwingLeft,

          RunRight.changeBeats(6),

          RunRight.changeBeats(6),

          Forward_2.changeBeats(3) +
          SwingLeft
      ]),

    AnimatedCall('Peel and Trail',
      formation:Formation('Double Pass Thru'),
      from:'Double Pass Thru',
      taminator: '''
      Some dancers in the trailing position perform a partner trade, with the
      beau passing in front of the belle.  This animation shows the movement
      as defined, with the belle passing in front of the beau.
    ''',
      paths:[
          FlipRight.skew(1.0,0.0),

          RunLeft.skew(1.0,0.0),

          RunLeft.skew(-1.0,0.0),

          RunRight.skew(-1.0,0.0)
      ]),

    AnimatedCall('Peel and Trail',
      formation:Formation('Completed Double Pass Thru'),
      from:'Completed Double Pass Thru',
      taminator: '''
      Some dancers in the trailing position perform a partner trade, with the
      beau passing in front of the belle.  This animation shows the movement
      as defined, with the belle passing in front of the beau.
    ''',
      paths:[
          RunRight.skew(-1.0,0.0),

          RunLeft.skew(-1.0,0.0),

          RunLeft.skew(1.0,0.0),

          FlipRight.skew(1.0,0.0)
      ]),

    AnimatedCall('Peel and Trail',
      formation:Formation('Two-Faced Lines RH'),
      from:'Two-Faced Lines',
      paths:[
          Forward +
          FlipRight.skew(1.0,0.5),

          Forward +
          RunLeft.skew(1.0,-0.5),

          FlipRight.skew(-1.0,1.5) +
          Forward,

          FlipLeft.skew(-1.0,-1.5) +
          Forward
      ]),

    AnimatedCall('Peel and Trail',
      formation:Formation('Ocean Waves RH BGBG'),
      from:'Right-Hand Waves',
      paths:[
          ExtendRight.changeBeats(2).scale(2.0,0.25) +
          SwingRight.scale(0.75,0.625),

          FlipLeft.changeBeats(5).skew(-2.0,-1.5),

          ExtendRight.changeBeats(2).scale(2.0,0.25) +
          SwingRight.scale(0.75,0.625),

          FlipLeft.changeBeats(5).skew(-2.0,-1.5)
      ]),

    AnimatedCall('Peel and Trail',
      formation:Formation('Ocean Waves LH BGBG'),
      from:'Left-Hand Waves',
      paths:[
          FlipRight.changeBeats(5).skew(-2.0,1.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.25) +
          SwingLeft.scale(0.75,0.625),

          FlipRight.changeBeats(5).skew(-2.0,1.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.25) +
          SwingLeft.scale(0.75,0.625)
      ]),

    AnimatedCall('Peel and Trail',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:0,y:1,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:2,y:1,angle:0),
  ]),
      from:'Right-Hand Z Facing Out',
      paths:[
          SwingRight,

          RunLeft.skew(-2.0,0.0)
      ]),

    AnimatedCall('Peel and Trail',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:0,y:-1,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:2,y:-1,angle:0),
  ]),
      from:'Left-Hand Z Facing Out',
      paths:[
          SwingLeft,

          RunRight.skew(-2.0,0.0)
      ]),

    AnimatedCall('Peel and Trail',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:0,y:1,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:2,y:-1,angle:180),
  ]),
      from:'Right-Hand Z Facing In',
      paths:[
          RunLeft,

          Forward_2 +
          SwingRight
      ]),

    AnimatedCall('Peel and Trail',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:0,y:-1,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:2,y:1,angle:180),
  ]),
      from:'Left-Hand Z Facing In',
      paths:[
          RunRight,

          Forward_2 +
          SwingLeft
      ]),

    AnimatedCall('Peel and Trail',
      formation:Formation('Quarter Z RH'),
      from:'Right-Hand Z-Tag',
      paths:[
          ExtendRight.changeBeats(2).scale(2.0,0.5) +
          SwingRight.scale(0.5,0.5),

          RunLeft.changeBeats(5).scale(0.5,0.25),

          ExtendRight.changeBeats(2).scale(2.0,0.5) +
          SwingRight.scale(0.5,0.5),

          RunLeft.changeBeats(5).scale(0.5,0.25)
      ]),

    AnimatedCall('Peel and Trail',
      formation:Formation('Quarter Z LH'),
      from:'Left-Hand Z-Tag',
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          SwingLeft.scale(0.5,0.5),

          RunRight.changeBeats(5).scale(0.5,0.25),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          SwingLeft.scale(0.5,0.5),

          RunRight.changeBeats(5).scale(0.5,0.25)
      ]),

    AnimatedCall('Peel and Trail',
      formation:Formation('T-Bone URUR'),
      from:'T-Bones 1',
      paths:[
          Forward +
          SwingRight,

          RunRight.changeBeats(4).skew(-1.0,0.0),

          Forward +
          SwingRight,

          RunRight.changeBeats(4).skew(-1.0,0.0)
      ]),

    AnimatedCall('Peel and Trail',
      formation:Formation('T-Bone LULU'),
      from:'T-Bones 2',
      paths:[
          RunLeft.changeBeats(4).skew(-1.0,0.0),

          Forward +
          SwingLeft,

          RunLeft.changeBeats(4).skew(-1.0,0.0),

          Forward +
          SwingLeft
      ]),

    AnimatedCall('Peel and Trail',
      formation:Formation('T-Bone RDRD'),
      from:'T-Bones 3',
      paths:[
          RunLeft.changeBeats(4).skew(-1.0,0.0),

          Forward_1p5.changeBeats(1) +
          SwingLeft.skew(0.5,0.0),

          UmTurnLeft.changeBeats(4).skew(-1.0,0.0),

          Forward.scale(0.5,1.0) +
          SwingLeft.skew(-0.5,0.0)
      ]),

    AnimatedCall('Peel and Trail',
      formation:Formation('T-Bone DLDL'),
      from:'T-Bones 4',
      paths:[
          RunRight.changeBeats(4).skew(-1.0,0.0),

          Forward_1p5.changeBeats(1) +
          SwingRight.skew(0.5,0.0),

          UmTurnRight.changeBeats(4).skew(-1.0,0.0),

          Forward.scale(0.5,1.0) +
          SwingRight.skew(-0.5,0.0)
      ]),

    AnimatedCall('As Couples Peel and Trail',
      formation:Formation('Two-Faced Lines RH'),
      group:' ',
      paths:[
          ExtendRight.changeBeats(2).scale(2.0,1.5) +
          SwingRight.changeBeats(3).scale(1.5,1.5),

          ExtendRight.changeBeats(2).scale(2.0,0.5) +
          SwingRight.changeBeats(3).scale(0.5,0.5),

          BelleWheel.changeBeats(5).changehands(Hands.GRIPLEFT).skew(-2.0,0.5),

          BeauWheel.changeBeats(5).changehands(Hands.GRIPRIGHT).skew(-2.0,1.5)
      ]),

    AnimatedCall('As Couples Peel and Trail',
      formation:Formation('Two-Faced Lines LH'),
      group:' ',noDisplay: true,
      paths:[
          BelleReverseWheel.changeBeats(5).changehands(Hands.GRIPLEFT).skew(-2.0,-1.5),

          BeauReverseWheel.changeBeats(5).changehands(Hands.GRIPRIGHT).skew(-2.0,-0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          SwingLeft.changeBeats(3).scale(0.5,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,1.5) +
          SwingLeft.changeBeats(3).scale(1.5,1.5)
      ]),

    AnimatedCall('All 8 Peel and Trail',
      formation:Formation('Static MiniWaves RH'),
      group:' ',
      paths:[
          Forward_3 +
          SwingRight,

          RunLeft.changeBeats(6).skew(-3.0,0.0),

          Forward_3 +
          SwingRight,

          RunLeft.changeBeats(6).skew(-3.0,0.0)
      ]),
  ];

