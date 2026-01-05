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

  final List<AnimatedCall> GrandQuarterThru = [

    AnimatedCall('Grand Quarter Thru',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-3,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:-1,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:1,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:3,angle:270),
  ]),
      from:'Right-Hand Columns',parts:'2',
      paths:[
          HingeRight.changeBeats(2).changehands(Hands.GRIPRIGHT).scale(0.5,1.0),

          HingeRight.changeBeats(2).changehands(Hands.GRIPRIGHT).scale(0.5,1.0) +
          SwingLeft.changeBeats(4).changehands(Hands.GRIPLEFT).scale(0.75,0.5),

          HingeRight.changeBeats(2).changehands(Hands.GRIPRIGHT).scale(0.5,1.0) +
          SwingLeft.changeBeats(4).changehands(Hands.GRIPLEFT).scale(0.75,0.5),

          HingeRight.changeBeats(2).changehands(Hands.GRIPRIGHT).scale(0.5,1.0) +
          SwingLeft.changeBeats(4).changehands(Hands.GRIPLEFT).scale(0.75,0.5)
      ]),

    AnimatedCall('Grand Quarter Thru',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-3,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:0,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:3,angle:270),
  ]),
      from:'Right-Hand Columns of 6',parts:'2',
      paths:[
          HingeRight.changeBeats(2).changehands(Hands.GRIPRIGHT).scale(0.75,1.0),

          HingeRight.changeBeats(2).changehands(Hands.GRIPRIGHT).scale(0.75,1.0) +
          SwingLeft.changeBeats(4).changehands(Hands.GRIPLEFT).scale(0.75,0.75),

          HingeRight.changeBeats(2).changehands(Hands.GRIPRIGHT).scale(0.75,1.0) +
          SwingLeft.changeBeats(4).changehands(Hands.GRIPLEFT).scale(0.75,0.75)
      ]),

    AnimatedCall('Grand Quarter Thru',
      formation:Formation('Diamonds Facing PTP'),
      from:'Facing Point-to-Point Diamonds',parts:'2',
      paths:[
          HingeRight.changeBeats(2),

          HingeRight.changeBeats(2),

          HingeRight.changeBeats(2).scale(0.5,1.0) +
          SwingLeft.scale(0.75,0.75),

          Stand.changeBeats(2) +
          SwingLeft.scale(0.75,0.75)
      ]),

    AnimatedCall('Grand Left Quarter Thru',
      formation:Formation('Column LH GBGB'),
      from:'Left-Hand Columns',parts:'2',
      paths:[
          HingeLeft.changeBeats(2).changehands(Hands.GRIPLEFT).scale(0.5,1.0) +
          SwingRight.changeBeats(4).changehands(Hands.GRIPRIGHT).scale(0.75,0.5),

          HingeLeft.changeBeats(2).changehands(Hands.GRIPLEFT).scale(0.5,1.0) +
          SwingRight.changeBeats(4).changehands(Hands.GRIPRIGHT).scale(0.75,0.5),

          HingeLeft.changeBeats(2).changehands(Hands.GRIPLEFT).scale(0.5,1.0) +
          SwingRight.changeBeats(4).changehands(Hands.GRIPRIGHT).scale(0.75,0.5),

          HingeLeft.changeBeats(2).changehands(Hands.GRIPLEFT).scale(0.5,1.0)
      ]),

    AnimatedCall('Grand Left Quarter Thru',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-3,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:0,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:3,angle:90),
  ]),
      from:'Left-Hand Columns of 6',
      paths:[
          HingeLeft.changeBeats(2).changehands(Hands.GRIPLEFT).scale(0.75,1.0) +
          SwingRight.changeBeats(4).changehands(Hands.GRIPRIGHT).scale(0.75,0.75),

          HingeLeft.changeBeats(2).changehands(Hands.GRIPLEFT).scale(0.75,1.0) +
          SwingRight.changeBeats(4).changehands(Hands.GRIPRIGHT).scale(0.75,0.75),

          HingeLeft.changeBeats(2).changehands(Hands.GRIPLEFT).scale(0.75,1.0)
      ]),

    AnimatedCall('Grand Left Quarter Thru',
      formation:Formation('Diamonds Facing LH PTP'),
      from:'Facing Point-to-Point Diamonds',parts:'2',
      paths:[
          HingeLeft.changeBeats(2).scale(0.5,1.0) +
          SwingRight.scale(0.75,0.75),

          HingeLeft.changeBeats(2),

          HingeLeft.changeBeats(2),

          Stand.changeBeats(2) +
          SwingRight.scale(0.75,0.75)
      ]),

    AnimatedCall('Grand 3/4 Thru',
      formation:Formation('Column RH GBGB'),
      from:'Right-Hand Columns',parts:'4.5',
      paths:[
          HingeRight.changehands(Hands.GRIPRIGHT).scale(0.5,1.0) +
          SwingRight.changehands(Hands.GRIPRIGHT).scale(0.75,0.5) +
          SwingLeft.changehands(Hands.GRIPLEFT).scale(0.75,0.5),

          HingeRight.changehands(Hands.GRIPRIGHT).scale(0.5,1.0) +
          SwingRight.changehands(Hands.GRIPRIGHT).scale(0.75,0.5) +
          SwingLeft.changehands(Hands.GRIPLEFT).scale(0.75,0.5),

          HingeRight.changehands(Hands.GRIPRIGHT).scale(0.5,1.0) +
          SwingRight.changehands(Hands.GRIPRIGHT).scale(0.75,0.5) +
          SwingLeft.changehands(Hands.GRIPLEFT).scale(0.75,0.5),

          HingeRight.changehands(Hands.GRIPRIGHT).scale(0.5,1.0) +
          SwingRight.changehands(Hands.GRIPRIGHT).scale(0.75,0.5)
      ]),

    AnimatedCall('Grand 3/4 Thru',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-3,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:0,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:3,angle:270),
  ]),
      from:'Right-Hand Columns of 6',parts:'4.5',
      paths:[
          HingeRight.changehands(Hands.GRIPRIGHT).scale(0.75,1.0) +
          SwingRight.changehands(Hands.RIGHT).scale(0.75,0.75) +
          SwingLeft.changehands(Hands.GRIPLEFT).scale(0.75,0.75),

          HingeRight.changehands(Hands.GRIPRIGHT).scale(0.75,1.0) +
          SwingRight.changehands(Hands.RIGHT).scale(0.75,0.75) +
          SwingLeft.changehands(Hands.GRIPLEFT).scale(0.75,0.75),

          HingeRight.changehands(Hands.GRIPRIGHT).scale(0.75,1.0) +
          SwingRight.changehands(Hands.RIGHT).scale(0.75,0.75)
      ]),

    AnimatedCall('Grand 3/4 Thru',
      formation:Formation('Diamonds Facing PTP'),
      from:'Facing Point-to-Point Diamonds',parts:'4.5',
      paths:[
          SwingRight +
          HingeRight.scale(0.5,1.0) +
          SwingLeft.scale(0.75,0.75),

          SwingRight +
          HingeRight,

          SwingRight +
          HingeRight,

          Stand.changeBeats(4.5) +
          SwingLeft.scale(0.75,0.75)
      ]),

    AnimatedCall('Grand Left 3/4 Thru',
      formation:Formation('Column LH GBGB'),
      from:'Left-Hand Columns',parts:'4.5',
      paths:[
          HingeLeft.changehands(Hands.GRIPLEFT).scale(0.5,1.0) +
          SwingLeft.changehands(Hands.GRIPLEFT).scale(0.75,0.5),

          HingeLeft.changehands(Hands.GRIPLEFT).scale(0.5,1.0) +
          SwingLeft.changehands(Hands.GRIPLEFT).scale(0.75,0.5) +
          SwingRight.changehands(Hands.GRIPRIGHT).scale(0.75,0.5),

          HingeLeft.changehands(Hands.GRIPLEFT).scale(0.5,1.0) +
          SwingLeft.changehands(Hands.GRIPLEFT).scale(0.75,0.5) +
          SwingRight.changehands(Hands.GRIPRIGHT).scale(0.75,0.5),

          HingeLeft.changehands(Hands.GRIPLEFT).scale(0.5,1.0) +
          SwingLeft.changehands(Hands.GRIPLEFT).scale(0.75,0.5) +
          SwingRight.changehands(Hands.GRIPRIGHT).scale(0.75,0.5)
      ]),

    AnimatedCall('Grand Left 3/4 Thru',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-3,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:0,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:3,angle:90),
  ]),
      from:'Left-Hand Columns of 6',parts:'4.5',
      paths:[
          HingeLeft.changeBeats(2).changehands(Hands.GRIPLEFT).scale(0.75,1.0) +
          SwingLeft.scale(0.75,0.75),

          HingeLeft.changeBeats(2).changehands(Hands.GRIPLEFT).scale(0.75,1.0) +
          SwingLeft.scale(0.75,0.75) +
          SwingRight.changeBeats(4).changehands(Hands.GRIPRIGHT).scale(0.75,0.75),

          HingeLeft.changeBeats(2).changehands(Hands.GRIPLEFT).scale(0.75,1.0) +
          SwingLeft.scale(0.75,0.75) +
          SwingRight.changeBeats(4).changehands(Hands.GRIPRIGHT).scale(0.75,0.75)
      ]),

    AnimatedCall('Grand Left 3/4 Thru',
      formation:Formation('Diamonds Facing LH PTP'),
      from:'Facing Point-to-Point Diamonds',parts:'4.5',
      paths:[
          SwingLeft +
          HingeLeft,

          SwingLeft +
          HingeLeft,

          SwingLeft +
          HingeLeft.scale(0.5,1.0) +
          SwingRight.scale(0.75,0.75),

          Stand.changeBeats(4.5) +
          SwingRight.scale(0.75,0.75)
      ]),
  ];

