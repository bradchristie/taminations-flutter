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

  final List<AnimatedCall> OddlyEvenlyConcept = [

    AnimatedCall('Oddly Once Removed Reset',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:3,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-3,angle:90),
  ]),
      group:'Oddly',fractions:'4;2;4',
      paths:[
          RunLeft.changeBeats(4).skew(-1.0,0.0) +
          HingeLeft.changeBeats(2) +
          ExtendRight.changeBeats(4).scale(2.0,0.5) +
          HingeLeft.changeBeats(2).scale(1.0,0.5),

          RunLeft.changeBeats(4).skew(-3.0,0.0) +
          HingeLeft.changeBeats(2) +
          ExtendLeft.changeBeats(4).scale(2.0,1.5) +
          HingeLeft.changeBeats(2).scale(1.0,0.5),

          Forward_3.changeBeats(4) +
          HingeLeft.changeBeats(2) +
          RunRight.changeBeats(4).scale(1.0,0.25).skew(-2.0,0.0) +
          HingeRight.changeBeats(2).scale(1.0,0.5),

          Forward.changeBeats(4) +
          HingeLeft.changeBeats(2) +
          RunLeft.changeBeats(4).scale(1.0,0.75).skew(-2.0,0.0) +
          HingeRight.changeBeats(2).scale(1.0,0.5)
      ]),

    AnimatedCall('Oddly Tandem Remake',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:3,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-3,angle:90),
  ]),
      group:'Oddly',fractions:'3;3',
      paths:[
          CounterRotateRight_0_m2.changeBeats(3).changehands(Hands.RIGHT).skew(0.0,-1.0) +
          Stand.changeBeats(3) +
          CounterRotateRight_0_m2.changeBeats(3).changehands(Hands.RIGHT).skew(-1.0,0.0) +
          CounterRotateRight_0_m2.changeBeats(3).changehands(Hands.RIGHT) +
          CounterRotateRight_0_m2.changeBeats(3).changehands(Hands.RIGHT),

          CounterRotateRight_2_0.changeBeats(3).changehands(Hands.RIGHT).skew(0.0,1.0) +
          Stand.changeBeats(3) +
          CounterRotateRight_2_0.changeBeats(3).changehands(Hands.RIGHT).skew(1.0,0.0) +
          CounterRotateRight_2_0.changeBeats(3).changehands(Hands.RIGHT) +
          CounterRotateRight_2_0.changeBeats(3).changehands(Hands.RIGHT),

          CounterRotateRight_0_m2.changeBeats(3).changehands(Hands.RIGHT).skew(0.0,-1.0) +
          SwingLeft +
          CounterRotateRight_2_0.changeBeats(3).changehands(Hands.RIGHT).skew(1.0,0.0) +
          CounterRotateRight_2_0.changeBeats(3).changehands(Hands.RIGHT) +
          CounterRotateRight_2_0.changeBeats(3).changehands(Hands.RIGHT),

          CounterRotateRight_2_0.changeBeats(3).changehands(Hands.RIGHT).skew(0.0,1.0) +
          SwingLeft +
          CounterRotateRight_0_m2.changeBeats(3).changehands(Hands.RIGHT).skew(-1.0,0.0) +
          CounterRotateRight_0_m2.changeBeats(3).changehands(Hands.RIGHT) +
          CounterRotateRight_0_m2.changeBeats(3).changehands(Hands.RIGHT)
      ]),

    AnimatedCall('Oddly Tandem Swing and Mix',
      formation:Formation('Ocean Waves RH BGGB'),
      group:'Oddly',fractions:'4;4',
      paths:[
          CounterRotateRight_2_0.changehands(Hands.RIGHT).skew(1.0,0.0) +
          CounterRotateRight_2_0.changehands(Hands.RIGHT).skew(0.0,1.0) +
          RunLeft.changeBeats(4).scale(1.0,2.0),

          CounterRotateRight_0_m2.changehands(Hands.RIGHT).skew(-1.0,0.0) +
          CounterRotateRight_0_m2.changehands(Hands.RIGHT).skew(0.0,-1.0) +
          DodgeRight.changeBeats(4) +
          CounterRotateRight_0_m2.changehands(Hands.RIGHT).skew(-1.0,0.0) +
          CounterRotateRight_0_m2.changehands(Hands.RIGHT).skew(0.0,-1.0),

          CounterRotateRight_2_0.changehands(Hands.RIGHT).skew(1.0,0.0) +
          CounterRotateRight_2_0.changehands(Hands.RIGHT).skew(0.0,1.0) +
          DodgeRight.changeBeats(4) +
          CounterRotateRight_2_0.changehands(Hands.RIGHT).skew(1.0,0.0) +
          CounterRotateRight_2_0.changehands(Hands.RIGHT).skew(0.0,1.0),

          CounterRotateRight_0_m2.changehands(Hands.RIGHT).skew(-1.0,0.0) +
          CounterRotateRight_0_m2.changehands(Hands.RIGHT).skew(0.0,-1.0) +
          RunLeft.changeBeats(4).scale(1.0,2.0)
      ]),
  ];

