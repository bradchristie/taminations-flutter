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

  final List<AnimatedCall> LockEmUp = [

    AnimatedCall('Lock \'Em Up',
      formation:Formation('Tidal Wave RH BGGB'),
      from:'Tidal Wave',fractions:'2;2;5',
      paths:[
          LeadRight.changeBeats(2).scale(3.0,1.5) +
          HingeRight.changeBeats(2) +
          HingeLeft.changeBeats(5) +
          HingeRight.changeBeats(3),

          HingeLeft.changeBeats(2).scale(1.0,0.5) +
          HingeRight.changeBeats(2) +
          HingeLeft.changeBeats(5) +
          LeadLeft.changeBeats(3).scale(3.0,3.0),

          HingeLeft.changeBeats(2).scale(1.0,0.5) +
          HingeRight.changeBeats(2) +
          LeadRight.changeBeats(2).scale(2.0,2.0) +
          Forward_2.changeBeats(3) +
          QuarterRight.changeBeats(3).skew(0.0,-1.0),

          LeadRight.changeBeats(2).scale(3.0,1.5) +
          HingeRight.changeBeats(2) +
          Forward_4.changeBeats(3) +
          LeadRight.changeBeats(2).scale(2.0,2.0) +
          QuarterRight.changeBeats(3).skew(0.0,-1.0)
      ]),

    AnimatedCall('Lock \'Em Up',
      formation:Formation('Two-Faced Lines LH'),
      from:'Two-Faced Lines',fractions:'3;1.5;4',
      paths:[
          LeadLeft.changeBeats(3).changehands(Hands.LEFT).scale(1.5,3.0) +
          QuarterLeft.changeBeats(1.5).skew(-1.0,0.5) +
          CounterRotateRight_4_2.changeBeats(4).changehands(Hands.RIGHT).skew(0.0,1.0) +
          QuarterRight.changeBeats(2).skew(-0.2,0.0),

          LeadLeft.changeBeats(3).changehands(Hands.BOTH).scale(0.5,1.0) +
          LeadRight.changeBeats(1.5).scale(1.0,0.5) +
          CounterRotateRight_m2_m4.changeBeats(4).changehands(Hands.RIGHT).skew(0.0,-1.0) +
          QuarterRight.changeBeats(2).skew(0.2,0.0),

          LeadLeft.changeBeats(3).changehands(Hands.BOTH).scale(0.5,1.0) +
          LeadRight.changeBeats(1.5).scale(1.0,0.5) +
          HingeRight.changeBeats(4).scale(0.5,1.0).skew(-0.25,0.0) +
          HingeLeft.changeBeats(2).scale(0.75,0.75),

          LeadLeft.changeBeats(3).changehands(Hands.LEFT).scale(1.5,3.0) +
          QuarterLeft.changeBeats(1.5).skew(-1.0,0.5) +
          HingeRight.changeBeats(4).scale(0.5,1.0).skew(0.75,0.0) +
          LeadRight.changeBeats(2).scale(2.25,2.25)
      ]),
  ];

