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

  final List<AnimatedCall> AnythingAndCircle = [ 

    AnimatedCall('All 8 Recycle and Circle 1/4',
      formation:Formations.MixedQuarterTag1,
      group:' ',parts:'6',
      paths:[
          UmTurnRight.changeBeats(6).changehands(6).skew(3.0,0.0),

          RunRight.changeBeats(6).changehands(6).skew(-3.0,-2.0) +
          RunRight.changeBeats(4).skew(3.0,0.0),

          CrossFoldRight.changeBeats(6).scale(1.5,1.0) +
          ExtendLeft.changeBeats(4).scale(3.0,2.0),

          RunRight.scale(1.0,0.5).skew(-1.5,0.0) +
          RunRight.scale(1.0,0.5).skew(1.5,0.0) +
          DodgeLeft.changeBeats(4)
      ]),

    AnimatedCall('Diamond Circulate and Circle 1/4',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:0,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:0,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:0),
  ]),
      group:' ',parts:'3',
      paths:[
          LeadRight.changeBeats(3).scale(1.0,3.0) +
          Stand.changeBeats(4),

          LeadRight.changeBeats(3).scale(3.0,1.0) +
          RunRight.changeBeats(4).skew(3.0,0.0),

          Stand.changeBeats(3) +
          ExtendLeft.changeBeats(4).scale(3.0,2.0),

          Stand.changeBeats(3) +
          DodgeLeft.changeBeats(4)
      ]),

    AnimatedCall('Heads Spin the Top and Circle 1/4',
      formation:Formations.StaticSquare,
      group:' ',parts:'6;4.5',
      paths:[
          ExtendLeft.changeBeats(3).scale(3.0,0.5) +
          SwingRight.changehands(6).scale(0.5,0.5) +
          HingeLeft.scale(1.0,0.5) +
          SwingLeft,

          ExtendLeft.changeBeats(3).scale(3.0,0.5) +
          SwingRight.changehands(6).scale(0.5,0.5) +
          LeadRight.changeBeats(4.5).scale(3.0,1.5) +
          RunRight.changeBeats(4).skew(3.0,0.0),

          Stand.changeBeats(10.5) +
          ExtendLeft.changeBeats(4).scale(3.0,2.0),

          Stand.changeBeats(10.5) +
          DodgeLeft.changeBeats(4)
      ]),

    AnimatedCall('Inlet and Circle 1/4',
      formation:Formations.OceanWavesRHBGGB,
      group:' ',parts:'4',
      paths:[
          RunRight.changeBeats(4).changehands(6).skew(2.0,0.0) +
          Stand.changeBeats(4),

          RunRight.changeBeats(4).changehands(6).skew(-2.0,0.0) +
          RunRight.changeBeats(4).skew(3.0,0.0),

          RunRight.changeBeats(2).scale(0.5,0.5).skew(-0.5,0.0) +
          RunRight.changeBeats(2).scale(0.5,0.5).skew(0.5,0.0) +
          DodgeLeft.changeBeats(4),

          RunRight.changeBeats(4).skew(1.0,-2.0) +
          ExtendLeft.changeBeats(4).scale(3.0,2.0)
      ]),

    AnimatedCall('Switch and Circle 1/4',
      formation:Formations.QuarterTag,
      group:' ',fractions:'3',
      paths:[
          Stand.changeBeats(3).changehands(2) +
          ExtendLeft.changeBeats(4).scale(3.0,2.0),

          Stand.changeBeats(3).changehands(1) +
          DodgeLeft.changeBeats(4),

          RunRight.scale(1.0,2.0),

          RunRight +
          RunRight.changeBeats(4).skew(3.0,0.0)
      ]),

    AnimatedCall('Switch and Circle 1/2',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:0,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:0),
  ]),
      group:' ',parts:'4;4;4',
      paths:[
          RunRight.changeBeats(4).scale(1.0,2.0) +
          Stand.changeBeats(4) +
          FlipLeft.changeBeats(4) +
          RunLeft.changeBeats(4).skew(3.0,0.0),

          FlipLeft.changeBeats(4) +
          RunLeft.changeBeats(4).skew(3.0,0.0) +
          Stand.changeBeats(4) +
          DodgeRight.changeBeats(4),

          Stand.changeBeats(4) +
          FlipLeft.changeBeats(4) +
          Stand.changeBeats(4) +
          ExtendRight.changeBeats(4).scale(3.0,2.0),

          Stand.changeBeats(4) +
          ExtendRight.changeBeats(4).scale(3.0,2.0) +
          RunLeft.changeBeats(4).scale(1.0,2.0) +
          Stand.changeBeats(4)
      ]),

    AnimatedCall('Swing and Mix and Circle 1/2',
      formation:Formations.QuarterTag,
      group:' ',fractions:'8;4;8',
      paths:[
          Stand.changeBeats(8).changehands(2) +
          DodgeRight.changeBeats(4) +
          Stand.changeBeats(8).changehands(2) +
          DodgeLeft.changeBeats(4),

          Stand.changeBeats(8).changehands(1) +
          ExtendRight.changeBeats(4).scale(3.0,2.0) +
          SwingLeft +
          RunRight.changeBeats(5).scale(1.5,2.0) +
          RunRight.changeBeats(4).skew(3.0,0.0),

          SwingRight +
          RunLeft.changeBeats(5).scale(1.5,2.0) +
          RunLeft.changeBeats(4).skew(3.0,0.0) +
          Stand.changeBeats(8).changehands(2) +
          ExtendLeft.changeBeats(4).scale(3.0,2.0),

          SwingRight +
          DodgeRight.changeBeats(2) +
          SwingRight +
          Stand.changeBeats(4).changehands(2) +
          SwingLeft +
          DodgeLeft.changeBeats(2) +
          SwingLeft +
          Stand.changeBeats(4).changehands(1)
      ]),
  ];

