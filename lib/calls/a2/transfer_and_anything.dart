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
import '../../formations.dart';
import '../../moves.dart';

  final List<AnimatedCall> TransferAndAnything = [

    AnimatedCall('Transfer and',
      formation:Formations.ColumnRHGBGB,
      from:'Right-Hand Columns',
      paths:[
          RunRight.changeBeats(4).scale(1.0,2.5) +
          Forward_3 +
          LeadRight,

          Forward_2 +
          RunRight.changeBeats(4).scale(1.0,2.5) +
          Forward +
          LeadRight,

          Forward_2,

          Forward_2
      ]),

    AnimatedCall('Transfer and',
      formation:Formations.ColumnLHGBGB,
      from:'Left-Hand Columns',
      paths:[
          Forward_2,

          Forward_2,

          Forward_2 +
          RunLeft.changeBeats(4).scale(1.0,2.5) +
          Forward +
          LeadLeft,

          RunLeft.changeBeats(4).scale(1.0,2.5) +
          Forward_3 +
          LeadLeft
      ]),

    AnimatedCall('Transfer and',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:3,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:0),
  ]),
      from:'T-Bones 1',
      paths:[
          RunRight.changeBeats(4).scale(1.0,2.5) +
          Forward_3 +
          LeadRight,

          Forward_2 +
          RunRight.changeBeats(4).scale(1.0,2.5) +
          Forward +
          LeadRight,

          Forward.changeBeats(3).changehands(2),

          Forward.changeBeats(3).changehands(1)
      ]),

    AnimatedCall('Transfer and',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:3,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:1,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:3,angle:0),
  ]),
      from:'T-Bones 2',
      paths:[
          RunLeft.changeBeats(4).scale(1.0,2.5) +
          Forward_3 +
          LeadLeft,

          Forward_2 +
          RunLeft.changeBeats(4).scale(1.0,2.5) +
          Forward +
          LeadLeft,

          Forward.changeBeats(3).changehands(2),

          Forward.changeBeats(3).changehands(1)
      ]),

    AnimatedCall('Transfer and',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:3,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:0),
  ]),
      from:'T-Bones 3',
      paths:[
          RunRight.changeBeats(4).scale(1.0,2.5) +
          Forward_3 +
          LeadRight,

          Forward_2 +
          RunRight.changeBeats(4).scale(1.0,2.5) +
          Forward +
          LeadRight,

          Forward.changeBeats(3),

          Forward.changeBeats(3)
      ]),

    AnimatedCall('Transfer and',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:3,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:1,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:3,angle:0),
  ]),
      from:'T-Bones 4',
      paths:[
          RunLeft.changeBeats(4).scale(1.0,2.5) +
          Forward_3 +
          LeadLeft,

          Forward_2 +
          RunLeft.changeBeats(4).scale(1.0,2.5) +
          Forward +
          LeadLeft,

          Forward.changeBeats(3),

          Forward.changeBeats(3)
      ]),

    AnimatedCall('Transfer and Box Circulate Twice',
      formation:Formations.ColumnRHGBGB,
      group:'Transfer and',
      paths:[
          RunRight.changeBeats(4).scale(1.0,2.5) +
          Forward_3 +
          LeadRight,

          Forward_2 +
          RunRight.changeBeats(4).scale(1.0,2.5) +
          Forward +
          LeadRight,

          Forward_2 +
          RunRight +
          Forward_2.changeBeats(3),

          Forward_2 +
          Forward_2.changeBeats(3) +
          RunRight
      ]),

    AnimatedCall('Transfer and Box Counter Rotate',
      formation:Formations.ColumnRHGBGB,
      group:'Transfer and',
      paths:[
          RunRight.changeBeats(4).scale(1.0,2.5) +
          Forward_3 +
          LeadRight,

          Forward_2 +
          RunRight.changeBeats(4).scale(1.0,2.5) +
          Forward +
          LeadRight,

          Forward_2 +
          CounterRotateRight_0_m2.changehands(2),

          Forward_2 +
          CounterRotateRight_2_0.changehands(2)
      ]),

    AnimatedCall('Transfer and Box Transfer',
      formation:Formations.ColumnRHGBGB,
      group:'Transfer and',
      paths:[
          RunRight.changeBeats(4).scale(1.0,2.5) +
          Forward_3 +
          LeadRight,

          Forward_2 +
          RunRight.changeBeats(4).scale(1.0,2.5) +
          Forward +
          LeadRight,

          Forward_2 +
          RunRight.changeBeats(4).scale(0.5,1.75) +
          Forward +
          LeadRight.scale(1.0,1.5),

          Forward_2 +
          ExtendRight.changeBeats(1.5).scale(1.0,0.25) +
          CastRight.scale(0.75,0.75) +
          ExtendLeft.scale(1.0,0.25)
      ]),

    AnimatedCall('Transfer and Crossfire',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:3,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:0),
  ]),
      group:'Transfer and',
      paths:[
          RunRight.changeBeats(4).scale(1.0,2.5) +
          Forward_3 +
          LeadRight,

          Forward_2 +
          RunRight.changeBeats(4).scale(1.0,2.5) +
          Forward +
          LeadRight,

          Forward.changeBeats(3).changehands(2) +
          SwingLeft +
          Forward,

          Forward.changeBeats(3).changehands(1) +
          RunLeft.changeBeats(4).scale(1.0,2.0).skew(1.0,0.0)
      ]),

    AnimatedCall('Transfer and Cut the Diamond',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:3,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:0),
  ]),
      group:'Transfer and',
      paths:[
          RunRight.changeBeats(4).scale(1.0,2.5) +
          Forward_3 +
          LeadRight,

          Forward_2 +
          RunRight.changeBeats(4).scale(1.0,2.5) +
          Forward +
          LeadRight,

          Forward.changeBeats(3) +
          Forward_2 +
          LeadRight,

          Forward.changeBeats(3) +
          DodgeLeft +
          SwingLeft
      ]),

    AnimatedCall('Transfer and Follow Your Neighbor',
      formation:Formations.ColumnRHGBGB,
      group:'Transfer and',
      paths:[
          RunRight.changeBeats(4).scale(1.0,2.5) +
          Forward_3 +
          LeadRight,

          Forward_2 +
          RunRight.changeBeats(4).scale(1.0,2.5) +
          Forward +
          LeadRight,

          Forward_2 +
          Forward +
          LeadRight.changeBeats(2.5).scale(2.0,1.0) +
          RunRight.scale(1.0,0.5),

          Forward_2 +
          Forward +
          CastRight
      ]),

    AnimatedCall('Transfer and Peel and Trail',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:3,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:90),
  ]),
      group:'Transfer and',
      paths:[
          RunRight.changeBeats(4).scale(1.0,2.5) +
          Forward_3 +
          LeadRight,

          Forward_2 +
          RunRight.changeBeats(4).scale(1.0,2.5) +
          Forward +
          LeadRight,

          Forward_2.changeBeats(3) +
          RunRight.skew(-1.0,0.0),

          Forward_2.changeBeats(3) +
          Forward +
          SwingRight
      ]),

    AnimatedCall('Transfer and Peel the Top',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:3,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:90),
  ]),
      group:'Transfer and',
      paths:[
          RunRight.changeBeats(3).scale(1.0,2.0) +
          Forward_3 +
          QuarterRight.skew(1.0,0.0),

          Forward_2 +
          RunLeft.scale(1.0,0.5).skew(-1.0,0.0) +
          LeadLeft.changeBeats(3).scale(3.0,2.0),

          Forward_2 +
          RunRight.changeBeats(3).scale(1.0,2.0) +
          Forward +
          QuarterRight.skew(1.0,0.0),

          Forward_3 +
          CastRight
      ]),

    AnimatedCall('Transfer and Quarter Thru',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:3,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:90),
  ]),
      from:'Columns',group:'Transfer and',
      paths:[
          RunRight.changeBeats(3).scale(1.0,2.0) +
          Forward_3 +
          QuarterRight.skew(1.0,0.0),

          Forward_2 +
          LeadRight.changeBeats(3).changehands(6).scale(2.0,1.0) +
          Stand,

          Forward_2 +
          RunRight.changeBeats(3).scale(1.0,2.0) +
          Forward +
          QuarterRight.skew(1.0,0.0),

          Forward_2 +
          QuarterRight.changeBeats(3).changehands(6).skew(0.0,-1.0) +
          SwingLeft
      ]),

    AnimatedCall('Transfer and Remake',
      formation:Formations.ColumnRHGBGB,
      group:'Transfer and',
      paths:[
          RunRight.changeBeats(4).scale(1.0,2.5) +
          Forward_3 +
          LeadRight,

          Forward_2 +
          RunRight.changeBeats(4).scale(1.0,2.5) +
          Forward +
          LeadRight,

          Forward_2 +
          HingeRight.scale(0.5,1.0) +
          Stand.changeBeats(3) +
          SwingRight.scale(0.5,0.5) +
          HingeRight.scale(1.0,0.5),

          Forward_2 +
          HingeRight.scale(0.5,1.0) +
          SwingLeft.scale(0.5,0.5) +
          SwingRight.scale(0.5,0.5) +
          HingeRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Transfer and Single Wheel',
      formation:Formations.ColumnRHGBGB,
      group:'Transfer and',
      paths:[
          RunRight.changeBeats(4).scale(1.0,2.5) +
          Forward_3 +
          LeadRight,

          Forward_2 +
          RunRight.changeBeats(4).scale(1.0,2.5) +
          Forward +
          LeadRight,

          Forward_2 +
          UmTurnRight.changeBeats(3).skew(2.0,-1.0),

          Forward_2 +
          FlipRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Transfer and Turn and Deal',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:3,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:1,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:-3,angle:180),
  ]),
      group:'Transfer and',
      paths:[
          RunLeft.changeBeats(4).scale(1.0,2.5) +
          Forward_3 +
          LeadLeft,

          Forward_2 +
          RunLeft.changeBeats(4).scale(1.0,2.5) +
          Forward +
          LeadLeft,

          Forward.changeBeats(3) +
          LeadRight.changeBeats(2) +
          QuarterRight.changeBeats(2).skew(1.0,0.0),

          Forward.changeBeats(3) +
          LeadRight.changeBeats(2) +
          QuarterRight.changeBeats(2).skew(1.0,0.0)
      ]),
  ];

