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

  final List<AnimatedCall> VerticalTag = [

    AnimatedCall('Vertical Tag',
      formation:Formations.FacingCouples,
      from:'Facing Couples',
      paths:[
          Stand.changeBeats(2) +
          Forward +
          ExtendRight.changeBeats(2).scale(2.0,1.0),

          ExtendLeft.changeBeats(2).scale(2.0,1.5) +
          ExtendRight.changeBeats(3).scale(3.0,0.5)
      ]),

    AnimatedCall('Vertical Tag',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:2,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:2,angle:90),
  ]),
      from:'Couples Facing Out',
      paths:[
          UmTurnLeft.skew(-1.5,0.5) +
          Forward +
          ExtendRight.changeBeats(2.5).scale(2.5,0.5),

          FlipRight.skew(0.5,0.5) +
          Forward_2 +
          ExtendRight.changeBeats(1.5).scale(1.5,0.5)
      ]),

    AnimatedCall('Vertical Tag',
      formation:Formations.BoxRH,
      from:'Right-Hand Box',
      paths:[
          Forward_2.changeBeats(3) +
          ExtendRight.changeBeats(3).scale(3.0,1.0),

          FlipRight +
          Forward +
          ExtendRight.changeBeats(2).scale(2.0,1.0)
      ]),

    AnimatedCall('Vertical Tag',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:1,y:2,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:2,angle:270),
  ]),
      from:'Left-Hand Box',
      paths:[
          UmTurnLeft.changeBeats(2).skew(0.0,0.5) +
          Forward_2 +
          ExtendRight.scale(1.0,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,1.5) +
          Forward_2 +
          ExtendRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Vertical 1/4 Tag',
      formation:Formations.FacingCouples,
      from:'Facing Couples',
      paths:[
          DodgeRight.scale(1.0,0.5),

          ExtendLeft.changeBeats(3).scale(2.0,2.0)
      ]),

    AnimatedCall('Vertical 1/4 Tag',
      formation:Formations.CouplesFacingOut,
      from:'Couples Facing Out',
      paths:[
          UmTurnLeft.skew(-1.0,0.0) +
          Forward,

          FlipRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Vertical 1/4 Tag',
      formation:Formations.BoxRH,
      from:'Right-Hand Box',
      paths:[
          Forward_2.changeBeats(3),

          FlipRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Vertical 1/4 Tag',
      formation:Formations.BoxLH,
      from:'Left-Hand Box',
      paths:[
          FlipLeft.scale(1.0,0.5),

          ExtendLeft.changeBeats(3).scale(2.0,2.0)
      ]),

    AnimatedCall('Vertical 1/2 Tag',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:1,y:1.5,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1.5,angle:270),
  ]),
      from:'Facing Couples',
      paths:[
          DodgeRight.changeBeats(2).scale(1.0,0.25) +
          DodgeLeft.changeBeats(2).scale(1.0,0.25),

          ExtendLeft.changeBeats(2).scale(1.5,1.5) +
          ExtendLeft.changeBeats(2).scale(1.5,0.5)
      ]),

    AnimatedCall('Vertical 1/2 Tag',
      formation:Formations.CouplesFacingOut,
      from:'Couples Facing Out',
      paths:[
          UmTurnLeft.skew(-2.0,0.0) +
          Forward_2,

          FlipRight
      ]),

    AnimatedCall('Vertical 1/2 Tag',
      formation:Formations.BoxRH,
      from:'Right-Hand Box',
      paths:[
          Forward_4.changeBeats(3),

          FlipRight
      ]),

    AnimatedCall('Vertical 1/2 Tag',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:1,y:2,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:2,angle:270),
  ]),
      from:'Left-Hand Box',
      paths:[
          UmTurnLeft.changeBeats(2).skew(0.0,0.5) +
          DodgeLeft.changeBeats(2).scale(1.0,0.25),

          ExtendLeft.changeBeats(2).scale(2.0,1.5) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Vertical 3/4 Tag',
      formation:Formations.FacingCouples,
      from:'Facing Couples',
      paths:[
          Stand.changeBeats(2) +
          Forward_2,

          ExtendLeft.changeBeats(2).scale(2.0,1.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Vertical 3/4 Tag',
      formation:Formations.CouplesFacingOut,
      from:'Couples Facing Out',
      paths:[
          UmTurnLeft.skew(-2.0,0.0) +
          ExtendRight.changeBeats(2).scale(2.0,1.0),

          FlipRight +
          Forward_2
      ]),

    AnimatedCall('Vertical 3/4 Tag',
      formation:Formations.BoxRH,
      from:'Right-Hand Box',
      paths:[
          Forward_2 +
          ExtendRight.changeBeats(2).scale(2.0,1.0),

          FlipRight.skew(-1.0,0.0) +
          Forward
      ]),

    AnimatedCall('Vertical 3/4 Tag',
      formation:Formations.BoxLH,
      from:'Left-Hand Box',
      paths:[
          UmTurnLeft.changeBeats(2).skew(0.0,0.5) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,1.5) +
          Forward +
          ExtendRight.scale(1.0,0.5)
      ]),

    AnimatedCall('All 8 Vertical 1/2 Tag',
      formation:Formations.StaticSquare,
      group:' ',
      paths:[
          Path(),

          ExtendLeft.changeBeats(3).scale(3.0,2.0) +
          Forward_3,

          Path(),

          ExtendLeft.changeBeats(3).scale(3.0,2.0) +
          Forward_3
      ]),
  ];

