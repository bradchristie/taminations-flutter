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
import '../c1/cross_and_turn.dart' as c1;
import '../c1/shakedown.dart' as c1;
import '../c1/wheel_fan_thru.dart' as c1;
import '../c1/zing.dart' as c1;
import '../c2/turn_to_a_line.dart' as c2;

  final List<AnimatedCall> ButterflyFormation = [

    AnimatedCall('Butterfly Chase Right',
      formation:Formation('Butterfly Trade By'),
      group:'Butterfly',
      paths:[
          RunRight.changeBeats(4).scale(1.0,2.0) +
          Forward_2,

          UmTurnRight.skew(-2.0,1.0) +
          FlipRight.scale(1.0,1.5),

          RunRight.changeBeats(6).scale(1.0,2.0).skew(-2.0,0.0),

          UmTurnRight.skew(-2.0,0.0) +
          RunRight.scale(1.0,2.0)
      ]),

    AnimatedCall('Butterfly Checkmate',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:3,y:3,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:3,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:1,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:90),
  ]),
      group:'Butterfly',
      paths:[
          ExtendRight.changeBeats(7).scale(2.0,2.0) +
          Forward +
          LeadRight.changeBeats(2) +
          Forward,

          RunRight.changeBeats(6).scale(1.0,2.5) +
          Forward_4 +
          QuarterRight.changeBeats(3).skew(2.0,1.0),

          Forward_2.changeBeats(7) +
          Forward +
          LeadRight.changeBeats(2) +
          Forward_3,

          Stand.changeBeats(2) +
          RunRight.changeBeats(7.5).scale(2.0,1.5).skew(0.5,0.0) +
          LeadRight.changeBeats(2.5).scale(2.5,1.0)
      ]),

    AnimatedCall('Butterfly Circulate',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:3,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:-3,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:180),
  ]),
      group:'Butterfly',
      paths:[
          ExtendRight.changeBeats(2).scale(2.0,2.0),

          RunRight.changeBeats(3).scale(1.0,3.0),

          Forward_2,

          ExtendLeft.changeBeats(2).scale(2.0,2.0)
      ]),

    AnimatedCall('Butterfly Cloverleaf',
      formation:Formation('Butterfly Out'),
      group:'Butterfly',
      paths:[
          RunLeft +
          LeadLeft.changeBeats(3).scale(2.0,2.0) +
          Forward_2,

          RunRight +
          LeadRight.changeBeats(3).scale(2.0,2.0) +
          Forward_2,

          Forward_2 +
          LeadLeft.changeBeats(3).scale(2.0,2.0) +
          RunLeft,

          Forward_2 +
          LeadRight.changeBeats(3).scale(2.0,2.0) +
          RunRight
      ]),

    AnimatedCall('Butterfly Coordinate',
      formation:Formation('Butterfly RH'),
      group:'Butterfly',
      paths:[
          ExtendRight.changeBeats(3).scale(2.0,2.0) +
          Forward +
          SwingRight.scale(0.5,1.0) +
          ExtendLeft.changeBeats(3).scale(3.0,2.0),

          RunRight.scale(1.0,2.0) +
          Forward +
          SwingRight.scale(0.5,1.0) +
          Back.changeBeats(3).changehands(2),

          Forward_3.changeBeats(4) +
          SwingRight.scale(0.5,1.0) +
          Forward.changeBeats(3).changehands(2),

          Forward_2 +
          LeadRight.changeBeats(2) +
          LeadRight.changeBeats(5).scale(3.0,1.0)
      ]),

    AnimatedCall('Butterfly Double Pass Thru',
      formation:Formation('Butterfly In'),
      group:'Butterfly',
      paths:[
          Forward_3 +
          ExtendRight.changeBeats(2).scale(1.0,2.0),

          ExtendLeft.changeBeats(3).scale(2.0,2.0) +
          Forward_2,

          ExtendLeft.changeBeats(3).scale(2.0,2.0) +
          Forward_2,

          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.changeBeats(4).scale(3.0,2.5)
      ]),

    AnimatedCall('Butterfly Grand Remake',
      formation:Formation('Butterfly RH'),
      group:'Butterfly',
      paths:[
          LeadRight.changeBeats(3).scale(0.5,3.0) +
          SwingLeft.scale(0.5,0.5) +
          SwingRight.scale(0.5,0.5) +
          HingeRight.scale(1.0,0.5),

          LeadRight.changeBeats(3).scale(0.5,3.0) +
          Stand.changeBeats(3) +
          SwingRight.scale(0.5,0.5) +
          LeadRight.changeBeats(3).scale(3.0,0.5),

          HingeRight.changeBeats(3).scale(0.5,1.0) +
          SwingLeft.scale(0.5,0.5) +
          SwingRight.scale(0.5,0.5) +
          HingeRight.scale(1.0,0.5),

          HingeRight.changeBeats(3).scale(0.5,1.0) +
          SwingLeft.scale(0.5,0.5) +
          SwingRight.scale(0.5,0.5) +
          LeadRight.changeBeats(3).scale(3.0,0.5)
      ]),

    AnimatedCall('Butterfly Horseshoe Turn',
      formation:Formation('Butterfly Out'),
      group:'Butterfly',
      paths:[
          QuarterLeft +
          QuarterLeft +
          QuarterLeft,

          QuarterRight +
          QuarterRight +
          QuarterRight,

          QuarterRight +
          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5),

          QuarterLeft +
          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Butterfly Pass In',
      formation:Formation('Butterfly Chain Thru'),
      group:'Butterfly',
      paths:[
          LeadRight.changeBeats(3).scale(2.0,2.0),

          LeadLeft.changeBeats(1).scale(0.5,1.0) +
          ExtendRight.changeBeats(2).scale(1.0,1.5),

          LeadLeft.changeBeats(1).scale(0.5,1.0) +
          RunRight.changeBeats(2).scale(1.0,0.75).skew(1.0,0.0),

          LeadRight.changeBeats(1) +
          RunLeft.changeBeats(2).scale(1.0,0.5).skew(1.0,0.0)
      ]),

    AnimatedCall('Butterfly Pass Thru',
      formation:Formation('Butterfly Chain Thru'),
      group:'Butterfly',
      paths:[
          Forward +
          ExtendRight.changeBeats(2).scale(1.0,2.0),

          ExtendLeft.changeBeats(2).scale(1.0,2.0) +
          Forward,

          ExtendLeft.changeBeats(2).scale(1.0,2.0) +
          Forward,

          Forward +
          ExtendRight.changeBeats(2).scale(1.0,2.0)
      ]),

    AnimatedCall('Butterfly Peel Off',
      formation:Formation('Butterfly RH'),
      group:'Butterfly',
      paths:[
          UmTurnLeft.skew(2.0,-2.0),

          UmTurnLeft,

          RunLeft.skew(-2.0,0.0),

          UmTurnLeft
      ]),

    AnimatedCall('Butterfly Remake',
      formation:Formation('Butterfly RH'),
      group:'Butterfly',
      paths:[
          LeadRight.changeBeats(3).scale(0.5,3.0) +
          SwingLeft.scale(0.5,0.5) +
          SwingRight.scale(0.5,0.5) +
          HingeRight.scale(1.0,0.5),

          LeadRight.changeBeats(3).scale(0.5,3.0) +
          Stand.changeBeats(3) +
          SwingRight.scale(0.5,0.5) +
          LeadRight.changeBeats(3).scale(3.0,0.5),

          HingeRight.changeBeats(3).scale(0.5,1.0) +
          Stand.changeBeats(3) +
          SwingRight.scale(0.5,0.5) +
          HingeRight.scale(1.0,0.5),

          HingeRight.changeBeats(3).scale(0.5,1.0) +
          SwingLeft.scale(0.5,0.5) +
          SwingRight.scale(0.5,0.5) +
          LeadRight.changeBeats(3).scale(3.0,0.5)
      ]),

    AnimatedCall('Butterfly Right Roll to a Wave',
      formation:Formation('Butterfly Trade By'),
      group:'Butterfly',
      paths:[
          RunRight.skew(-2.0,0.0),

          UmTurnRight,

          UmTurnRight,

          RunRight.skew(-2.0,0.0)
      ]),

    AnimatedCall('Butterfly Scoot Back',
      formation:Formation('Butterfly RH'),
      group:'Butterfly',
      paths:[
          ExtendRight.changeBeats(2).scale(0.5,2.5) +
          SwingRight.scale(0.5,0.5) +
          ExtendLeft.changeBeats(2).scale(0.5,2.5),

          RunRight.changeBeats(6).scale(2.0,3.0),

          RunRight.changeBeats(6).scale(0.5,1.0),

          ExtendRight.changeBeats(2).scale(1.5,0.5) +
          SwingRight.scale(0.5,0.5) +
          ExtendLeft.changeBeats(2).scale(1.5,0.5)
      ]),

    AnimatedCall('Butterfly Slide Thru',
      formation:Formation('Butterfly Chain Thru'),
      group:'Butterfly',
      paths:[
          LeadRight.changeBeats(2.5).scale(2.0,1.0) +
          Forward,

          QuarterLeft.changeBeats(3.5).skew(2.0,2.0),

          ExtendLeft.changeBeats(2).scale(1.0,2.0) +
          QuarterRight.skew(1.0,0.0),

          QuarterLeft.changeBeats(3.5).skew(2.0,-2.0)
      ]),

    AnimatedCall('Butterfly Split Circulate',
      formation:Formation('Butterfly RH'),
      from:'Butterfly',group:'Butterfly',
      paths:[
          ExtendRight.changeBeats(2).scale(2.0,2.0),

          RunRight.changeBeats(3).scale(1.0,3.0),

          FlipRight,

          ExtendLeft.changeBeats(2).scale(2.0,2.0)
      ]),

    AnimatedCall('Butterfly Square Thru',
      formation:Formation('Butterfly Chain Thru'),
      group:'Butterfly',
      paths:[
          ExtendRight.changeBeats(2) +
          LeadRight.changeBeats(2).scale(0.5,2.0) +
          LeadRight.changeBeats(2).scale(1.5,0.5) +
          LeadRight.changeBeats(2).scale(0.5,1.5) +
          ExtendLeft.changeBeats(2).scale(3.0,0.5),

          ExtendLeft.changeBeats(2).scale(1.0,2.0) +
          LeadLeft.changeBeats(2).scale(1.5,1.0) +
          LeadLeft.changeBeats(2).scale(0.5,1.5) +
          LeadLeft.changeBeats(2).scale(1.5,0.5) +
          ExtendLeft.changeBeats(2).scale(3.0,0.5),

          ExtendLeft.changeBeats(2) +
          LeadRight.changeBeats(2).scale(0.5,2.0) +
          LeadRight.changeBeats(2).scale(1.5,0.5) +
          LeadRight.changeBeats(2).scale(0.5,1.5) +
          ExtendLeft.changeBeats(2).scale(1.0,0.5),

          Forward.changeBeats(2) +
          LeadLeft.changeBeats(2).scale(1.5,1.0) +
          LeadLeft.changeBeats(2).scale(0.5,1.5) +
          LeadLeft.changeBeats(2).scale(1.5,0.5) +
          ExtendLeft.changeBeats(2).scale(1.0,0.5)
      ]),

    AnimatedCall('Butterfly Swap Around',
      formation:Formation('Butterfly Chain Thru'),
      group:'Butterfly',
      paths:[
          FlipRight.changeBeats(5).scale(3.0,3.0),

          ExtendLeft.changeBeats(3).scale(2.0,2.0),

          FlipRight,

          ExtendRight.changeBeats(3).scale(2.0,2.0)
      ]),

    AnimatedCall('Butterfly Swing Thru',
      formation:Formation('Butterfly Chain Thru'),
      group:'Butterfly',
      paths:[
          Forward.changeBeats(2) +
          SwingRight +
          SwingLeft.skew(-1.0,0.0),

          ExtendLeft.changeBeats(2).scale(1.0,2.0) +
          SwingRight +
          Forward.changeBeats(3),

          ExtendLeft.changeBeats(2).scale(1.0,2.0) +
          SwingRight +
          SwingLeft.skew(1.0,0.0),

          Forward.changeBeats(2) +
          SwingRight +
          Back.changeBeats(3)
      ]),

    AnimatedCall('Butterfly Touch a Quarter',
      formation:Formation('Butterfly Chain Thru'),
      group:'Butterfly',
      paths:[
          LeadRight.changeBeats(2).scale(2.0,1.0) +
          Forward,

          ExtendLeft.changeBeats(2).scale(1.0,2.0) +
          QuarterRight.skew(1.0,0.0),

          ExtendLeft.changeBeats(2).scale(1.0,2.0) +
          QuarterRight.skew(1.0,0.0),

          LeadRight.changeBeats(2).scale(2.0,1.0) +
          Forward
      ]),

    AnimatedCall('Butterfly Track Two',
      formation:Formation('Butterfly Out'),
      group:'Butterfly',
      paths:[
          RunRight.changeBeats(6).scale(1.0,3.0) +
          Forward_6,

          FlipLeft.changeBeats(4).scale(1.0,2.0).skew(-1.0,0.0) +
          Forward_3,

          ExtendLeft.changeBeats(6).scale(2.0,2.0) +
          RunRight.changeBeats(6).scale(1.0,3.0),

          Stand.changeBeats(4) +
          RunLeft.changeBeats(4)
      ]),

    AnimatedCall('Butterfly Trade By',
      formation:Formation('Butterfly Trade By'),
      group:'Butterfly',
      paths:[
          RunRight.changeBeats(6).scale(1.0,3.0),

          FlipLeft.changeBeats(6).scale(1.0,3.0),

          ExtendLeft.changeBeats(3).scale(1.0,0.5) +
          ExtendRight.changeBeats(3).scale(1.0,0.5),

          ExtendLeft.changeBeats(3).scale(1.0,0.5) +
          ExtendRight.changeBeats(3).scale(1.0,0.5)
      ]),

    AnimatedCall('Butterfly Transfer the Column',
      formation:Formation('Butterfly RH'),
      group:'Butterfly',
      paths:[
          ExtendRight.changeBeats(4).scale(2.0,2.0) +
          CastRight.changeBeats(6).changehands(6).scale(0.5,1.0) +
          ExtendLeft.changeBeats(4).scale(3.0,1.5),

          RunRight.changeBeats(6).scale(1.0,3.0) +
          Forward_5 +
          QuarterRight.skew(1.0,0.0),

          Forward_2.changeBeats(4) +
          CastRight.changeBeats(6).changehands(6).scale(0.5,1.0) +
          ExtendRight.scale(1.0,0.5),

          Forward_2.changeBeats(4) +
          RunRight.changeBeats(6).scale(1.0,2.0) +
          LeadRight.changeBeats(4).scale(2.0,2.0)
      ]),

    AnimatedCall('Butterfly Veer Left',
      formation:Formation('Butterfly Chain Thru'),
      group:'Butterfly',
      paths:[
          Path(),

          ExtendLeft.changeBeats(4).scale(2.0,4.0),

          ExtendLeft.changeBeats(2).scale(1.0,2.0) +
          Forward,

          DodgeLeft
      ]),

    AnimatedCall('Butterfly Walk and Dodge',
      formation:Formation('Butterfly RH'),
      group:'Butterfly',
      paths:[
          ExtendRight.changeBeats(4).scale(2.0,2.0),

          DodgeRight.changeBeats(4).scale(1.0,3.0),

          DodgeRight.changeBeats(4),

          ExtendLeft.changeBeats(4).scale(2.0,2.0)
      ]),

    AnimatedCall('Butterfly Wheel Thru',
      formation:Formation('Butterfly Chain Thru'),
      group:'Butterfly',
      paths:[
          LeadRight.changeBeats(3.5).scale(1.0,3.0) +
          ExtendLeft.changeBeats(1.5),

          QuarterRight,

          LeadRight.changeBeats(3).scale(2.0,2.0) +
          Forward_2,

          QuarterRight
      ]),
    c1.CrossAndTurn.where((tam) =>
      tam.title == 'Butterfly Cross and Turn').first.xref(title: 'Butterfly Cross and Turn').xref(group: 'Butterfly (C-1)'),
    c1.CrossAndTurn.where((tam) =>
      tam.title == 'Butterfly Reverse Cross and Turn').first.xref(title: 'Butterfly Reverse Cross and Turn').xref(group: 'Butterfly (C-1)'),
    c1.Shakedown.where((tam) =>
      tam.title == 'Butterfly Shakedown').first.xref(title: 'Butterfly Shakedown').xref(group: 'Butterfly (C-1)'),
    c1.WheelFanThru.where((tam) =>
      tam.title == 'Butterfly Wheel Fan Thru').first.xref(title: 'Butterfly Wheel Fan Thru').xref(group: 'Butterfly (C-1)'),
    c1.WheelFanThru.where((tam) =>
      tam.title == 'Butterfly Left Wheel Fan Thru').first.xref(title: 'Butterfly Left Wheel Fan Thru').xref(group: 'Butterfly (C-1)'),
    c1.Zing.where((tam) =>
      tam.title == 'Butterfly Zing').first.xref(title: 'Butterfly Zing').xref(group: 'Butterfly (C-1)'),
    c2.TurnToALine.where((tam) =>
      tam.title == 'Butterfly Turn to a Line').first.xref(title: 'Butterfly Turn to a Line').xref(group: 'Butterfly (C-2)'),
  ];

