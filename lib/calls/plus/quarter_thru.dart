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

  final List<AnimatedCall> QuarterThru = [

    AnimatedCall('Quarter Thru',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:1,y:2,angle:270),
        Dancer.fromData(gender:Gender.GIRL,x:-1,y:2,angle:90),
  ]),
      from:'Right-Hand Box',parts:'1.5',
      paths:[
          HingeRight +
          SwingLeft,

          HingeRight
      ]),

    AnimatedCall('Quarter Thru',
      formation:Formation('Box RH Close'),
      from:'Right-Hand Box Close',parts:'1.5',noDisplay: true,
      paths:[
          HingeRight.scale(0.5,1.0) +
          SwingLeft.scale(0.5,0.5),

          HingeRight.scale(0.5,1.0)
      ]),

    AnimatedCall('Quarter Thru',
      formation:Formation('Ocean Waves RH BGGB'),
      from:'Right-Hand Waves',parts:'1.5',
      paths:[
          HingeRight +
          SwingLeft,

          HingeRight,

          HingeRight +
          SwingLeft,

          HingeRight
      ]),

    AnimatedCall('Quarter Thru',
      formation:Formation('Column RH GBGB'),
      from:'Columns',parts:'1.5',
      paths:[
          HingeRight.scale(0.5,1.0),

          HingeRight.scale(0.5,1.0) +
          SwingLeft.scale(0.5,0.5),

          HingeRight.scale(0.5,1.0),

          HingeRight.scale(0.5,1.0) +
          SwingLeft.scale(0.5,0.5)
      ]),

    AnimatedCall('Quarter Thru',
      formation:Formation('Alamo Wave'),
      from:'Alamo Ring',parts:'1.6',
      paths:[
          SxtnthLeft.changehands(Hands.RIGHT) +
          HingeRight.skew(0.45,0.0) +
          SwingLeft,

          SxtnthRight.changehands(Hands.RIGHT) +
          HingeRight.skew(-0.45,0.0),

          SxtnthLeft.changehands(Hands.RIGHT) +
          HingeRight.skew(0.45,0.0) +
          SwingLeft,

          SxtnthRight.changehands(Hands.RIGHT) +
          HingeRight.skew(-0.45,0.0)
      ]),

    AnimatedCall('Quarter Thru',
        formation:Formation('Thar RH Boys'),
        from:'Thar',parts:'1.5',
        paths:[
          HingeRight + SwingLeft,
          Stand.changeBeats(1.5) + SwingLeft,
          HingeRight + SwingLeft,
          Stand.changeBeats(1.5) + SwingLeft,
        ]),


    AnimatedCall('Quarter Thru',
        formation:Formation('Thar LH Boys'),
        from:'Wrong Way Thar',parts:'1.875',
        paths:[
          HingeRight.scale(1,1.414) +
              EighthLeft +
              SwingLeft +
              SxtnthLeft,
          HingeRight.skew(0,0.414) +
              EighthRight +
              SwingLeft +
              SxtnthRight,
          HingeRight.scale(1,1.414) +
              EighthLeft +
              SwingLeft +
              SxtnthLeft,
          HingeRight.skew(0,0.414) +
              EighthRight +
              SwingLeft +
              SxtnthRight
        ]),

    AnimatedCall('Quarter Thru',
      formation:Formation('Diamonds Facing Girl Points'),
      from:'Facing Diamonds',parts:'1.5',
      paths:[
          HingeRight +
          SwingLeft,

          Stand.changeBeats(1.5) +
          SwingLeft,

          HingeRight +
          SwingLeft,

          Stand.changeBeats(1.5) +
          SwingLeft
      ]),

    AnimatedCall('Quarter Thru',
      formation:Formation('Diamonds Facing PTP'),
      from:'Facing Point-to-Point Diamonds',parts:'1.5',
      paths:[
          HingeRight.scale(0.67,1.0) +
          SwingLeft.scale(0.67,0.67),

          Stand.changeBeats(1.5) +
          SwingLeft.scale(0.67,0.67),

          HingeRight.scale(0.67,1.0) +
          SwingLeft.scale(0.67,0.67),

          Stand.changeBeats(1.5) +
          SwingLeft.scale(0.67,0.67)
      ]),

    AnimatedCall('Centers Quarter Thru',
      formation:Formation('Ocean Waves LH BGGB'),
      from:'Left-Hand Waves',parts:'1.5',
      paths:[
          Path(),

          HingeRight +
          SwingLeft,

          HingeRight,

          Path()
      ]),



    AnimatedCall('Left Quarter Thru',
      formation:Formation('Box LH'),
      from:'Left-Hand Box',parts:'1.5',
      paths:[
          HingeLeft,

          HingeLeft +
          SwingRight
      ]),

    AnimatedCall('Left Quarter Thru',
      formation:Formation('Box LH Close'),
      from:'Left-Hand Box Close',parts:'1.5',noDisplay: true,
      paths:[
          HingeLeft.scale(0.5,1.0),

          HingeLeft.scale(0.5,1.0) +
          SwingRight.scale(0.5,0.5)
      ]),

    AnimatedCall('Left Quarter Thru',
      formation:Formation('Ocean Waves LH BGGB'),
      from:'Left-Hand Waves',parts:'1.5',
      paths:[
          HingeLeft,

          HingeLeft +
          SwingRight,

          HingeLeft,

          HingeLeft +
          SwingRight
      ]),

    AnimatedCall('Left Quarter Thru',
      formation:Formation('Column LH GBGB'),
      from:'Left-Hand Columns',parts:'1.5',
      paths:[
          HingeLeft.scale(0.5,1.0) +
          SwingRight.scale(0.5,0.5),

          HingeLeft.scale(0.5,1.0),

          HingeLeft.scale(0.5,1.0) +
          SwingRight.scale(0.5,0.5),

          HingeLeft.scale(0.5,1.0)
      ]),

    AnimatedCall('Left Quarter Thru',
      formation:Formation('Alamo Wave'),
      from:'Alamo Ring',parts:'1.6',
      paths:[
          SxtnthRight.changehands(Hands.LEFT) +
          HingeLeft.skew(0.45,0.0) +
          SwingRight,

          SxtnthLeft.changehands(Hands.LEFT) +
          HingeLeft.skew(-0.45,0.0),

          SxtnthRight.changehands(Hands.LEFT) +
          HingeLeft.skew(0.45,0.0) +
          SwingRight,

          SxtnthLeft.changehands(Hands.LEFT) +
          HingeLeft.skew(-0.45,0.0)
      ]),

    AnimatedCall('Left Quarter Thru',
        formation:Formation('Thar RH Boys'),
        from:'Thar',parts:'1.5',
        paths:[
          HingeLeft.scale(1,1.414) +
              EighthRight +
              SwingRight +
              SxtnthRight,
          HingeLeft.skew(0,-0.414) +
              EighthLeft +
              SwingRight +
              SxtnthLeft,
          HingeLeft.scale(1,1.414) +
              EighthRight +
              SwingRight +
              SxtnthRight,
          HingeLeft.skew(0,-0.414) +
              EighthLeft +
              SwingRight +
              SxtnthLeft,
        ]),

    AnimatedCall('Left Quarter Thru',
        formation:Formation('Thar LH Boys'),
        from:'Wrong Way Thar',parts:'1.875',
        paths:[
          HingeLeft + SwingRight,
          Stand.changeBeats(1.5) + SwingRight,
          HingeLeft + SwingRight,
          Stand.changeBeats(1.5) + SwingRight,
        ]),


    AnimatedCall('Left Quarter Thru',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:0,y:-3,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:-3,y:-2,angle:90),
        Dancer.fromData(gender:Gender.BOY,x:0,y:-1,angle:180),
        Dancer.fromData(gender:Gender.GIRL,x:3,y:-2,angle:270),
  ]),
      from:'Facing Diamonds',parts:'1.5',
      paths:[
          HingeLeft +
          SwingRight,

          Stand.changeBeats(1.5) +
          SwingRight,

          HingeLeft +
          SwingRight,

          Stand.changeBeats(1.5) +
          SwingRight
      ]),

    AnimatedCall('Left Quarter Thru',
      formation:Formation('Diamonds Facing LH PTP'),
      from:'Facing Point-to-Point Diamonds',parts:'1.5',
      paths:[
          HingeLeft.scale(0.67,1.0) +
          SwingRight.scale(0.67,0.67),

          Stand.changeBeats(1.5) +
          SwingRight.scale(0.67,0.67),

          HingeLeft.scale(0.67,1.0) +
          SwingRight.scale(0.67,0.67),

          Stand.changeBeats(1.5) +
          SwingRight.scale(0.67,0.67)
      ]),

  ];

