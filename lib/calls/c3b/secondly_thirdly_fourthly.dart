/*

  Taminations Square Dance Animations
  Copyright (C) 2026 Brad Christie

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

  final List<AnimatedCall> SecondlyThirdlyFourthly = [

    AnimatedCall('Secondly Generous Crazy Hinge',
      formation:Formation('Ocean Waves RH BGGB'),
      group:'Secondly',fractions:'2;3;2',
      paths:[
          HingeRight.changeBeats(2) +
          SwingLeft +
          HingeRight.changeBeats(2),

          HingeRight.changeBeats(2) +
          Stand.changeBeats(3) +
          HingeRight.changeBeats(2),

          HingeRight.changeBeats(2) +
          SwingLeft +
          HingeRight.changeBeats(2) +
          HingeLeft.changeBeats(2),

          HingeRight.changeBeats(2) +
          Stand.changeBeats(3) +
          HingeRight.changeBeats(2) +
          HingeLeft.changeBeats(2)
      ]),

    AnimatedCall('Secondly Split Turn the Key',
      formation:Formation('Ocean Waves RH BGGB'),
      group:'Secondly',fractions:'3;2',
      paths:[
          SwingRight +
          CounterRotateRight_0_m2.changehands(Hands.RIGHT).skew(-1.0,0.0) +
          HingeRight.scale(0.5,1.0),

          SwingRight +
          CounterRotateRight_2_0.changehands(Hands.RIGHT).skew(1.0,0.0) +
          HingeRight.scale(0.5,1.0),

          SwingRight +
          CounterRotateRight_0_m2.changehands(Hands.RIGHT).skew(-1.0,0.0) +
          HingeRight.scale(0.5,1.0),

          SwingRight +
          CounterRotateRight_2_0.changehands(Hands.RIGHT).skew(1.0,0.0) +
          HingeRight.scale(0.5,1.0)
      ]),

    AnimatedCall('Secondly Tandem Reset',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:1,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:3,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:3,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:90),
  ]),
      group:'Secondly',fractions:'3;3;3',
      paths:[
          RunLeft.skew(-1.0,0.0) +
          CounterRotateLeft_0_2.changeBeats(3).changehands(Hands.LEFT).skew(-1.0,0.0) +
          RunRight.skew(-1.0,0.0) +
          HingeRight.changeBeats(2),

          Forward.changeBeats(3) +
          CounterRotateLeft_2_0.changeBeats(3).changehands(Hands.LEFT).skew(1.0,0.0) +
          Forward.changeBeats(3) +
          HingeRight.changeBeats(2),

          RunLeft.skew(-1.0,0.0) +
          CounterRotateLeft_2_0.changeBeats(3).changehands(Hands.LEFT).skew(1.0,0.0) +
          Forward.changeBeats(3) +
          HingeRight.changeBeats(2),

          Forward.changeBeats(3) +
          CounterRotateLeft_0_2.changeBeats(3).changehands(Hands.LEFT).skew(-1.0,0.0) +
          RunRight.skew(-1.0,0.0) +
          HingeRight.changeBeats(2)
      ]),

    AnimatedCall('Thirdly Tandem Reset',
      formation:Formation('Ocean Waves RH BGGB'),
      group:'Thirdly',fractions:'3;1.5;5',
      paths:[
          ExtendRight.changeBeats(3).scale(2.0,0.5) +
          HingeLeft.scale(1.0,0.5) +
          RunRight.skew(-1.0,0.0) +
          Forward_4.changeBeats(2) +
          HingeRight,

          RunLeft.scale(0.5,0.25).skew(-2.0,0.0) +
          HingeLeft.scale(1.0,0.5) +
          Forward_2 +
          RunRight.skew(-1.0,0.0) +
          HingeRight,

          ExtendRight.changeBeats(3).scale(2.0,0.5) +
          HingeLeft.scale(1.0,0.5) +
          Forward_3.changeBeats(5) +
          HingeRight,

          RunLeft.scale(0.5,0.25).skew(-2.0,0.0) +
          HingeLeft.scale(1.0,0.5) +
          Forward.changeBeats(5) +
          HingeRight
      ]),

    AnimatedCall('Fourthly Tandem Swing the Fractions',
      formation:Formation('Ocean Waves RH BGGB'),
      group:'Fourthly',fractions:'2;3;5;4',
      paths:[
          HingeRight.changeBeats(2) +
          SwingLeft +
          CastRight.changeBeats(5) +
          CounterRotateLeft_2_0.changehands(Hands.LEFT).skew(1.0,0.0) +
          CounterRotateLeft_2_0.changehands(Hands.LEFT).skew(0.0,-1.0) +
          HingeRight.changeBeats(2),

          HingeRight.changeBeats(2) +
          Stand.changeBeats(3) +
          CastRight.changeBeats(5) +
          CounterRotateLeft_0_2.changehands(Hands.LEFT).skew(-1.0,0.0) +
          CounterRotateLeft_0_2.changehands(Hands.LEFT).skew(0.0,1.0) +
          HingeRight.changeBeats(2),

          HingeRight.changeBeats(2) +
          SwingLeft +
          CastRight.changeBeats(5) +
          Stand.changeBeats(4) +
          HingeRight.changeBeats(2),

          HingeRight.changeBeats(2) +
          Stand.changeBeats(3) +
          CastRight.changeBeats(5) +
          Stand.changeBeats(4) +
          HingeRight.changeBeats(2)
      ]),
  ];

