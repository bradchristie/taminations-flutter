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
        CounterRotateRight(5,-1).changeBeats(4) +
            CounterRotateRight(2,0).changeBeats(2).changehands(Hands.RIGHT).skew(1.0,0.0) +
            CounterRotateRight(4,2) +
            QuarterRight.changeBeats(2).skew(0, 1),

        CounterRotateLeft(-1,3).changeBeats(4) +
            CounterRotateRight(0,-2).changeBeats(2).changehands(Hands.RIGHT).skew(-1.0,0.0) +
            CounterRotateRight(-2,-4) +
            QuarterRight.changeBeats(2).skew(0, 1),

        CounterRotateLeft(3,-1).changeBeats(4) +
            CounterRotateRight(2,0).changeBeats(2).changehands(Hands.RIGHT).skew(1.0,0.0) +
            HingeRight.changeBeats(2).scale(0.5, 1) +
            LeadRight.changeBeats(2).scale(1.5, 1.5),

        CounterRotateRight(1,-5).changeBeats(4) +
            CounterRotateRight(0,-2).changeBeats(2).changehands(Hands.RIGHT).skew(-1.0,0.0) +
            HingeRight.changeBeats(2).scale(0.5, 1) +
            HingeLeft.changeBeats(2).scale(.5, .5)
      ]),

  AnimatedCall('Last Half Tandem Z Axle',
      formation: Formation('', dancers:[
        Dancer.fromData(gender:Gender.GIRL,x:-2,y:1,angle:180),
        Dancer.fromData(gender:Gender.BOY,x:0,y:-3,angle:180),
        Dancer.fromData(gender:Gender.GIRL,x:-2,y:-3,angle:180),
        Dancer.fromData(gender:Gender.BOY,x:0,y:-1,angle:0),
      ]),
      group: ' ',
      parts: '3;3.5',
      paths: [
        RunRight.skew(-2, -.5) +
            LeadRight.scale(1, .5) +
            CounterRotateRight(2,0) +
            CounterRotateLeft(2,0) +
            CounterRotateLeft(2,0),

        DodgeRight.scale(1, .25) +
            QuarterLeft.skew(-1, .5) +
            CounterRotateRight(0,-2),

        RunRight.skew(-2, -.5) +
            LeadRight.scale(1, .5) +
            CounterRotateRight(2,0),

        DodgeRight.scale(1, .25) +
            QuarterLeft.skew(-1, .5) +
            CounterRotateRight(0,-2) +
            CounterRotateLeft(0,2) +
            CounterRotateLeft(0,2)

      ])

];