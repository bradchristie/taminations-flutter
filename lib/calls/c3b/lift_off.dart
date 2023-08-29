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
import '../../moves.dart';

  final List<AnimatedCall> LiftOff = [

    AnimatedCall('Lift Off',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:1,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-3,angle:90),
  ]),
      group:' ',fractions:'3;4;2',
      paths:[
          HingeRight.changeBeats(3).skew(1.0,0.0) +
          Stand.changeBeats(4) +
          Forward_2.changehands(Hands.RIGHT) +
          RunRight.changeBeats(5).changehands(Hands.RIGHT).scale(3.0,3.0),

          QuarterRight.changeBeats(3).changehands(Hands.LEFT).skew(0.0,1.0) +
          Forward +
          RunRight.skew(2.0,0.0) +
          Forward.changeBeats(2).changehands(Hands.LEFT) +
          Forward_4.changeBeats(5).changehands(Hands.LEFT),

          DodgeLeft.changehands(Hands.RIGHT) +
          Stand.changeBeats(4) +
          Forward.changeBeats(2).changehands(Hands.RIGHT) +
          Forward_4.changeBeats(5).changehands(Hands.RIGHT),

          DodgeLeft.changehands(Hands.LEFT) +
          Forward_3.changeBeats(4) +
          Forward_2.changehands(Hands.LEFT) +
          RunRight.changeBeats(5).changehands(Hands.LEFT)
      ]),

    AnimatedCall('Mirror Lift Off',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:1,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-3,angle:90),
  ]),
      group:' ',fractions:'3;4;2',
      paths:[
          QuarterLeft.changeBeats(3).changehands(Hands.RIGHT).skew(0.0,-1.0) +
          Forward +
          RunLeft.skew(2.0,0.0) +
          Forward.changeBeats(2).changehands(Hands.RIGHT) +
          Forward_4.changeBeats(5).changehands(Hands.RIGHT),

          HingeLeft.changeBeats(3).skew(1.0,0.0) +
          Stand.changeBeats(4) +
          Forward_2.changehands(Hands.LEFT) +
          RunLeft.changeBeats(5).changehands(Hands.LEFT).scale(3.0,3.0),

          DodgeRight.changehands(Hands.RIGHT) +
          Forward_3.changeBeats(4) +
          Forward_2.changehands(Hands.RIGHT) +
          RunLeft.changeBeats(5).changehands(Hands.RIGHT),

          DodgeRight.changehands(Hands.LEFT) +
          Stand.changeBeats(4) +
          Forward.changeBeats(2).changehands(Hands.LEFT) +
          Forward_4.changeBeats(5).changehands(Hands.LEFT)
      ]),
  ];

