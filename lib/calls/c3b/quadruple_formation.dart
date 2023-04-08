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

  final List<AnimatedCall> QuadrupleFormation = [

    AnimatedCall('Quadruple Box Split Swap',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:1,y:5.25,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:3.75,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:2.25,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:.75,angle:0),
        DancerModel.fromData(gender:Gender.PHANTOM,x:1,y:.75,angle:180),
        DancerModel.fromData(gender:Gender.PHANTOM,x:1,y:2.25,angle:180),
        DancerModel.fromData(gender:Gender.PHANTOM,x:-1,y:3.75,angle:0),
        DancerModel.fromData(gender:Gender.PHANTOM,x:-1,y:5.25,angle:0),
  ]),
      group:' ',
      paths:[
          QuarterRight.changeBeats(2).skew(2.0,0.0),

          QuarterRight.changeBeats(2).skew(0.0,-1.5),

          QuarterRight.changeBeats(2).skew(0.0,-1.5),

          QuarterRight.changeBeats(2).skew(2.0,0.0),

          QuarterRight.changeBeats(2).skew(0.0,-1.5),

          QuarterRight.changeBeats(2).skew(2.0,0.0),

          QuarterRight.changeBeats(2).skew(2.0,0.0),

          QuarterRight.changeBeats(2).skew(0.0,-1.5)
      ]),

    AnimatedCall('Quadruple Column Pass and Roll',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:3,y:3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:1,angle:0),
        DancerModel.fromData(gender:Gender.PHANTOM,x:3,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.PHANTOM,x:3,y:-3,angle:180),
        DancerModel.fromData(gender:Gender.PHANTOM,x:1,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.PHANTOM,x:1,y:-3,angle:0),
  ]),
      group:' ',
      paths:[
          ExtendLeft.scale(1.0,0.5) +
          Forward_2 +
          SwingRight.scale(0.5,0.5) +
          Forward +
          Forward +
          UmTurnRight.skew(0.0,-1.0),

          ExtendLeft.scale(1.0,0.5) +
          Forward_2 +
          SwingRight.scale(0.5,0.5) +
          Forward +
          Forward +
          UmTurnRight.skew(0.0,-1.0),

          ExtendLeft.scale(1.0,0.5) +
          Forward +
          FlipRight.scale(1.0,0.5) +
          Forward_3 +
          Forward_2,

          ExtendLeft.scale(1.0,0.5) +
          Forward +
          FlipRight.scale(1.0,0.5) +
          Forward_3 +
          Forward_2,

          ExtendLeft.scale(1.0,0.5) +
          Forward_2 +
          SwingRight.scale(0.5,0.5) +
          Forward +
          Forward +
          UmTurnRight.skew(0.0,-1.0),

          ExtendLeft.scale(1.0,0.5) +
          Forward_2 +
          SwingRight.scale(0.5,0.5) +
          Forward +
          Forward +
          UmTurnRight.skew(0.0,-1.0),

          ExtendLeft.scale(1.0,0.5) +
          Forward +
          FlipRight.scale(1.0,0.5) +
          Forward_3 +
          Forward_2,

          ExtendLeft.scale(1.0,0.5) +
          Forward +
          FlipRight.scale(1.0,0.5) +
          Forward_3 +
          Forward_2
      ]),

    AnimatedCall('Quadruple Line Bend the Line',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:3,y:3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:1,angle:0),
        DancerModel.fromData(gender:Gender.PHANTOM,x:3,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.PHANTOM,x:3,y:-3,angle:180),
        DancerModel.fromData(gender:Gender.PHANTOM,x:1,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.PHANTOM,x:1,y:-3,angle:0),
  ]),
      group:' ',
      paths:[
          HingeLeft.scale(0.5,1.0),

          BackHingeRight.scale(0.5,1.0),

          HingeRight.scale(0.5,1.0),

          BackHingeLeft.scale(0.5,1.0),

          BackHingeLeft.scale(0.5,1.0),

          HingeRight.scale(0.5,1.0),

          BackHingeRight.scale(0.5,1.0),

          HingeLeft.scale(0.5,1.0)
      ]),

    AnimatedCall('Quadruple Wave Swing Thru',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:1,y:3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:3,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:1,angle:180),
        DancerModel.fromData(gender:Gender.PHANTOM,x:1,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.PHANTOM,x:1,y:-3,angle:0),
        DancerModel.fromData(gender:Gender.PHANTOM,x:3,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.PHANTOM,x:3,y:-3,angle:180),
  ]),
      group:' ',fractions:'3',
      paths:[
          Stand.changeBeats(3) +
          SwingLeft.scale(0.65,1.0),

          SwingRight.scale(0.65,1.0) +
          SwingLeft.scale(0.65,1.0),

          SwingRight.scale(0.65,1.0) +
          SwingLeft.scale(0.65,1.0),

          SwingRight.scale(0.65,1.0) +
          Stand.changeBeats(3),

          SwingRight.scale(0.65,1.0) +
          SwingLeft.scale(0.65,1.0),

          Stand.changeBeats(3) +
          SwingLeft.scale(0.65,1.0),

          SwingRight.scale(0.65,1.0) +
          Stand.changeBeats(3),

          SwingRight.scale(0.65,1.0) +
          SwingLeft.scale(0.65,1.0)
      ]),

    AnimatedCall('Quadruple Waves of 3 Swing Thru',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:1,y:2,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:0,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:3,y:2,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:0,angle:180),
        DancerModel.fromData(gender:Gender.PHANTOM,x:3,y:-2,angle:0),
        DancerModel.fromData(gender:Gender.PHANTOM,x:1,y:-2,angle:180),
  ]),
      group:' ',fractions:'3',
      paths:[
          Stand.changeBeats(3) +
          SwingLeft.scale(0.65,1.0),

          SwingRight.scale(0.65,1.0) +
          Stand.changeBeats(3),

          SwingRight.scale(0.65,1.0) +
          SwingLeft.scale(0.65,1.0),

          SwingRight.scale(0.65,1.0) +
          Stand.changeBeats(3),

          Stand.changeBeats(3) +
          SwingLeft.scale(0.65,1.0),

          SwingRight.scale(0.65,1.0) +
          SwingLeft.scale(0.65,1.0)
      ]),
  ];

