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

final List<AnimatedCall> ReverseEcho = [

  AnimatedCall('Reverse Echo Tandem Spin the Top',
      formation:Formation('Tidal Wave RH GBBG'),
      group: ' ',
      paths:[
        SwingRight.changehands(Hands.GRIPRIGHT).scale(0.5,0.5) +
            HingeLeft.scale(1.0,0.5) +
            SwingLeft +

            CounterRotateRight_0_m2.changehands(Hands.RIGHT).skew(-1.0,0.0) +
            CounterRotateRight_0_m2.changehands(Hands.RIGHT).skew(0.0,-1.0) +
            CounterRotateRight_1_m5.changeBeats(9),

        SwingRight.changehands(Hands.GRIPRIGHT).scale(0.5,0.5) +
            LeadRight.changeBeats(4.5).scale(3.0,1.5) +
            CounterRotateRight_2_0.changehands(Hands.RIGHT).skew(1.0,0.0) +
            CounterRotateRight_2_0.changehands(Hands.RIGHT).skew(0.0,1.0) +
            CounterRotateLeft_3_m1.changeBeats(3) +
            CounterRotateLeft_3_m1.changeBeats(3) +
            CounterRotateLeft_3_m1.changeBeats(3),

        SwingRight.changehands(Hands.GRIPRIGHT).scale(0.5,0.5) +
            LeadRight.changeBeats(4.5).scale(3.0,1.5) +
            CounterRotateRight_0_m2.changehands(Hands.RIGHT).skew(-1.0,0.0) +
            CounterRotateRight_0_m2.changehands(Hands.RIGHT).skew(0.0,-1.0) +
            CounterRotateLeft_m1_3.changeBeats(3) +
            CounterRotateLeft_m1_3.changeBeats(3) +
            CounterRotateLeft_m1_3.changeBeats(3),

        SwingRight.changehands(Hands.GRIPRIGHT).scale(0.5,0.5) +
            HingeLeft.scale(1.0,0.5) +
            SwingLeft +
            CounterRotateRight_2_0.changehands(Hands.RIGHT).skew(1.0,0.0) +
            CounterRotateRight_2_0.changehands(Hands.RIGHT).skew(0.0,1.0) +
            CounterRotateRight_5_m1.changeBeats(9),

]),

  AnimatedCall('Reverse Echo Split Circulate',
      formation: Formation('Ocean Waves LH BGGB'),
      group: ' ',
      paths: [
        RunLeft.scale(2, 3).changeBeats(4) +
            Forward_4.changeBeats(3),
        Forward_4 +
            RunLeft,
        RunRight.changeBeats(4) +
            Forward_4.changeBeats(3),
        Forward_4 +
            RunLeft

      ])


  ];