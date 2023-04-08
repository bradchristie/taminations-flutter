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

import '../../common_dart.dart';
import '../../formation.dart';
import '../../formations.dart';
import '../../moves.dart';
import '../../animated_call.dart';

  final List<AnimatedCall> DixieDiamond = [ 

    AnimatedCall('Dixie Diamond',
      formation:Formations.FacingCouples,
      from:'Facing Couples',parts:'5.5',
      paths:[
          DodgeRight.changeBeats(4).scale(1.0,0.875) +
          HingeLeft.scale(1.0,0.75) +
          HingeRight,

          ExtendLeft.changeBeats(2).changehands(2).skew(1.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,1.25) +
          HingeLeft.scale(1.0,0.75) +
          UmTurnLeft
      ]),

    AnimatedCall('Dixie Diamond',
      formation:Formations.TandemGirlsLead,
      from:'Tandem',
      paths:[
          Stand.changeBeats(2) +
          ExtendRight.scale(1.0,0.5) +
          HingeLeft.scale(1.0,0.5) +
          HingeRight,

          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,1.0) +
          HingeLeft.scale(1.0,0.5) +
          UmTurnLeft
      ]),

    AnimatedCall('Dixie Diamond',
      formation:Formations.NormalLines,
      from:'Lines',parts:'6',
      paths:[
          DodgeRight.changeBeats(4).scale(1.0,0.875) +
          HingeLeft.scale(1.0,0.75) +
          HingeRight,

          ExtendLeft.changeBeats(2).changehands(2).skew(1.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,1.25) +
          HingeLeft.scale(1.0,0.75) +
          UmTurnLeft,

          DodgeRight.changeBeats(4).scale(1.0,0.875) +
          HingeLeft.scale(1.0,0.75) +
          HingeRight,

          ExtendLeft.changeBeats(2).changehands(2).skew(1.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,1.25) +
          HingeLeft.scale(1.0,0.75) +
          UmTurnLeft
      ]),

    AnimatedCall('Dixie Diamond',
      formation:Formations.EightChainThru,
      from:'Eight Chain Thru',parts:'5.5',
      paths:[
          DodgeRight.scale(1.0,0.875).skew(-0.3,0.0) +
          Stand +
          HingeLeft.scale(0.8,0.75) +
          HingeRight.scale(0.75,0.5),

          ExtendLeft.changeBeats(2).changehands(2).scale(1.15,1.5) +
          ExtendRight.changeBeats(2).scale(1.15,1.25) +
          QuarterLeft.changehands(1).skew(0.2,0.75) +
          UmTurnLeft,

          DodgeRight.scale(1.0,0.875).skew(-0.3,0.0) +
          Stand +
          HingeLeft.scale(0.8,0.75) +
          HingeRight.scale(0.75,0.5),

          ExtendLeft.changeBeats(2).changehands(2).scale(1.15,1.5) +
          ExtendRight.changeBeats(2).scale(1.15,1.25) +
          QuarterLeft.changehands(1).skew(0.2,0.75) +
          UmTurnLeft
      ]),

    AnimatedCall('Dixie Diamond',
      formation:Formations.DoublePassThru,
      from:'Double Pass Thru',parts:'4.5',
      paths:[
          Stand.changeBeats(2) +
          ExtendRight.scale(1.0,0.5) +
          HingeLeft.scale(1.0,0.5) +
          HingeRight.skew(1.0,0.0),

          Stand.changeBeats(2) +
          ExtendRight.scale(1.0,0.5) +
          HingeLeft.scale(1.0,0.5) +
          HingeRight.skew(-1.0,0.0),

          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,1.0) +
          HingeLeft.scale(1.0,0.5) +
          UmTurnLeft.skew(1.0,0.0),

          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,1.0) +
          HingeLeft.scale(1.0,0.5) +
          UmTurnLeft.skew(-1.0,0.0)
      ]),

    AnimatedCall('All 8 Dixie Diamond',
      formation:Formations.StaticSquare,
      group:' ',parts:'8',
      paths:[
          ExtendRight.changeBeats(5).scale(1.0,1.75) +
          HingeLeft.scale(1.0,0.75) +
          HingeRight,

          ExtendLeft.changeBeats(3).changehands(2).scale(3.0,2.0) +
          ExtendRight.changeBeats(2).changehands(2).scale(2.0,1.75) +
          HingeLeft.scale(1.0,0.75) +
          UmTurnLeft,

          ExtendRight.changeBeats(5).scale(1.0,1.75) +
          HingeLeft.scale(1.0,0.75) +
          HingeRight,

          ExtendLeft.changeBeats(3).changehands(2).scale(3.0,2.0) +
          ExtendRight.changeBeats(2).changehands(2).scale(2.0,1.75) +
          HingeLeft.scale(1.0,0.75) +
          UmTurnLeft
      ]),

    AnimatedCall('As Couples Dixie Diamond',
      formation:Formations.NormalLines,
      group:' ',parts:'8',
      paths:[
          BackSashayRight.changeBeats(6).changehands(2).scale(1.0,2.0) +
          HingeLeft.changeBeats(2).changehands(3).scale(0.5,1.0) +
          HingeRight.changeBeats(3).scale(3.0,1.5),

          BackSashayRight.changeBeats(6).changehands(1).scale(1.0,2.0) +
          HingeLeft.changeBeats(2).scale(1.5,3.0) +
          HingeRight.changeBeats(3).changehands(3).scale(1.0,0.5),

          ExtendLeft.changeBeats(3).changehands(6).scale(2.0,2.5) +
          ExtendRight.changeBeats(3).changehands(6).scale(2.0,2.5) +
          HingeLeft.changeBeats(2).changehands(3).scale(0.5,1.0) +
          BeauWheel.scale(0.75,0.75),

          ExtendLeft.changeBeats(3).changehands(5).scale(2.0,3.5) +
          ExtendRight.changeBeats(3).changehands(5).scale(2.0,3.5) +
          HingeLeft.changeBeats(2).scale(1.5,3.0) +
          BelleWheel.scale(0.75,0.75)
      ]),

    AnimatedCall('Dixie Diamond, Interrupt with Flip Back',
      formation:Formations.NormalLines,
      group:' ',parts:'5.5;6;6.5',
      paths:[
          DodgeRight.changeBeats(4).scale(1.0,0.875) +
          HingeLeft.scale(1.0,0.75) +
          HingeLeft +
          RunLeft.changeBeats(4) +
          ExtendLeft.changeBeats(2).scale(2.0,0.25) +
          SwingLeft.scale(0.75,0.75) +
          ExtendRight.changeBeats(2).scale(2.0,0.25) +
          UmTurnLeft,

          ExtendLeft.changeBeats(2).changehands(2).skew(1.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,1.25) +
          HingeLeft.scale(1.0,0.75) +
          HingeLeft +
          Forward_4.changeBeats(5) +
          RunLeft.changeBeats(6) +
          HingeRight,

          DodgeRight.changeBeats(4).scale(1.0,0.875) +
          HingeLeft.scale(1.0,0.75) +
          HingeLeft +
          RunLeft.changeBeats(4) +
          ExtendLeft.changeBeats(2).scale(2.0,0.25) +
          SwingLeft.scale(0.75,0.75) +
          ExtendRight.changeBeats(2).scale(2.0,0.25) +
          HingeRight,

          ExtendLeft.changeBeats(2).changehands(2).skew(1.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,1.25) +
          HingeLeft.scale(1.0,0.75) +
          HingeLeft +
          Forward_4.changeBeats(5) +
          RunLeft.changeBeats(6) +
          UmTurnLeft
      ]),

    AnimatedCall('Reverse Dixie Diamond',
      formation:Formations.FacingCouples,
      group:' ',parts:'5.5',
      paths:[
          ExtendRight.changeBeats(2).changehands(2).skew(1.0,-0.5) +
          ExtendLeft.changeBeats(2).scale(2.0,1.25) +
          HingeRight.scale(1.0,0.75) +
          UmTurnRight,

          DodgeLeft.changeBeats(4).scale(1.0,0.875) +
          HingeRight.scale(1.0,0.75) +
          HingeLeft
      ]),
  ];

