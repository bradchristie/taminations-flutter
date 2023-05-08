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

  final List<AnimatedCall> WheelFanThru = [

    AnimatedCall('Wheel Fan Thru',
      formation:Formation('Facing Couples Compact'),
      from:'Facing Couples',
      paths:[
          HalfHingeRight.changeBeats(2).skew(1.25,-0.25) +
          SwingRight.scale(0.707,0.707) +
          HalfHingeRight.changeBeats(2).skew(1.1,-0.8),

          QuarterRight.changeBeats(3).skew(0.5,-0.5) +
          Stand.changeBeats(4).changehands(0)
      ]),

    AnimatedCall('Wheel Fan Thru',
      formation:Formation('Normal Lines'),
      from:'Lines',
      paths:[
          HalfHingeRight.changeBeats(2).skew(1.6,-0.4) +
          SwingRight.scale(0.5,0.5) +
          HalfHingeRight.changeBeats(2).skew(0.7,-0.3),

          QuarterRight.changeBeats(3).skew(1.0,0.0) +
          Stand.changeBeats(4).changehands(0),

          HalfHingeRight.changeBeats(2).skew(1.6,-0.4) +
          SwingRight.scale(0.5,0.5) +
          HalfHingeRight.changeBeats(2).skew(0.7,-0.3),

          QuarterRight.changeBeats(3).skew(1.0,0.0) +
          Stand.changeBeats(4).changehands(0)
      ]),

    AnimatedCall('Wheel Fan Thru',
      formation:Formation('Eight Chain Thru'),
      from:'Eight Chain Thru',
      paths:[
          HalfHingeRight.changeBeats(2).skew(0.6,-0.4) +
          SwingRight.scale(0.5,0.5) +
          HalfHingeRight.changeBeats(2).skew(1.4,-1.0),

          QuarterRight.skew(0.0,-1.0),

          HalfHingeRight.changeBeats(2).skew(0.6,-0.4) +
          SwingRight.scale(0.5,0.5) +
          HalfHingeRight.changeBeats(2).skew(1.4,-1.0),

          QuarterRight.skew(0.0,-1.0)
      ]),

    AnimatedCall('Left Wheel Fan Thru',
      formation:Formation('Facing Couples Compact'),
      from:'Facing Couples',
      paths:[
          QuarterLeft.skew(0.5,0.5),

          HalfHingeLeft.changeBeats(2).skew(1.25,0.25) +
          SwingLeft.scale(0.707,0.707) +
          HalfHingeLeft.changeBeats(2).skew(1.1,0.8)
      ]),

    AnimatedCall('Left Wheel Fan Thru',
      formation:Formation('Normal Lines'),
      from:'Lines',
      paths:[
          QuarterLeft.skew(1.0,0.0),

          HalfHingeLeft.changeBeats(2).skew(1.6,0.4) +
          SwingLeft.scale(0.5,0.5) +
          HalfHingeLeft.changeBeats(2).skew(0.7,0.3),

          QuarterLeft.skew(1.0,0.0),

          HalfHingeLeft.changeBeats(2).skew(1.6,0.4) +
          SwingLeft.scale(0.5,0.5) +
          HalfHingeLeft.changeBeats(2).skew(0.7,0.3)
      ]),

    AnimatedCall('Left Wheel Fan Thru',
      formation:Formation('Eight Chain Thru'),
      from:'Eight Chain Thru',
      paths:[
          QuarterLeft.skew(0.0,1.0),

          HalfHingeLeft.changeBeats(2).skew(0.6,0.4) +
          SwingLeft.scale(0.5,0.5) +
          HalfHingeLeft.changeBeats(2).skew(1.4,1.0),

          QuarterLeft.skew(0.0,1.0),

          HalfHingeLeft.changeBeats(2).skew(0.6,0.4) +
          SwingLeft.scale(0.5,0.5) +
          HalfHingeLeft.changeBeats(2).skew(1.4,1.0)
      ]),

    AnimatedCall('Heads Wheel Fan Thru',
      formation:Formation('Static Square'),
      group:'  ',
      paths:[
          HalfHingeRight.changeBeats(2).skew(2.6,-0.4) +
          SwingRight.scale(0.5,0.5) +
          HalfHingeRight.changeBeats(2).skew(0.7,-0.3),

          QuarterRight.changeBeats(3).skew(2.0,0.0) +
          Stand.changeBeats(4).changehands(0),

          Path(),

          Path()
      ]),

    AnimatedCall('Sides Wheel Fan Thru',
      formation:Formation('Static Square'),
      group:'  ',
      paths:[
          Path(),

          Path(),

          HalfHingeRight.changeBeats(2).skew(2.6,-0.4) +
          SwingRight.scale(0.5,0.5) +
          HalfHingeRight.changeBeats(2).skew(0.7,-0.3),

          QuarterRight.changeBeats(3).skew(2.0,0.0) +
          Stand.changeBeats(4).changehands(0)
      ]),

    AnimatedCall('Heads Left Wheel Fan Thru',
      formation:Formation('Static Square'),
      group:'  ',
      paths:[
          QuarterLeft.changeBeats(3).skew(2.0,0.0) +
          Stand.changeBeats(4).changehands(0),

          HalfHingeLeft.changeBeats(2).skew(2.6,0.4) +
          SwingLeft.scale(0.5,0.5) +
          HalfHingeLeft.changeBeats(2).skew(0.7,0.3),

          Path(),

          Path()
      ]),

    AnimatedCall('Sides Left Wheel Fan Thru',
      formation:Formation('Static Square'),
      group:'  ',
      paths:[
          Path(),

          Path(),

          QuarterLeft.changeBeats(3).skew(2.0,0.0) +
          Stand.changeBeats(4).changehands(0),

          HalfHingeLeft.changeBeats(2).skew(2.6,0.4) +
          SwingLeft.scale(0.5,0.5) +
          HalfHingeLeft.changeBeats(2).skew(0.7,0.3)
      ]),

    AnimatedCall('As Couples Wheel Fan Thru',
      formation:Formation('Normal Lines'),
      group:' ',
      paths:[
          ExtendRight.changeBeats(2).changehands(2).scale(2.0,1.5) +
          CastRight.scale(1.5,1.5) +
          ExtendLeft.changeBeats(2).changehands(2).scale(2.0,1.5),

          ExtendRight.changeBeats(2).changehands(1).scale(2.0,0.5) +
          CastRight.scale(0.5,0.5) +
          ExtendLeft.changeBeats(2).changehands(1).scale(2.0,0.5),

          HingeRight.changeBeats(3) +
          Stand.changeBeats(5.5).changehands(2),

          BackHingeLeft.changeBeats(3) +
          Stand.changeBeats(5.5).changehands(1)
      ]),

    AnimatedCall('All 8 Wheel Fan Thru',
      formation:Formation('Static Square'),
      from:'Static Square',group:' ',
      paths:[
          Forward_3 +
          CastRight +
          Forward_3,

          LeadRight.changeBeats(6).scale(2.0,2.0),

          Forward_3 +
          CastRight +
          Forward_3,

          LeadRight.changeBeats(6).scale(2.0,2.0)
      ]),

    AnimatedCall('Butterfly Wheel Fan Thru',
      formation:Formation('Butterfly Chain Thru'),
      group:' ',
      paths:[
          HalfHingeRight.changeBeats(2).skew(0.1,-1.4) +
          SwingRight.scale(0.5,0.5) +
          HalfHingeRight.changeBeats(2).skew(1.05,-1.35),

          QuarterRight +
          Stand.changeBeats(5.5).changehands(0),

          HalfHingeRight.changeBeats(2).skew(1.1,-1.4) +
          SwingRight.scale(0.5,0.5) +
          HalfHingeRight.changeBeats(2).skew(1.75,-0.65),

          QuarterRight +
          Stand.changeBeats(5.5).changehands(0)
      ]),

    AnimatedCall('"O" Wheel Fan Thru',
      formation:Formation('O Eight Chain Thru'),
      group:' ',
      paths:[
          HalfHingeRight.changeBeats(2).skew(1.1,-1.4) +
          SwingRight.scale(0.5,0.5) +
          HalfHingeRight.changeBeats(2).skew(1.75,-0.65),

          QuarterRight +
          Stand.changeBeats(5.5).changehands(0),

          HalfHingeRight.changeBeats(2).skew(0.1,-1.4) +
          SwingRight.scale(0.5,0.5) +
          HalfHingeRight.changeBeats(2).skew(1.05,-1.35),

          QuarterRight +
          Stand.changeBeats(5.5).changehands(0)
      ]),

    AnimatedCall('Stretch Wheel Fan Thru',
      formation:Formation('Normal Lines'),
      group:' ',
      paths:[
          HalfHingeRight.changeBeats(2).skew(1.6,-0.4) +
          SwingRight.scale(0.5,0.5) +
          HalfHingeRight.changeBeats(2).skew(0.7,-0.3),

          LeadRight.changeBeats(3).scale(1.0,2.0) +
          Stand.changeBeats(4).changehands(0),

          HalfHingeRight.changeBeats(2).skew(1.6,-0.4) +
          SwingRight.scale(0.5,0.5) +
          HalfHingeRight.changeBeats(2).skew(0.0,-1.0) +
          ExtendLeft.changeBeats(3).scale(2.0,1.0),

          QuarterRight.changeBeats(3).skew(1.0,0.0) +
          Stand.changeBeats(4).changehands(0)
      ]),

    AnimatedCall('Tandem Wheel Fan Thru',
      formation:Formation('Double Pass Thru'),
      group:' ',
      paths:[
          Forward_2 +
          CounterRotateRight_2_0.changehands(2) +
          CounterRotateRight_2_0.changehands(2) +
          CounterRotateRight_2_0.changehands(2) +
          Forward_2,

          EighthRight.changeBeats(3) +
          Stand.changeBeats(5).changehands(0) +
          EighthRight.changeBeats(3).skew(1.414,1.414),

          Forward_2 +
          CounterRotateRight_0_m2.changehands(2) +
          CounterRotateRight_0_m2.changehands(2) +
          CounterRotateRight_0_m2.changehands(2) +
          Forward_2,

          EighthRight.changeBeats(3).skew(0.0,-2.0) +
          Stand.changeBeats(5).changehands(0) +
          EighthRight.changeBeats(3)
      ]),

    AnimatedCall('Triple Box Wheel Fan Thru',
      formation:Formation('Phantom Lines In'),
      group:' ',
      paths:[
          HalfHingeRight.changeBeats(2).skew(1.6,-0.4) +
          SwingRight.scale(0.5,0.5) +
          HalfHingeRight.changeBeats(2).skew(0.7,-0.3),

          QuarterRight.changeBeats(3).skew(1.0,0.0) +
          Stand.changeBeats(4).changehands(0),

          HalfHingeRight.changeBeats(2).skew(1.6,-0.4) +
          SwingRight.scale(0.5,0.5) +
          HalfHingeRight.changeBeats(2).skew(0.7,-0.3),

          QuarterRight.changeBeats(3).skew(1.0,0.0) +
          Stand.changeBeats(4).changehands(0),

          QuarterRight.changeBeats(3).skew(1.0,0.0) +
          Stand.changeBeats(4).changehands(0),

          HalfHingeRight.changeBeats(2).skew(1.6,-0.4) +
          SwingRight.scale(0.5,0.5) +
          HalfHingeRight.changeBeats(2).skew(0.7,-0.3)
      ]),

    AnimatedCall('All 8 Left Wheel Fan Thru',
      formation:Formation('Static Square'),
      from:'Static Square',group:' ',
      paths:[
          LeadLeft.changeBeats(6).scale(2.0,2.0),

          Forward_3 +
          CastLeft +
          Forward_3,

          LeadLeft.changeBeats(6).scale(2.0,2.0),

          Forward_3 +
          CastLeft +
          Forward_3
      ]),

    AnimatedCall('As Couples Left Wheel Fan Thru',
      formation:Formation('Normal Lines'),
      group:' ',
      paths:[
          BackHingeRight,

          HingeLeft,

          ExtendLeft.changeBeats(2).changehands(2).scale(2.0,0.5) +
          CastLeft.scale(0.5,0.5) +
          ExtendRight.changeBeats(2).changehands(2).scale(2.0,0.5),

          ExtendLeft.changeBeats(2).changehands(1).scale(2.0,1.5) +
          CastLeft.scale(1.5,1.5) +
          ExtendRight.changeBeats(2).changehands(1).scale(2.0,1.5)
      ]),

    AnimatedCall('Butterfly Left Wheel Fan Thru',
      formation:Formation('Butterfly Chain Thru'),
      group:' ',
      paths:[
          QuarterLeft +
          Stand.changeBeats(5.5).changehands(0),

          HalfHingeLeft.changeBeats(2).skew(0.1,1.4) +
          SwingLeft.scale(0.5,0.5) +
          HalfHingeLeft.changeBeats(2).skew(1.05,1.35),

          QuarterLeft +
          Stand.changeBeats(5.5).changehands(0),

          HalfHingeLeft.changeBeats(2).skew(1.1,1.4) +
          SwingLeft.scale(0.5,0.5) +
          HalfHingeLeft.changeBeats(2).skew(1.75,0.65)
      ]),

    AnimatedCall('"O" Left Wheel Fan Thru',
      formation:Formation('O Eight Chain Thru'),
      group:' ',
      paths:[
          QuarterLeft +
          Stand.changeBeats(5.5).changehands(0),

          HalfHingeLeft.changeBeats(2).skew(1.1,1.4) +
          SwingLeft.scale(0.5,0.5) +
          HalfHingeLeft.changeBeats(2).skew(1.75,0.65),

          QuarterLeft +
          Stand.changeBeats(5.5).changehands(0),

          HalfHingeLeft.changeBeats(2).skew(0.1,1.4) +
          SwingLeft.scale(0.5,0.5) +
          HalfHingeLeft.changeBeats(2).skew(1.05,1.35)
      ]),

    AnimatedCall('Stretch Left Wheel Fan Thru',
      formation:Formation('Normal Lines'),
      group:' ',
      paths:[
          QuarterLeft.changeBeats(3).skew(1.0,0.0) +
          Stand.changeBeats(4).changehands(0),

          HalfHingeLeft.changeBeats(2).skew(1.6,0.4) +
          SwingLeft.scale(0.5,0.5) +
          HalfHingeLeft.changeBeats(2).skew(0.0,1.0) +
          ExtendRight.changeBeats(3).scale(2.0,1.0),

          LeadLeft.changeBeats(3).scale(1.0,2.0) +
          Stand.changeBeats(4).changehands(0),

          HalfHingeLeft.changeBeats(2).skew(1.6,0.4) +
          SwingLeft.scale(0.5,0.5) +
          HalfHingeLeft.changeBeats(2).skew(0.7,0.3)
      ]),

    AnimatedCall('Tandem Left Wheel Fan Thru',
      formation:Formation('Double Pass Thru'),
      group:' ',
      paths:[
          EighthLeft.changeBeats(3) +
          Stand.changeBeats(5).changehands(0) +
          EighthLeft.changeBeats(3).skew(1.414,-1.414),

          Forward_2 +
          CounterRotateLeft_2_0.changehands(1) +
          CounterRotateLeft_2_0.changehands(1) +
          CounterRotateLeft_2_0.changehands(1) +
          Forward_2,

          EighthLeft.changeBeats(3).skew(0.0,2.0) +
          Stand.changeBeats(5).changehands(0) +
          EighthLeft.changeBeats(3),

          Forward_2 +
          CounterRotateLeft_0_2.changehands(1) +
          CounterRotateLeft_0_2.changehands(1) +
          CounterRotateLeft_0_2.changehands(1) +
          Forward_2
      ]),

    AnimatedCall('Triple Box Left Wheel Fan Thru',
      formation:Formation('Phantom Lines In'),
      group:' ',
      paths:[
          QuarterLeft.changeBeats(3).skew(1.0,0.0) +
          Stand.changeBeats(4).changehands(0),

          HalfHingeLeft.changeBeats(2).skew(1.6,0.4) +
          SwingLeft.scale(0.5,0.5) +
          HalfHingeLeft.changeBeats(2).skew(0.7,0.3),

          QuarterLeft.changeBeats(3).skew(1.0,0.0) +
          Stand.changeBeats(4).changehands(0),

          HalfHingeLeft.changeBeats(2).skew(1.6,0.4) +
          SwingLeft.scale(0.5,0.5) +
          HalfHingeLeft.changeBeats(2).skew(0.7,0.3),

          HalfHingeLeft.changeBeats(2).skew(1.6,0.4) +
          SwingLeft.scale(0.5,0.5) +
          HalfHingeLeft.changeBeats(2).skew(0.7,0.3),

          QuarterLeft.changeBeats(3).skew(1.0,0.0) +
          Stand.changeBeats(4).changehands(0)
      ]),
  ];

