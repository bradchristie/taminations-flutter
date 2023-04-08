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

  final List<AnimatedCall> TandemBasedTriangle = [

    AnimatedCall('Triangle Peel and Trail',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:0,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-3.1,angle:180),
  ]),
      group:'Triangle',
      paths:[
          ExtendRight +
          SwingRight.scale(0.75,0.75),

          UmTurnLeft.changeBeats(4).skew(-1.0,0.25),

          Path(),

          Stand.changeBeats(1) +
          SwingRight.scale(0.75,0.5)
      ]),

    AnimatedCall('Triangle Recycle',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:0,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-3.1,angle:180),
  ]),
      group:'Triangle',
      paths:[
          UmTurnRight.skew(1.0,0.25),

          ExtendLeft.changeBeats(4).scale(1.0,2.5),

          Path(),

          FlipRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Triangle Swap Around',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:0,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-3.1,angle:180),
  ]),
      group:'Triangle',
      paths:[
          FlipRight.scale(1.0,1.05).skew(1.0,0.0),

          Forward_2.changeBeats(3),

          Path(),

          FlipRight.scale(1.0,1.05).skew(-1.0,0.0)
      ]),

    AnimatedCall('Triangle Wheel Thru',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:0,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-3.1,angle:180),
  ]),
      group:'Triangle',
      paths:[
          LeadRight +
          Forward,

          QuarterRight.changeBeats(2.5),

          Path(),

          LeadRight +
          Forward.scale(1.1,1.0)
      ]),

    AnimatedCall('Outside Triangle Cross Your Neighbor',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:4.2,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:4.2,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:2.1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:0,angle:180),
  ]),
      group:'Outside Triangle',
      paths:[
          DodgeRight.changeBeats(2).scale(1.0,0.85) +
          ExtendRight.scale(1.0,0.5) +
          CastLeft,

          Forward +
          LeadRight.changeBeats(3).scale(2.0,1.2) +
          RunRight.scale(0.5,0.5),

          DodgeRight.scale(1.0,0.95) +
          CastLeft,

          Path()
      ]),

    AnimatedCall('Outside Triangle Peel and Trail',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:4.2,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:4.2,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:2.1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:0,angle:180),
  ]),
      group:'Outside Triangle',
      paths:[
          Forward.skew(0.0,-0.2) +
          SwingRight,

          RunLeft.scale(0.5,0.4).skew(-1.0,0.0),

          Stand.changeBeats(1) +
          SwingRight.scale(1.0,0.7),

          Path()
      ]),

    AnimatedCall('Outside Triangle Peel the Top',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:4.2,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:4.2,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:2.1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:0,angle:180),
  ]),
      group:'Outside Triangle',
      paths:[
          Forward.skew(0.0,-0.2) +
          CastRight,

          RunLeft.scale(0.25,0.75).skew(-1.0,0.0) +
          LeadLeft.changeBeats(3).scale(3.0,2.7),

          Stand.changeBeats(1) +
          HingeRight.scale(1.0,0.9) +
          SwingRight,

          Path()
      ]),

    AnimatedCall('Outside Triangle Peel to a Diamond',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:4.2,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:4.2,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:2.1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:0,angle:180),
  ]),
      group:'Outside Triangle',
      paths:[
          Forward +
          HingeRight.changeBeats(2).scale(1.0,1.7),

          RunLeft.scale(0.5,0.4).skew(-1.0,0.0),

          Stand +
          QuarterRight.changeBeats(2).skew(1.0,-0.4),

          Path()
      ]),
  ];

