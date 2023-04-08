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

  final List<AnimatedCall> CutTheDiamond = [ 

    AnimatedCall('Cut the Diamond',
      formation:Formations.DiamondRH,
      from:'Right-Hand Diamond',difficulty: 1,
      paths:[
          DodgeRight +
          SwingRight,

          Forward_2 +
          LeadRight.changeBeats(2)
      ]),

    AnimatedCall('Cut the Diamond',
      formation:Formations.DiamondLH,
      from:'Left-Hand Diamond',difficulty: 2,
      paths:[
          DodgeLeft +
          SwingLeft,

          Forward_2 +
          LeadLeft.changeBeats(2)
      ]),

    AnimatedCall('Cut the Diamond',
      formation:Formations.DiamondFacingRH,
      from:'Facing Diamond',difficulty: 2,
      paths:[
          DodgeLeft +
          SwingLeft,

          Forward_2 +
          LeadRight.changeBeats(2)
      ]),

    AnimatedCall('Cut the Diamond',
      formation:Formations.DiamondFacing,
      from:'Facing Diamond, Left-Hand Centers',difficulty: 2,
      paths:[
          DodgeRight +
          SwingRight,

          Forward_2 +
          LeadLeft.changeBeats(2)
      ]),

    AnimatedCall('Cut the Diamond',
      formation:Formations.DiamondsRHGirlPoints,
      from:'Right-Hand Diamonds',difficulty: 1,
      paths:[
          Forward_2 +
          LeadRight,

          DodgeRight +
          SwingRight,

          Forward_2 +
          LeadRight,

          DodgeRight +
          SwingRight
      ]),

    AnimatedCall('Cut the Diamond',
      formation:Formations.DiamondsLHGirlPoints,
      from:'Left-Hand Diamonds',difficulty: 2,
      paths:[
          Forward_2 +
          LeadLeft,

          DodgeLeft +
          SwingLeft,

          Forward_2 +
          LeadLeft,

          DodgeLeft +
          SwingLeft
      ]),

    AnimatedCall('Cut the Diamond',
      formation:Formations.DiamondsFacingGirlPoints,
      from:'Facing Diamonds, Right-Hand Wave',difficulty: 2,
      paths:[
          Forward_2 +
          LeadRight,

          DodgeLeft +
          SwingLeft,

          Forward_2 +
          LeadRight,

          DodgeLeft +
          SwingLeft
      ]),

    AnimatedCall('Cut the Diamond',
      formation:Formations.DiamondsFacingLHGirlPoints,
      from:'Facing Diamonds, Left-Hand Wave',difficulty: 2,
      paths:[
          Forward_2 +
          LeadLeft,

          DodgeRight +
          SwingRight,

          Forward_2 +
          LeadLeft,

          DodgeRight +
          SwingRight
      ]),

    AnimatedCall('Cut the Diamond',
      formation:Formations.Diamonds_3and_1GirlPoints,
      from:'Right-Hand Wave, Points Facing Out',difficulty: 2,
      paths:[
          Forward_2 +
          LeadRight,

          DodgeLeft +
          FlipLeft,

          Forward_2 +
          LeadRight,

          DodgeRight +
          RunRight
      ]),

    AnimatedCall('Cut the Diamond',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-2,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:-2,angle:90),
  ]),
      from:'Right-Hand Wave, Points Facing In',difficulty: 2,
      paths:[
          Forward_2 +
          LeadRight,

          DodgeRight +
          RunRight,

          Forward_2 +
          LeadRight,

          DodgeLeft +
          FlipLeft
      ]),

    AnimatedCall('Cut the Diamond',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-2,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:-2,angle:270),
  ]),
      from:'Left-Hand Wave, Points Facing Out',difficulty: 2,
      paths:[
          Forward_2 +
          LeadLeft,

          DodgeLeft +
          FlipLeft,

          Forward_2 +
          LeadLeft,

          DodgeRight +
          RunRight
      ]),

    AnimatedCall('Cut the Diamond',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-2,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:-2,angle:90),
  ]),
      from:'Left-Hand Wave, Points Facing In',difficulty: 2,
      paths:[
          Forward_2 +
          LeadLeft,

          DodgeRight +
          RunRight,

          Forward_2 +
          LeadLeft,

          DodgeLeft +
          FlipLeft
      ]),

    AnimatedCall('Cut the Diamond',
      formation:Formations.DiamondsRHPTPGirlPoints,
      from:'Point-to-Point Diamonds',difficulty: 2,
      paths:[
          Forward.changeBeats(2).scale(1.5,1.0) +
          LeadRight.changeBeats(2),

          DodgeRight.scale(0.25,0.25) +
          SwingRight.scale(0.5,0.5),

          LeadRight.changeBeats(4).scale(0.5,1.0),

          DodgeRight.scale(1.25,1.25) +
          SwingRight.scale(0.5,0.5)
      ]),

    AnimatedCall('Cut the Diamond',
      formation:Formations.DiamondsLHPTPGirlPoints,
      from:'Left-Hand Point-to-Point Diamonds',difficulty: 2,
      paths:[
          LeadLeft.changeBeats(3).scale(0.5,1.0),

          DodgeLeft.scale(0.25,0.25) +
          SwingLeft.scale(0.5,0.5),

          LeadLeft.changeBeats(3).scale(2.5,1.0),

          DodgeLeft.scale(1.25,1.25) +
          SwingLeft.scale(0.5,0.5)
      ]),

    AnimatedCall('Cut the Diamond',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:-3,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-5,angle:0),
  ]),
      from:'Facing Point-to-Point Diamonds, Right-Hand Centers',difficulty: 2,
      paths:[
          LeadRight.changeBeats(3).scale(2.5,1.0),

          DodgeLeft.scale(0.25,0.25) +
          SwingLeft.scale(0.5,0.5),

          LeadRight.changeBeats(3).scale(0.5,1.0),

          DodgeLeft.scale(1.25,1.25) +
          SwingLeft.scale(0.5,0.5)
      ]),

    AnimatedCall('Cut the Diamond',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:-3,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-5,angle:180),
  ]),
      from:'Facing Point-to-Point Diamonds, Left-Hand Centers',difficulty: 2,
      paths:[
          LeadLeft.changeBeats(3).scale(0.5,1.0),

          DodgeRight.scale(0.25,0.25) +
          SwingRight.scale(0.5,0.5),

          LeadLeft.changeBeats(3).scale(2.5,1.0),

          DodgeRight.scale(1.25,1.25) +
          SwingRight.scale(0.5,0.5)
      ]),

    AnimatedCall('Cut the Diamond',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:-3,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-5,angle:180),
  ]),
      from:'Point-to-Point Diamonds 3',difficulty: 2,
      paths:[
          LeadRight.changeBeats(3).scale(2.5,1.0),

          DodgeLeft.scale(0.25,0.25) +
          FlipLeft.scale(1.0,0.5),

          LeadRight.changeBeats(3).scale(0.5,1.0),

          DodgeRight.scale(1.25,1.25) +
          RunRight.scale(0.75,0.5)
      ]),

    AnimatedCall('Cut the Diamond',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:-3,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-5,angle:0),
  ]),
      from:'Point-to-Point Diamonds 4',difficulty: 2,
      paths:[
          LeadRight.changeBeats(3).scale(2.5,1.0),

          DodgeRight.scale(0.25,0.25) +
          RunRight.scale(0.75,0.5),

          LeadRight.changeBeats(3).skew(-0.5,0.0),

          DodgeLeft.scale(1.25,1.25) +
          FlipLeft.scale(1.0,0.5)
      ]),

    AnimatedCall('Cut the Diamond',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:-3,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-5,angle:0),
  ]),
      from:'Point-to-Point Diamonds 5',difficulty: 2,
      paths:[
          LeadLeft.changeBeats(3).scale(0.5,1.0),

          DodgeRight.scale(0.25,0.25) +
          RunRight.scale(0.75,0.5),

          LeadLeft.changeBeats(3).scale(2.5,1.0),

          DodgeLeft.scale(1.25,1.25) +
          FlipLeft.scale(1.0,0.5)
      ]),

    AnimatedCall('Cut the Diamond',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:-3,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-5,angle:180),
  ]),
      from:'Point-to-Point Diamonds 6',difficulty: 2,
      paths:[
          LeadLeft.changeBeats(3).scale(2.0,1.0).skew(-1.5,0.0),

          DodgeLeft.scale(0.25,0.25) +
          FlipLeft.scale(1.0,0.5),

          LeadLeft.changeBeats(3).scale(2.5,1.0),

          DodgeRight.scale(1.25,1.25) +
          RunRight.scale(0.75,0.5)
      ]),
  ];

