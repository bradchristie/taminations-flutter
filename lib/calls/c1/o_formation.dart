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
import '../c1/cross_and_turn.dart' as c1;
import '../c1/shakedown.dart' as c1;
import '../c1/wheel_fan_thru.dart' as c1;
import '../c1/zing.dart' as c1;
import '../c2/turn_to_a_line.dart' as c2;

  final List<AnimatedCall> OFormation = [

    AnimatedCall('"O" Chase Right',
      formation:Formation('O Trade By'),
      group:'"O"',
      paths:[
          RunRight +
          ExtendLeft.changeBeats(2).scale(2.0,2.0),

          UmTurnRight.changeBeats(1.5) +
          Forward_2 +
          FlipRight.changeBeats(4).scale(1.0,2.0),

          FlipRight.changeBeats(4).scale(1.0,2.0) +
          Forward_2,

          UmTurnRight.changeBeats(1.5) +
          ExtendRight.changeBeats(2).scale(2.0,2.0) +
          FlipRight
      ]),

    AnimatedCall('"O" Circulate (Right-Hand O)',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-3,angle:180),
  ]),
      from:'Right-Hand O',group:'"O"',fractions:'1.5',
      paths:[
          ExtendLeft.changeBeats(3).scale(2.0,2.0),

          FlipRight,

          Forward_2.changeBeats(3),

          ExtendRight.changeBeats(3).scale(2.0,2.0)
      ]),

    AnimatedCall('"O" Circulate (Left-Hand O)',
      formation:Formation('O LH'),
      from:'Left-Hand O',group:'"O"',fractions:'1.5',
      paths:[
          FlipLeft,

          ExtendRight.changeBeats(3).scale(2.0,2.0),

          ExtendLeft.changeBeats(3).scale(2.0,2.0),

          Forward_2.changeBeats(3)
      ]),

    AnimatedCall('"O" Circulate',
      formation:Formation('O Eight Chain Thru'),
      from:'O Eight Chain Thru',group:'"O"',fractions:'1.5',noDisplay: true,
      paths:[
          ExtendLeft.changeBeats(2).scale(1.0,2.0) +
          Forward,

          Forward +
          ExtendRight.changeBeats(2).scale(1.0,2.0),

          Forward +
          ExtendRight.changeBeats(2).scale(1.0,2.0),

          ExtendLeft.changeBeats(2).scale(1.0,2.0) +
          Forward
      ]),

    AnimatedCall('"O" Circulate',
      formation:Formation('O Trade By'),
      from:'O Trade By',group:'"O"',fractions:'1.5',noDisplay: true,
      paths:[
          RunRight,

          FlipLeft,

          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5),

          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5)
      ]),

    AnimatedCall('"O" Cloverleaf',
      formation:Formation('O Out'),
      group:'"O"',
      paths:[
          LeadRight +
          LeadRight.scale(1.5,1.5) +
          LeadRight.scale(1.5,1.5) +
          ExtendRight.changeBeats(2).scale(1.0,2.0),

          LeadLeft +
          LeadLeft.scale(1.5,1.5) +
          LeadLeft.scale(1.5,1.5) +
          ExtendLeft.changeBeats(2).scale(1.0,2.0),

          ExtendLeft.changeBeats(2).scale(2.0,2.0) +
          LeadRight +
          LeadRight.scale(1.5,1.5) +
          LeadRight.scale(1.5,0.5),

          ExtendRight.changeBeats(2).scale(2.0,2.0) +
          LeadLeft +
          LeadLeft.scale(1.5,1.5) +
          LeadLeft.scale(1.5,0.5)
      ]),

    AnimatedCall('"O" Coordinate',
      formation:Formation('O RH'),
      group:'"O"',
      paths:[
          Forward_3.changeBeats(4) +
          SwingRight.scale(0.5,1.0) +
          ExtendLeft.changeBeats(2).scale(1.0,2.0),

          RunRight +
          Forward +
          SwingRight.scale(0.5,1.0).skew(-1.0,0.0),

          ExtendRight.changeBeats(4).scale(3.0,2.0) +
          SwingRight.scale(0.5,1.0).skew(1.0,0.0),

          LeadRight.changeBeats(4).scale(3.0,3.0) +
          LeadRight.changeBeats(4).scale(3.0,3.0)
      ]),

    AnimatedCall('"O" Double Pass Thru',
      formation:Formation('O In'),
      group:'"O"',
      paths:[
          ExtendLeft.changeBeats(3).scale(3.0,2.0) +
          Forward,

          Forward_2 +
          ExtendRight.changeBeats(2).scale(2.0,2.0),

          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.changeBeats(3).scale(3.0,2.5),

          ExtendLeft.changeBeats(2).scale(2.0,2.0) +
          Forward_2
      ]),

    AnimatedCall('"O" Pass In',
      formation:Formation('O Eight Chain Thru'),
      group:'"O"',
      paths:[
          ExtendLeft.changeBeats(2).scale(1.0,2.0) +
          QuarterRight.skew(1.0,0.0),

          QuarterLeft.changeBeats(3.5).skew(2.0,-2.0),

          LeadRight.changeBeats(2).scale(2.0,1.0) +
          Forward,

          QuarterLeft.changeBeats(3.5).skew(2.0,2.0)
      ]),

    AnimatedCall('"O" Pass Thru',
      formation:Formation('O Eight Chain Thru'),
      group:'"O"',
      paths:[
          ExtendLeft.changeBeats(2).scale(1.0,2.0) +
          Forward,

          Forward +
          ExtendRight.changeBeats(2).scale(1.0,2.0),

          Forward +
          ExtendRight.changeBeats(2).scale(1.0,2.0),

          ExtendLeft.changeBeats(2).scale(1.0,2.0) +
          Forward
      ]),

    AnimatedCall('"O" Peel Off',
      formation:Formation('O RH'),
      group:'"O"',
      paths:[
          UmTurnLeft.changeBeats(4),

          RunLeft.changeBeats(4).skew(-2.0,0.0),

          UmTurnLeft.changeBeats(4),

          UmTurnLeft.changeBeats(4).skew(2.0,-2.0)
      ]),

    AnimatedCall('"O" Right Roll to a Wave',
      formation:Formation('O Trade By'),
      group:'"O"',
      paths:[
          UmTurnRight,

          RunRight.skew(-2.0,0.0),

          RunRight.skew(-2.0,0.0),

          UmTurnRight
      ]),

    AnimatedCall('"O" Scoot Back',
      formation:Formation('O RH'),
      group:'"O"',
      paths:[
          ExtendRight.changeBeats(2) +
          SwingRight.scale(0.5,0.5) +
          Forward,

          RunRight,

          RunRight.changeBeats(6).scale(0.5,3.0),

          ExtendRight.changeBeats(2).scale(1.0,2.0) +
          SwingRight.scale(0.5,0.5) +
          ExtendLeft.changeBeats(3).scale(1.0,3.0)
      ]),

    AnimatedCall('"O" Slide Thru',
      formation:Formation('O Eight Chain Thru'),
      group:'"O"',
      paths:[
          ExtendLeft.changeBeats(2).scale(1.0,2.0) +
          QuarterRight.skew(1.0,0.0),

          QuarterLeft.changeBeats(3.5).skew(2.0,-2.0),

          LeadRight.changeBeats(2.5).scale(2.0,1.0) +
          Forward,

          QuarterLeft.changeBeats(3.5).skew(2.0,2.0)
      ]),

    AnimatedCall('"O" Square Thru',
      formation:Formation('O Eight Chain Thru'),
      group:'"O"',
      paths:[
          ExtendLeft.changeBeats(2) +
          LeadRight.changeBeats(2).scale(0.5,2.0) +
          LeadRight.changeBeats(2).scale(1.5,0.5) +
          LeadRight.changeBeats(2).scale(0.5,1.5) +
          ExtendLeft.changeBeats(2).scale(1.0,0.5),

          Forward.changeBeats(2) +
          LeadLeft.changeBeats(2).scale(1.5,1.0) +
          LeadLeft.changeBeats(2).scale(0.5,1.5) +
          LeadLeft.changeBeats(2).scale(1.5,0.5) +
          ExtendLeft.changeBeats(2).scale(1.0,0.5),

          ExtendRight.changeBeats(2) +
          LeadRight.changeBeats(2).scale(0.5,2.0) +
          LeadRight.changeBeats(2).scale(1.5,0.5) +
          LeadRight.changeBeats(2).scale(0.5,1.5) +
          ExtendLeft.changeBeats(2).scale(3.0,0.5),

          ExtendLeft.changeBeats(2).scale(1.0,2.0) +
          LeadLeft.changeBeats(2).scale(1.5,1.0) +
          LeadLeft.changeBeats(2).scale(0.5,1.5) +
          LeadLeft.changeBeats(2).scale(1.5,0.5) +
          ExtendLeft.changeBeats(2).scale(3.0,0.5)
      ]),

    AnimatedCall('"O" Split Circulate',
      formation:Formation('O RH'),
      group:'"O"',
      paths:[
          ExtendLeft.changeBeats(6).scale(2.0,2.0),

          RunRight.changeBeats(6),

          FlipRight.changeBeats(6).scale(1.0,3.0),

          ExtendRight.changeBeats(6).scale(2.0,2.0)
      ]),

    AnimatedCall('"O" Split Counter Rotate',
      formation:Formation('O RH'),
      group:'"O"',
      paths:[
          CounterRotateRight_2_0.changeBeats(4).skew(0.0,2.0),

          CounterRotateRight_0_m2.changeBeats(4),

          CounterRotateRight_0_m2.changeBeats(4).skew(0.0,-4.0),

          CounterRotateRight_2_0.changeBeats(4).skew(0.0,-2.0)
      ]),

    AnimatedCall('"O" Swap Around',
      formation:Formation('O Eight Chain Thru'),
      group:'"O"',
      paths:[
          FlipRight,

          ExtendRight.changeBeats(3).scale(2.0,2.0),

          FlipRight.changeBeats(5).scale(3.0,3.0),

          ExtendLeft.changeBeats(3).scale(2.0,2.0)
      ]),

    AnimatedCall('"O" Swing Thru',
      formation:Formation('O Eight Chain Thru'),
      group:'"O"',
      paths:[
          ExtendLeft.changeBeats(2).scale(1.0,2.0) +
          SwingRight +
          SwingLeft.skew(1.0,0.0),

          Forward.changeBeats(2) +
          SwingRight +
          Back.changeBeats(3),

          Forward.changeBeats(2) +
          SwingRight +
          SwingLeft.skew(-1.0,0.0),

          ExtendLeft.changeBeats(2).scale(1.0,2.0) +
          SwingRight +
          Forward.changeBeats(3)
      ]),

    AnimatedCall('"O" Touch a Quarter',
      formation:Formation('O Eight Chain Thru'),
      group:'"O"',
      paths:[
          ExtendLeft.changeBeats(2).scale(1.0,2.0) +
          QuarterRight.skew(1.0,0.0),

          LeadRight.changeBeats(2).scale(2.0,1.0) +
          Forward,

          LeadRight.changeBeats(2).scale(2.0,1.0) +
          Forward,

          ExtendLeft.changeBeats(2).scale(1.0,2.0) +
          QuarterRight.skew(1.0,0.0)
      ]),

    AnimatedCall('"O" Track Two',
      formation:Formation('O Out'),
      group:'"O"',
      paths:[
          FlipLeft.skew(-2.0,0.0) +
          Forward_4,

          RunRight.changeBeats(5).scale(1.0,2.0) +
          Forward_4,

          RunLeft.changeBeats(6).skew(2.0,2.0),

          LeadRight.changeBeats(4.5).scale(3.0,3.0) +
          LeadRight.changeBeats(4.5).scale(3.0,3.0)
      ]),

    AnimatedCall('"O" Trade By',
      formation:Formation('O Trade By'),
      group:'"O"',
      paths:[
          RunRight,

          FlipLeft,

          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5),

          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5)
      ]),

    AnimatedCall('"O" Transfer the Column',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-3,angle:180),
  ]),
      group:'"O"',
      paths:[
          Forward_2 +
          SwingRight.scale(0.5,1.0) +
          HingeRight.scale(0.5,1.0) +
          ExtendLeft.changeBeats(2).scale(1.0,1.5),

          RunRight.changeBeats(3).scale(1.0,2.0) +
          Forward_4 +
          LeadRight.changeBeats(2).scale(2.0,2.0),

          ExtendRight.changeBeats(2).scale(2.0,2.0) +
          SwingRight.scale(0.5,1.0) +
          HingeRight.scale(0.5,1.0) +
          ExtendRight.changeBeats(4).scale(3.0,0.5),

          Forward_2 +
          RunRight.changeBeats(4).scale(1.0,3.5) +
          LeadRight.changeBeats(4).scale(2.0,1.0)
      ]),

    AnimatedCall('"O" Veer Left',
      formation:Formation('O Eight Chain Thru'),
      group:'"O"',
      paths:[
          ExtendLeft.changeBeats(2).scale(1.0,2.0) +
          Forward,

          DodgeLeft,

          Path(),

          ExtendLeft.changeBeats(4).scale(2.0,4.0)
      ]),

    AnimatedCall('"O" Walk and Dodge',
      formation:Formation('O RH'),
      group:'"O"',
      paths:[
          ExtendLeft.changeBeats(4).scale(2.0,2.0),

          DodgeRight.changeBeats(4),

          DodgeRight.changeBeats(4).scale(1.0,3.0),

          ExtendRight.changeBeats(4).scale(2.0,2.0)
      ]),

    AnimatedCall('"O" Wheel Thru',
      formation:Formation('O Eight Chain Thru'),
      group:'"O"',
      paths:[
          LeadRight.changeBeats(3).scale(2.0,2.0) +
          Forward_2,

          QuarterRight,

          LeadRight.changeBeats(3.5).scale(1.0,3.0) +
          ExtendLeft.changeBeats(1.5),

          QuarterRight
      ]),

    AnimatedCall('"O" Zoom',
      formation:Formation('O In'),
      group:'"O"',
      paths:[
          ExtendLeft.changeBeats(6).scale(2.0,2.0),

          ExtendRight.changeBeats(6).scale(2.0,2.0),

          RunLeft.skew(-1.0,-1.0) +
          RunLeft.skew(1.0,1.0),

          RunRight.skew(-1.0,1.0) +
          RunRight.skew(1.0,-1.0)
      ]),
    c1.CrossAndTurn.where((tam) =>
      tam.title == '"O" Cross and Turn').first.xref(title: '"O" Cross and Turn').xref(group: '"O" (C-1)'),
    c1.CrossAndTurn.where((tam) =>
      tam.title == '"O" Reverse Cross and Turn').first.xref(title: '"O" Reverse Cross and Turn').xref(group: '"O" (C-1)'),
    c1.Shakedown.where((tam) =>
      tam.title == '"O" Shakedown').first.xref(title: '"O" Shakedown').xref(group: '"O" (C-1)'),
    c1.WheelFanThru.where((tam) =>
      tam.title == '"O" Wheel Fan Thru').first.xref(title: '"O" Wheel Fan Thru').xref(group: '"O" (C-1)'),
    c1.WheelFanThru.where((tam) =>
      tam.title == '"O" Left Wheel Fan Thru').first.xref(title: '"O" Left Wheel Fan Thru').xref(group: '"O" (C-1)'),
    c1.Zing.where((tam) =>
      tam.title == '"O" Zing').first.xref(title: '"O" Zing').xref(group: '"O" (C-1)'),

    AnimatedCall('Magic "O" Circulate',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-3,angle:0),
  ]),
      group:'Magic "O" (C-1)',
      paths:[
          ExtendRight.changeBeats(4).scale(2.0,4.0),

          RunRight.changeBeats(4),

          ExtendLeft.changeBeats(4).scale(2.0,4.0),

          Forward_2.changeBeats(4)
      ]),

    AnimatedCall('Magic "O" Circulate',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-3,angle:180),
  ]),
      group:'Magic "O" (C-1)',noDisplay: true,
      paths:[
          RunLeft.changeBeats(4),

          ExtendLeft.changeBeats(4).scale(2.0,4.0),

          Forward_2.changeBeats(4),

          ExtendRight.changeBeats(4).scale(2.0,4.0)
      ]),

    AnimatedCall('Magic "O" Walk and Dodge',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-3,angle:0),
  ]),
      group:'Magic "O" (C-1)',
      paths:[
          ExtendRight.changeBeats(4).scale(2.0,4.0),

          DodgeRight.changeBeats(4),

          ExtendLeft.changeBeats(4).scale(2.0,4.0),

          DodgeLeft.changeBeats(4).scale(1.0,3.0)
      ]),
    c2.TurnToALine.where((tam) =>
      tam.title == '"O" Turn to a Line').first.xref(title: '"O" Turn to a Line').xref(group: '"O" (C-2)'),
  ];

