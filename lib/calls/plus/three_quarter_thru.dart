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

final List<AnimatedCall> ThreeQuarterThru = [

  AnimatedCall('3/4 Thru',
      formation:Formation('Box RH'),
      from:'Right-Hand Box',parts:'4.5',
      paths:[
        CastRight,

        CastRight +
            SwingLeft
      ]),

  AnimatedCall('3/4 Thru',
      formation:Formation('Ocean Waves RH BGGB'),
      from:'Ocean Waves',parts:'4.5',
      paths:[
        CastRight,

        CastRight +
            SwingLeft,

        CastRight,

        CastRight +
            SwingLeft
      ]),

  AnimatedCall('3/4 Thru',
      formation:Formation('Column RH GBGB'),
      from:'Columns',parts:'4.5',
      paths:[
        CastRight.scale(0.5,1.0) +
            SwingLeft.scale(0.5,0.5),

        CastRight.scale(0.5,1.0),

        CastRight.scale(0.5,1.0) +
            SwingLeft.scale(0.5,0.5),

        CastRight.scale(0.5,1.0)
      ]),

  AnimatedCall('3/4 Thru',
      formation:Formation('Alamo Wave'),
      from:'Alamo Ring',parts:'4.6',
      paths:[
        SxtnthLeft.changehands(Hands.RIGHT) +
            HingeRight.skew(0.45,0.0) +
            SwingRight,

        SxtnthRight.changehands(Hands.RIGHT) +
            HingeRight.skew(-0.45,0.0) +
            SwingRight +
            SwingLeft,

        SxtnthLeft.changehands(Hands.RIGHT) +
            HingeRight.skew(0.45,0.0) +
            SwingRight,

        SxtnthRight.changehands(Hands.RIGHT) +
            HingeRight.skew(-0.45,0.0) +
            SwingRight +
            SwingLeft
      ]),

  AnimatedCall('3/4 Thru',
      formation:Formation('Thar RH Boys'),
      from:'Thar',parts:'1.5',
      paths:[
        SwingRight + HingeRight + SwingLeft,
        Stand.changeBeats(4.5) + SwingLeft,
        SwingRight + HingeRight + SwingLeft,
        Stand.changeBeats(4.5) + SwingLeft,
      ]),


  AnimatedCall('3/4 Thru',
      formation:Formation('Thar LH Boys'),
      from:'Wrong Way Thar',parts:'1.875',
      paths:[
        SwingRight +
            HingeRight.skew(0,0.414) +
            EighthRight +
            SwingLeft +
            SxtnthRight,
        SwingRight +
            HingeRight.scale(1,1.414) +
            EighthLeft +
            SwingLeft +
            SxtnthLeft,
        SwingRight +
            HingeRight.skew(0,0.414) +
            EighthRight +
            SwingLeft +
            SxtnthRight,
        SwingRight +
            HingeRight.scale(1,1.414) +
            EighthLeft +
            SwingLeft +
            SxtnthLeft,
      ]),


  AnimatedCall('3/4 Thru',
      formation:Formation('Diamonds Facing Girl Points'),
      from:'Facing Diamonds',parts:'4.5',
      paths:[
        CastRight +
            SwingLeft,

        Stand.changeBeats(4.5) +
            SwingLeft,

        CastRight +
            SwingLeft,

        Stand.changeBeats(4.5) +
            SwingLeft
      ]),

  AnimatedCall('3/4 Thru',
      formation:Formation('Diamonds Facing PTP'),
      from:'Facing Point-to-Point Diamonds',parts:'4.5',
      paths:[
        HingeRight.scale(0.67,1.0) +
            SwingRight.scale(0.67,0.67) +
            SwingLeft.scale(0.67,0.67),

        Stand.changeBeats(4.5) +
            SwingLeft.scale(0.67,0.67),

        HingeRight.scale(0.67,1.0) +
            SwingRight.scale(0.67,0.67) +
            SwingLeft.scale(0.67,0.67),

        Stand.changeBeats(4.5) +
            SwingLeft.scale(0.67,0.67)
      ]),

  AnimatedCall('Centers 3/4 Thru',
      formation:Formation('Ocean Waves LH BGGB'),
      from:'Left-Hand Waves',parts:'4.5',
      paths:[
        Path(),

        CastRight,

        CastRight +
            SwingLeft,

        Path()
      ]),

  AnimatedCall('Left 3/4 Thru',
      formation:Formation('Box LH'),
      from:'Left-Hand Box',parts:'4.5',
      paths:[
        CastLeft +
            SwingRight,

        CastLeft
      ]),

  AnimatedCall('Left 3/4 Thru',
      formation:Formation('Ocean Waves LH BGGB'),
      from:'Left-Hand Waves',parts:'4.5',
      paths:[
        CastLeft +
            SwingRight,

        CastLeft,

        CastLeft +
            SwingRight,

        CastLeft
      ]),

  AnimatedCall('Left 3/4 Thru',
      formation:Formation('Column LH GBGB'),
      from:'Left-Hand Columns',parts:'1.5',
      paths:[
        CastLeft.scale(0.5,1.0),

        CastLeft.scale(0.5,1.0) +
            SwingRight.scale(0.5,0.5),

        CastLeft.scale(0.5,1.0),

        CastLeft.scale(0.5,1.0) +
            SwingRight.scale(0.5,0.5)
      ]),

  AnimatedCall('Left 3/4 Thru',
      formation:Formation('Alamo Wave'),
      from:'Alamo Ring',parts:'1.6',
      paths:[
        SxtnthRight.changehands(Hands.LEFT) +
            HingeLeft.skew(0.45,0.0) +
            SwingLeft,

        SxtnthLeft.changehands(Hands.LEFT) +
            HingeLeft.skew(-0.45,0.0) +
            SwingLeft +
            SwingRight,

        SxtnthRight.changehands(Hands.LEFT) +
            HingeLeft.skew(0.45,0.0) +
            SwingLeft,

        SxtnthLeft.changehands(Hands.LEFT) +
            HingeLeft.skew(-0.45,0.0) +
            SwingLeft +
            SwingRight
      ]),

  AnimatedCall('Left 3/4 Thru',
      formation:Formation('Thar RH Boys'),
      from:'Thar',parts:'1.5',
      paths:[
        SwingLeft +
            HingeLeft.skew(0,-0.414) +
            EighthLeft +
            SwingRight +
            SxtnthLeft,
        SwingLeft +
            HingeLeft.scale(1,1.414) +
            EighthRight +
            SwingRight +
            SxtnthRight,
        SwingLeft +
            HingeLeft.skew(0,-0.414) +
            EighthLeft +
            SwingRight +
            SxtnthLeft,
        SwingLeft +
            HingeLeft.scale(1,1.414) +
            EighthRight +
            SwingRight +
            SxtnthRight,
      ]),

  AnimatedCall('Left 3/4 Thru',
      formation:Formation('Thar LH Boys'),
      from:'Wrong Way Thar',parts:'1.875',
      paths:[
        SwingLeft + HingeLeft + SwingRight,
        Stand.changeBeats(4.5) + SwingRight,
        SwingLeft + HingeLeft + SwingRight,
        Stand.changeBeats(4.5) + SwingRight,
      ]),

  AnimatedCall('Left 3/4 Thru',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:0,y:-3,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:-3,y:-2,angle:90),
        Dancer.fromData(gender:Gender.BOY,x:0,y:-1,angle:180),
        Dancer.fromData(gender:Gender.GIRL,x:3,y:-2,angle:270),
      ]),
      from:'Facing Diamonds',parts:'4.5',
      paths:[
        CastLeft +
            SwingRight,

        Stand.changeBeats(4.5) +
            SwingRight,

        CastLeft +
            SwingRight,

        Stand.changeBeats(4.5) +
            SwingRight
      ]),

  AnimatedCall('Left 3/4 Thru',
      formation:Formation('Diamonds Facing LH PTP'),
      from:'Facing Point-to-Point Diamonds',parts:'4.5',
      paths:[
        HingeLeft.scale(0.67,1.0) +
            SwingLeft.scale(0.67,0.67) +
            SwingRight.scale(0.67,0.67),

        Stand.changeBeats(4.5) +
            SwingRight.scale(0.67,0.67),

        HingeLeft.scale(0.67,1.0) +
            SwingLeft.scale(0.67,0.67) +
            SwingRight.scale(0.67,0.67),

        Stand.changeBeats(4.5) +
            SwingRight.scale(0.67,0.67)
      ]),

];

