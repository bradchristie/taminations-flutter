/*

  Taminations Square Dance Animations
  Copyright (C) 2023 Brad Christie

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
import '../../formation.dart';
import '../../moves.dart';

  final List<AnimatedCall> Q14Mix = [

    AnimatedCall('1/4 Mix',
      formation:Formation('Box RH Compact'),
      from:'Right-Hand Box',parts:'1.5;4',
      paths:[
          HingeRight.skew(-0.5,0.0) +
          RunLeft.changeBeats(4).scale(1.0,2.0),

          HingeRight.skew(0.5,0.0) +
          DodgeRight.changeBeats(4) +
          SwingRight
      ]),

    AnimatedCall('1/4 Mix',
      formation:Formation('Diamond RH'),
      from:'Right-Hand Diamond',parts:'1.5;4',
      paths:[
          Stand.changeBeats(1.5) +
          DodgeRight.changeBeats(4) +
          SwingRight,

          HingeRight +
          RunRight.changeBeats(4).scale(1.0,2.0)
      ]),

    AnimatedCall('1/4 Mix',
      formation:Formation('Diamond Facing RH'),
      from:'Facing Diamond',parts:'1.5;4',
      paths:[
          Stand.changeBeats(1.5) +
          DodgeLeft.changeBeats(4) +
          SwingLeft,

          HingeRight +
          RunRight.changeBeats(4).scale(1.0,2.0)
      ]),

    AnimatedCall('1/4 Mix',
      formation:Formation('Ocean Waves RH BGBG'),
      from:'Right-Hand Waves',parts:'1.5;4',
      paths:[
          HingeRight +
          RunLeft.changeBeats(4).scale(1.0,2.0),

          HingeRight +
          DodgeRight.changeBeats(4) +
          SwingRight,

          HingeRight +
          RunLeft.changeBeats(4).scale(1.0,2.0),

          HingeRight +
          DodgeRight.changeBeats(4) +
          SwingRight
      ]),

    AnimatedCall('1/4 Mix',
      formation:Formation('Ocean Waves LH BGGB'),
      from:'Left-Hand Waves',parts:'1.5;4',
      paths:[
          Path(),

          HingeRight +
          RunLeft.changeBeats(4).scale(1.0,2.0),

          HingeRight +
          DodgeRight.changeBeats(4) +
          SwingRight,

          Path()
      ]),

    AnimatedCall('1/4 Mix',
      formation:Formation('Column RH GBGB'),
      from:'Right-Hand Columns',parts:'1.5;3',
      paths:[
          HingeRight.scale(0.5,1.0) +
          DodgeRight.scale(1.0,0.5) +
          SwingRight.scale(0.5,0.5),

          HingeRight.scale(0.5,1.0) +
          RunLeft,

          HingeRight.scale(0.5,1.0) +
          DodgeRight.scale(1.0,0.5) +
          SwingRight.scale(0.5,0.5),

          HingeRight.scale(0.5,1.0) +
          RunLeft
      ]),

    AnimatedCall('1/4 Mix',
      formation:Formation('Diamonds RH Girl Points'),
      from:'Right-Hand Diamonds',parts:'1.5;4',
      paths:[
          HingeRight +
          RunRight.changeBeats(4).scale(1.0,2.0),

          Stand.changeBeats(1.5) +
          DodgeRight.changeBeats(4) +
          SwingRight,

          HingeRight +
          RunRight.changeBeats(4).scale(1.0,2.0),

          Stand.changeBeats(1.5) +
          DodgeRight.changeBeats(4) +
          SwingRight
      ]),

    AnimatedCall('1/4 Mix',
      formation:Formation('Diamonds Facing Girl Points'),
      from:'Facing Diamonds',parts:'1.5;4',
      paths:[
          HingeRight +
          RunRight.changeBeats(4).scale(1.0,2.0),

          Stand.changeBeats(1.5) +
          DodgeLeft.changeBeats(4) +
          SwingLeft,

          HingeRight +
          RunRight.changeBeats(4).scale(1.0,2.0),

          Stand.changeBeats(1.5) +
          DodgeLeft.changeBeats(4) +
          SwingLeft
      ]),

    AnimatedCall('1/4 Mix',
      formation:Formation('Diamonds RH PTP Girl Points'),
      from:'Point-to-Point Diamonds',parts:'4.5;4',
      paths:[
          HingeRight +
          RunRight.changeBeats(4).scale(1.0,0.75),

          Stand.changeBeats(1.5) +
          DodgeRight.changeBeats(4).scale(1.0,0.25) +
          SwingRight.scale(0.5,0.5),

          HingeRight +
          RunRight.changeBeats(4).scale(1.0,1.75),

          Stand.changeBeats(1.5) +
          DodgeRight.changeBeats(4).scale(1.0,1.25) +
          SwingRight.scale(0.5,0.5)
      ]),

    AnimatedCall('1/4 Mix',
      formation:Formation('Alamo Wave'),
      from:'Alamo Ring',parts:'1.5;4',
      paths:[
          SxtnthLeft +
          HingeRight +
          RunLeft.changeBeats(4).scale(1.0,2.25),

          SxtnthRight +
          HingeRight +
          DodgeRight.changeBeats(4).scale(1.0,1.2) +
          SwingRight,

          SxtnthLeft +
          HingeRight +
          RunLeft.changeBeats(4).scale(1.0,2.25),

          SxtnthRight +
          HingeRight +
          DodgeRight.changeBeats(4).scale(1.0,1.2) +
          SwingRight
      ]),

    AnimatedCall('Left 1/4 Mix',
      formation:Formation('Box LH'),
      from:'Left-Hand Box',parts:'1.5;4',
      paths:[
          HingeLeft +
          DodgeLeft.changeBeats(4) +
          SwingLeft,

          HingeLeft +
          RunRight.changeBeats(4).scale(1.0,2.0)
      ]),

    AnimatedCall('Left 1/4 Mix',
      formation:Formation('Ocean Waves RH BGGB'),
      from:'Right-Hand Waves',parts:'1.5;4',
      paths:[
          Path(),

          HingeLeft +
          DodgeLeft.changeBeats(4) +
          SwingLeft,

          HingeLeft +
          RunRight.changeBeats(4).scale(1.0,2.0),

          Path()
      ]),

    AnimatedCall('Left 1/4 Mix',
      formation:Formation('Ocean Waves LH BGBG'),
      from:'Left-Hand Waves',parts:'1.5;4',
      paths:[
          HingeLeft +
          DodgeLeft.changeBeats(4) +
          SwingLeft,

          HingeLeft +
          RunRight.changeBeats(4).scale(1.0,2.0),

          HingeLeft +
          DodgeLeft.changeBeats(4) +
          SwingLeft,

          HingeLeft +
          RunRight.changeBeats(4).scale(1.0,2.0)
      ]),

    AnimatedCall('Left 1/4 Mix',
      formation:Formation('Column LH GBGB'),
      from:'Left-Hand Columns',parts:'1.5;3',
      paths:[
          HingeLeft.scale(0.5,1.0) +
          RunRight,

          HingeLeft.scale(0.5,1.0) +
          DodgeLeft.scale(1.0,0.5) +
          SwingLeft.scale(0.5,0.5),

          HingeLeft.scale(0.5,1.0) +
          RunRight,

          HingeLeft.scale(0.5,1.0) +
          DodgeLeft.scale(1.0,0.5) +
          SwingLeft.scale(0.5,0.5)
      ]),

    AnimatedCall('Left 1/4 Mix',
      formation:Formation('Diamonds LH Girl Points'),
      from:'Left-Hand Diamonds',parts:'1.5;4',
      paths:[
          HingeLeft +
          RunLeft.changeBeats(4).scale(1.0,2.0),

          Stand.changeBeats(1.5) +
          DodgeLeft.changeBeats(4) +
          SwingLeft,

          HingeLeft +
          RunLeft.changeBeats(4).scale(1.0,2.0),

          Stand.changeBeats(1.5) +
          DodgeLeft.changeBeats(4) +
          SwingLeft
      ]),

    AnimatedCall('Left 1/4 Mix',
      formation:Formation('Alamo Wave'),
      from:'Alamo Ring',parts:'1.5;4',
      paths:[
          SxtnthRight +
          HingeLeft +
          RunRight.changeBeats(4).scale(1.0,2.25),

          SxtnthLeft +
          HingeLeft +
          DodgeLeft.changeBeats(4).scale(1.0,1.2) +
          SwingLeft,

          SxtnthRight +
          HingeLeft +
          RunRight.changeBeats(4).scale(1.0,2.25),

          SxtnthLeft +
          HingeLeft +
          DodgeLeft.changeBeats(4).scale(1.0,1.2) +
          SwingLeft
      ]),

    AnimatedCall('Grand 1/4 Mix',
      formation:Formation('Column RH GBGB'),
      group:' ',parts:'1.5;3',
      paths:[
          HingeRight.scale(0.5,1.0) +
          DodgeRight.scale(1.0,0.5) +
          SwingRight.scale(0.5,0.5),

          HingeRight.scale(0.5,1.0) +
          RunLeft,

          HingeRight.scale(0.5,1.0) +
          RunLeft +
          SwingRight.scale(0.5,0.5),

          HingeRight.scale(0.5,1.0) +
          RunLeft +
          SwingRight.scale(0.5,0.5)
      ]),

    AnimatedCall('Grand Left 1/4 Mix',
      formation:Formation('Column LH GBGB'),
      group:' ',parts:'1.5;3',
      paths:[
          HingeLeft.scale(0.5,1.0) +
          RunRight +
          SwingLeft.scale(0.5,0.5),

          HingeLeft.scale(0.5,1.0) +
          RunRight +
          SwingLeft.scale(0.5,0.5),

          HingeLeft.scale(0.5,1.0) +
          RunRight,

          HingeLeft.scale(0.5,1.0) +
          DodgeLeft.scale(1.0,0.5) +
          SwingLeft.scale(0.5,0.5)
      ]),

    AnimatedCall('As Couples 1/4 Mix',
      formation:Formation('Two-Faced Lines RH'),
      group:'  ',parts:'2;3',
      paths:[
          HingeRight.changeBeats(2).scale(1.5,3.0) +
          RunLeft.changeBeats(6).changehands(6).scale(2.0,1.5),

          HingeRight.changeBeats(2).changehands(3).scale(0.5,1.0) +
          RunLeft.changeBeats(6).changehands(5).scale(3.0,2.5),

          HingeRight.changeBeats(2).changehands(3).scale(0.5,1.0) +
          DodgeRight +
          SwingRight.scale(0.5,0.5),

          HingeRight.changeBeats(2).scale(1.5,3.0) +
          DodgeRight +
          SwingRight.scale(1.5,1.5)
      ]),

    AnimatedCall('3/4 Mix',
      formation:Formation('Box RH'),
      from:'Right-Hand Box',parts:'4.5;4',
      paths:[
          CastRight +
          DodgeRight.changeBeats(4) +
          SwingRight,

          CastRight +
          RunLeft.changeBeats(4).scale(1.0,2.0)
      ]),

    AnimatedCall('3/4 Mix',
      formation:Formation('Diamond RH'),
      from:'Right-Hand Diamond',parts:'4.5;4',
      paths:[
          Stand.changeBeats(4.5) +
          DodgeRight.changeBeats(4) +
          SwingRight,

          CastRight +
          RunRight.changeBeats(4).scale(1.0,2.0)
      ]),

    AnimatedCall('3/4 Mix',
      formation:Formation('Diamond Facing RH'),
      from:'Facing Diamond',parts:'4.5;4',
      paths:[
          Stand.changeBeats(4.5) +
          DodgeLeft.changeBeats(4) +
          SwingLeft,

          CastRight +
          RunRight.changeBeats(4).scale(1.0,2.0)
      ]),

    AnimatedCall('3/4 Mix',
      formation:Formation('Ocean Waves RH BGBG'),
      from:'Right-Hand Waves',parts:'4.5;4',
      paths:[
          CastRight +
          DodgeRight.changeBeats(4) +
          SwingRight,

          CastRight +
          RunLeft.changeBeats(4).scale(1.0,2.0),

          CastRight +
          DodgeRight.changeBeats(4) +
          SwingRight,

          CastRight +
          RunLeft.changeBeats(4).scale(1.0,2.0)
      ]),

    AnimatedCall('3/4 Mix',
      formation:Formation('Ocean Waves LH BGGB'),
      from:'Left-Hand Waves',parts:'4.5;4',
      paths:[
          Path(),

          CastRight +
          DodgeRight.changeBeats(4) +
          SwingRight,

          CastRight +
          RunLeft.changeBeats(4).scale(1.0,2.0),

          Path()
      ]),

    AnimatedCall('3/4 Mix',
      formation:Formation('Column RH GBGB'),
      from:'Right-Hand Columns',parts:'4.5;3',
      paths:[
          HingeRight.scale(0.5,1.0) +
          SwingRight.scale(0.5,0.5) +
          RunLeft,

          HingeRight.scale(0.5,1.0) +
          SwingRight.scale(0.5,0.5) +
          DodgeRight.scale(1.0,0.5) +
          SwingRight.scale(0.5,0.5),

          HingeRight.scale(0.5,1.0) +
          SwingRight.scale(0.5,0.5) +
          RunLeft,

          HingeRight.scale(0.5,1.0) +
          SwingRight.scale(0.5,0.5) +
          DodgeRight.scale(1.0,0.5) +
          SwingRight.scale(0.5,0.5)
      ]),

    AnimatedCall('3/4 Mix',
      formation:Formation('Diamonds RH Girl Points'),
      from:'Right-Hand Diamonds',parts:'4.5;4',
      paths:[
          CastRight +
          RunRight.changeBeats(4).scale(1.0,2.0),

          Stand.changeBeats(4.5) +
          DodgeRight.changeBeats(4) +
          SwingRight,

          CastRight +
          RunRight.changeBeats(4).scale(1.0,2.0),

          Stand.changeBeats(4.5) +
          DodgeRight.changeBeats(4) +
          SwingRight
      ]),

    AnimatedCall('3/4 Mix',
      formation:Formation('Diamonds Facing Girl Points'),
      from:'Facing Diamonds',parts:'4.5;4',
      paths:[
          CastRight +
          RunRight.changeBeats(4).scale(1.0,2.0),

          Stand.changeBeats(4.5) +
          DodgeLeft.changeBeats(4) +
          SwingLeft,

          CastRight +
          RunRight.changeBeats(4).scale(1.0,2.0),

          Stand.changeBeats(4.5) +
          DodgeLeft.changeBeats(4) +
          SwingLeft
      ]),

    AnimatedCall('3/4 Mix',
      formation:Formation('Diamonds RH PTP Girl Points'),
      from:'Point-to-Point Diamonds',parts:'4.5;4',
      paths:[
          CastRight +
          RunRight.changeBeats(4).scale(1.0,1.75),

          Stand.changeBeats(4.5) +
          DodgeRight.changeBeats(4).scale(1.0,0.25) +
          SwingRight.scale(0.5,0.5),

          CastRight +
          RunRight.changeBeats(4).scale(1.0,0.75),

          Stand.changeBeats(4.5) +
          DodgeRight.changeBeats(4).scale(1.0,1.25) +
          SwingRight.scale(0.5,0.5)
      ]),

    AnimatedCall('3/4 Mix',
      formation:Formation('Alamo Wave'),
      from:'Alamo Ring',parts:'4.5;4',
      paths:[
          SxtnthLeft +
          CastRight +
          DodgeRight.changeBeats(4).scale(1.0,1.2) +
          SwingRight,

          SxtnthRight +
          CastRight +
          RunLeft.changeBeats(4).scale(1.0,2.25),

          SxtnthLeft +
          CastRight +
          DodgeRight.changeBeats(4).scale(1.0,1.2) +
          SwingRight,

          SxtnthRight +
          CastRight +
          RunLeft.changeBeats(4).scale(1.0,2.25)
      ]),

    AnimatedCall('Left 3/4 Mix',
      formation:Formation('Box LH'),
      from:'Left-Hand Box',parts:'4.5;4',
      paths:[
          CastLeft +
          RunRight.changeBeats(4).scale(1.0,2.0),

          CastLeft +
          DodgeLeft.changeBeats(4) +
          SwingLeft
      ]),

    AnimatedCall('Left 3/4 Mix',
      formation:Formation('Diamond LH'),
      from:'Left-Hand Diamond',parts:'4.5;4',
      paths:[
          Stand.changeBeats(4.5) +
          DodgeLeft.changeBeats(4) +
          SwingLeft,

          CastLeft +
          RunLeft.changeBeats(4).scale(1.0,2.0)
      ]),

    AnimatedCall('Left 3/4 Mix',
      formation:Formation('Diamond Facing'),
      from:'Facing Diamond',parts:'4.5;4',
      paths:[
          Stand.changeBeats(4.5) +
          DodgeRight.changeBeats(4) +
          SwingRight,

          CastLeft +
          RunLeft.changeBeats(4).scale(1.0,2.0)
      ]),

    AnimatedCall('Left 3/4 Mix',
      formation:Formation('Ocean Waves RH BGGB'),
      from:'Right-Hand Waves',parts:'4.5;4',
      paths:[
          Path(),

          CastLeft +
          RunRight.changeBeats(4).scale(1.0,2.0),

          CastLeft +
          DodgeLeft.changeBeats(4) +
          SwingLeft,

          Path()
      ]),

    AnimatedCall('Left 3/4 Mix',
      formation:Formation('Ocean Waves LH BGBG'),
      from:'Left-Hand Waves',parts:'4.5;4',
      paths:[
          CastLeft +
          RunRight.changeBeats(4).scale(1.0,2.0),

          CastLeft +
          DodgeLeft.changeBeats(4) +
          SwingLeft,

          CastLeft +
          RunRight.changeBeats(4).scale(1.0,2.0),

          CastLeft +
          DodgeLeft.changeBeats(4) +
          SwingLeft
      ]),

    AnimatedCall('Left 3/4 Mix',
      formation:Formation('Column LH GBGB'),
      from:'Left-Hand Columns',parts:'4.5;3',
      paths:[
          HingeLeft.scale(0.5,1.0) +
          SwingLeft.scale(0.5,0.5) +
          DodgeLeft.scale(1.0,0.5) +
          SwingLeft.scale(0.5,0.5),

          HingeLeft.scale(0.5,1.0) +
          SwingLeft.scale(0.5,0.5) +
          RunRight,

          HingeLeft.scale(0.5,1.0) +
          SwingLeft.scale(0.5,0.5) +
          DodgeLeft.scale(1.0,0.5) +
          SwingLeft.scale(0.5,0.5),

          HingeLeft.scale(0.5,1.0) +
          SwingLeft.scale(0.5,0.5) +
          RunRight
      ]),

    AnimatedCall('Left 3/4 Mix',
      formation:Formation('Diamonds LH Girl Points'),
      from:'Left-Hand Diamonds',parts:'4.5;4',
      paths:[
          CastLeft +
          RunLeft.changeBeats(4).scale(1.0,2.0),

          Stand.changeBeats(4.5) +
          DodgeLeft.changeBeats(4) +
          SwingLeft,

          CastLeft +
          RunLeft.changeBeats(4).scale(1.0,2.0),

          Stand.changeBeats(4.5) +
          DodgeLeft.changeBeats(4) +
          SwingLeft
      ]),

    AnimatedCall('Left 3/4 Mix',
      formation:Formation('Diamonds Facing LH Girl Points'),
      from:'Facing Diamonds',parts:'4.5;4',
      paths:[
          CastLeft +
          RunLeft.changeBeats(4).scale(1.0,2.0),

          Stand.changeBeats(4.5) +
          DodgeRight.changeBeats(4) +
          SwingRight,

          CastLeft +
          RunLeft.changeBeats(4).scale(1.0,2.0),

          Stand.changeBeats(4.5) +
          DodgeRight.changeBeats(4) +
          SwingRight
      ]),

    AnimatedCall('Left 3/4 Mix',
      formation:Formation('Diamonds LH PTP Girl Points'),
      from:'Point-to-Point Diamonds',parts:'4.5;4',
      paths:[
          CastLeft +
          RunLeft.changeBeats(4).scale(1.0,0.75),

          Stand.changeBeats(4.5) +
          DodgeLeft.changeBeats(4).scale(1.0,0.25) +
          SwingLeft.scale(0.5,0.5),

          CastLeft +
          RunLeft.changeBeats(4).scale(1.0,1.75),

          Stand.changeBeats(4.5) +
          DodgeLeft.changeBeats(4).scale(1.0,1.25) +
          SwingLeft.scale(0.5,0.5)
      ]),

    AnimatedCall('Left 3/4 Mix',
      formation:Formation('Alamo Wave'),
      from:'Alamo Ring',parts:'4.5;4',
      paths:[
          SxtnthRight +
          CastLeft +
          DodgeLeft.changeBeats(4).scale(1.0,1.2) +
          SwingLeft,

          SxtnthLeft +
          CastLeft +
          RunRight.changeBeats(4).scale(1.0,2.25),

          SxtnthRight +
          CastLeft +
          DodgeLeft.changeBeats(4).scale(1.0,1.2) +
          SwingLeft,

          SxtnthLeft +
          CastLeft +
          RunRight.changeBeats(4).scale(1.0,2.25)
      ]),

    AnimatedCall('Grand 3/4 Mix',
      formation:Formation('Column RH GBGB'),
      group:' ',parts:'4.5;3',
      paths:[
          HingeRight.scale(0.5,1.0) +
          SwingRight.scale(0.5,0.5) +
          RunLeft +
          SwingRight.scale(0.5,0.5),

          HingeRight.scale(0.5,1.0) +
          SwingRight.scale(0.5,0.5) +
          RunLeft +
          SwingRight.scale(0.5,0.5),

          HingeRight.scale(0.5,1.0) +
          SwingRight.scale(0.5,0.5) +
          RunLeft,

          HingeRight.scale(0.5,1.0) +
          SwingRight.scale(0.5,0.5) +
          DodgeRight.scale(1.0,0.5) +
          SwingRight.scale(0.5,0.5)
      ]),

    AnimatedCall('Grand Left 3/4 Mix',
      formation:Formation('Column LH GBGB'),
      group:' ',parts:'1.5;3',
      paths:[
          HingeLeft.scale(0.5,1.0) +
          SwingLeft.scale(0.5,0.5) +
          DodgeLeft.scale(1.0,0.5) +
          SwingLeft.scale(0.5,0.5),

          HingeLeft.scale(0.5,1.0) +
          SwingLeft.scale(0.5,0.5) +
          RunRight,

          HingeLeft.scale(0.5,1.0) +
          SwingLeft.scale(0.5,0.5) +
          RunRight +
          SwingLeft.scale(0.5,0.5),

          HingeLeft.scale(0.5,1.0) +
          SwingLeft.scale(0.5,0.5) +
          RunRight +
          SwingLeft.scale(0.5,0.5)
      ]),
  ];

