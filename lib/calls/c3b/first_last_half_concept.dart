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

final List<AnimatedCall> FirstLastHalfConcept = [

  AnimatedCall('First Half Tandem Lock ''Em Up',
      formation: Formation('Ocean Waves RH BGGB'),
      group: ' ',
      parts: '4;2',
      paths: [
        CounterRotateRight_5_m1.changeBeats(4) +
            CounterRotateRight_2_0.changeBeats(2).changehands(Hands.RIGHT).skew(1.0,0.0) +
            CounterRotateRight_4_2 +
            QuarterRight.changeBeats(2).skew(0, 1),

        CounterRotateLeft_m1_3.changeBeats(4) +
            CounterRotateRight_0_m2.changeBeats(2).changehands(Hands.RIGHT).skew(-1.0,0.0) +
            CounterRotateRight_m2_m4 +
            QuarterRight.changeBeats(2).skew(0, 1),

        CounterRotateLeft_3_m1.changeBeats(4) +
            CounterRotateRight_2_0.changeBeats(2).changehands(Hands.RIGHT).skew(1.0,0.0) +
            HingeRight.changeBeats(2).scale(0.5, 1) +
            LeadRight.changeBeats(2).scale(1.5, 1.5),

        CounterRotateRight_1_m5.changeBeats(4) +
            CounterRotateRight_0_m2.changeBeats(2).changehands(Hands.RIGHT).skew(-1.0,0.0) +
            HingeRight.changeBeats(2).scale(0.5, 1) +
            HingeLeft.changeBeats(2).scale(.5, .5)
      ]),

  AnimatedCall('Last Half Tandem Z Axle',
      formation: Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-3,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:0),
      ]),
      group: ' ',
      parts: '3;3.5',
      paths: [
        RunRight.skew(-2, -.5) +
            LeadRight.scale(1, .5) +
            CounterRotateRight_2_0 +
            CounterRotateLeft_2_0 +
            CounterRotateLeft_2_0,

        DodgeRight.scale(1, .25) +
            QuarterLeft.skew(-1, .5) +
            CounterRotateRight_0_m2,

        RunRight.skew(-2, -.5) +
            LeadRight.scale(1, .5) +
            CounterRotateRight_2_0,

        DodgeRight.scale(1, .25) +
            QuarterLeft.skew(-1, .5) +
            CounterRotateRight_0_m2 +
            CounterRotateLeft_0_2 +
            CounterRotateLeft_0_2

      ])

];